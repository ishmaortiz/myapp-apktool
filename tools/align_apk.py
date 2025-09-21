"""Utility to enforce Android R+ resource alignment requirements on APKs.

This script rewrites an APK so that the ``resources.arsc`` entry is stored
uncompressed and aligned on a 4-byte boundary.  Devices running Android 11
(TargetSdkVersion >= 30) refuse to install APKs that do not satisfy this
constraint, which frequently happens when rebuilding packages with apktool.

Usage:
    python align_apk.py input.apk output.apk
"""

from __future__ import annotations

import argparse
import sys
import zipfile
from typing import Iterable

ALIGNMENT = 4
RESOURCE_ENTRY_NAME = "resources.arsc"


def _encoded_name(info: zipfile.ZipInfo) -> bytes:
    """Return the encoded file name as written to the zip entry."""
    encoding = "utf-8" if info.flag_bits & 0x800 else "cp437"
    return info.filename.encode(encoding)


def _copy_zip_entry(
    zin: zipfile.ZipFile, zout: zipfile.ZipFile, entry: zipfile.ZipInfo
) -> None:
    data = zin.read(entry.filename)

    info = zipfile.ZipInfo(entry.filename, date_time=entry.date_time)
    info.comment = entry.comment
    info.create_system = entry.create_system
    info.create_version = entry.create_version
    info.extract_version = entry.extract_version
    info.external_attr = entry.external_attr
    info.flag_bits = entry.flag_bits
    info.internal_attr = entry.internal_attr

    if entry.filename == RESOURCE_ENTRY_NAME:
        # resources.arsc must be stored without compression and aligned.
        info.compress_type = zipfile.ZIP_STORED
        info.extra = b""  # reset so we can inject padding as needed.

        start_offset = zout.fp.tell()
        header_size = 30 + len(_encoded_name(info))
        padding = (ALIGNMENT - (start_offset + header_size) % ALIGNMENT) % ALIGNMENT
        if padding:
            info.extra = b"\x00" * padding
    else:
        info.compress_type = entry.compress_type
        info.extra = entry.extra

    zout.writestr(info, data)


def align_apk(source: str, destination: str) -> None:
    with zipfile.ZipFile(source, "r") as zin:
        with zipfile.ZipFile(destination, "w") as zout:
            for entry in zin.infolist():
                _copy_zip_entry(zin, zout, entry)


def main(argv: Iterable[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("input", help="Path to the APK produced by apktool")
    parser.add_argument("output", help="Where to write the aligned APK")

    args = parser.parse_args(argv)

    align_apk(args.input, args.output)
    return 0


if __name__ == "__main__":
    sys.exit(main())
