# myapp-apktool

This repository contains the decompiled resources for the `myapp` package.
When rebuilding the APK with apktool for Android 11 (API level 30) and above,
the package installer requires the `resources.arsc` table to be stored
uncompressed and aligned on a 4-byte boundary.  apktool 2.12.1 does not
perform this alignment automatically, which causes installation failures like:

```
Failure [-124: Failed parse during installPackageLI: Targeting R+ (version 30 and above) requires the resources.arsc of installed APKs to be stored uncompressed and aligned on a 4-byte boundary]
```

## Rebuilding the APK

1. Rebuild the project with apktool:
   ```bash
   apktool b -o dist/myapp-unaligned.apk
   ```
2. Align the rebuilt APK using the helper script in this repository:
   ```bash
   python tools/align_apk.py dist/myapp-unaligned.apk dist/myapp-aligned.apk
   ```
3. Sign the aligned APK (using your preferred signing workflow) and install it:
   ```bash
   apksigner sign --ks my-release-key.jks dist/myapp-aligned.apk
   adb install -r dist/myapp-aligned.apk
   ```

After running the alignment step, the resulting APK satisfies the Android R+
installation requirements and can be deployed normally.
