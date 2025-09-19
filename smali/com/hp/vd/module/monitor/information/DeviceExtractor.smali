.class public Lcom/hp/vd/module/monitor/information/DeviceExtractor;
.super Ljava/lang/Object;
.source "DeviceExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "DeviceExtractor"


# instance fields
.field protected context:Landroid/content/Context;

.field protected deviceInformationDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/DeviceInformationData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/content/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/DeviceInformationData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->context:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->deviceInformationDao:Lcom/j256/ormlite/dao/Dao;

    .line 27
    iput-object v0, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 31
    iput-object p1, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 32
    iput-object p2, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->context:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->deviceInformationDao:Lcom/j256/ormlite/dao/Dao;

    .line 34
    iput-object p4, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected extractDeviceInformation()Lcom/hp/vd/data/DeviceInformationData;
    .locals 15

    .line 83
    new-instance v0, Lcom/hp/vd/data/DeviceInformationData;

    invoke-direct {v0}, Lcom/hp/vd/data/DeviceInformationData;-><init>()V

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    .line 90
    iget-object v5, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    .line 91
    iget-object v6, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 92
    iget-object v7, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v7

    .line 93
    iget-object v8, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v8

    .line 95
    iget-object v9, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v9

    .line 96
    iget-object v10, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v10

    .line 97
    iget-object v11, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v11

    .line 98
    iget-object v12, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v12

    .line 100
    iget-object v13, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_0

    .line 103
    iget-object v1, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 105
    iget-object v3, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 106
    iget-object v4, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 109
    :cond_0
    iput-object v6, v0, Lcom/hp/vd/data/DeviceInformationData;->deviceIdentifier:Ljava/lang/String;

    .line 110
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/hp/vd/data/DeviceInformationData;->phoneType:Ljava/lang/Integer;

    .line 111
    iput-object v7, v0, Lcom/hp/vd/data/DeviceInformationData;->softwareVersion:Ljava/lang/String;

    .line 112
    iput-object v8, v0, Lcom/hp/vd/data/DeviceInformationData;->phoneNumber:Ljava/lang/String;

    .line 114
    iput-object v9, v0, Lcom/hp/vd/data/DeviceInformationData;->networkCountry:Ljava/lang/String;

    .line 115
    iput-object v10, v0, Lcom/hp/vd/data/DeviceInformationData;->networkOperatorIdentifier:Ljava/lang/String;

    .line 116
    iput-object v11, v0, Lcom/hp/vd/data/DeviceInformationData;->networkName:Ljava/lang/String;

    .line 117
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/hp/vd/data/DeviceInformationData;->networkType:Ljava/lang/Integer;

    .line 119
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/hp/vd/data/DeviceInformationData;->simState:Ljava/lang/Integer;

    .line 120
    iput-object v1, v0, Lcom/hp/vd/data/DeviceInformationData;->simCountry:Ljava/lang/String;

    .line 121
    iput-object v2, v0, Lcom/hp/vd/data/DeviceInformationData;->simOperatorCode:Ljava/lang/String;

    .line 122
    iput-object v3, v0, Lcom/hp/vd/data/DeviceInformationData;->simOperatorName:Ljava/lang/String;

    .line 123
    iput-object v4, v0, Lcom/hp/vd/data/DeviceInformationData;->simSerialNumber:Ljava/lang/String;

    .line 125
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iput-object v1, v0, Lcom/hp/vd/data/DeviceInformationData;->versionCodename:Ljava/lang/String;

    .line 126
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v1, v0, Lcom/hp/vd/data/DeviceInformationData;->versionIncremental:Ljava/lang/String;

    .line 127
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/hp/vd/data/DeviceInformationData;->versionRelease:Ljava/lang/String;

    .line 128
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v1, v0, Lcom/hp/vd/data/DeviceInformationData;->versionSdk:Ljava/lang/String;

    .line 130
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 131
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v3, v1

    .line 133
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v5, v1

    .line 134
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v1, v1

    .line 136
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->getTotalRam()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/hp/vd/data/DeviceInformationData;->memorySpaceTotal:Ljava/lang/String;

    .line 137
    iget-object v7, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->context:Landroid/content/Context;

    mul-long/2addr v5, v3

    invoke-static {v7, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/hp/vd/data/DeviceInformationData;->storageSpaceTotal:Ljava/lang/String;

    .line 138
    iget-object v5, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->context:Landroid/content/Context;

    mul-long/2addr v1, v3

    invoke-static {v5, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/DeviceInformationData;->storageSpaceFree:Ljava/lang/String;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FINGERPRINT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/DeviceInformationData;->custom:Ljava/lang/String;

    .line 141
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/hp/vd/data/DeviceInformationData;->model:Ljava/lang/String;

    .line 142
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/hp/vd/data/DeviceInformationData;->brand:Ljava/lang/String;

    .line 144
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/hp/vd/data/DeviceInformationData;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method protected getTotalRam()Ljava/lang/String;
    .locals 4

    .line 162
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "/proc/meminfo"

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const-string v0, "Unavailable"

    return-object v0

    :cond_0
    const-string v2, ":"

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 170
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 171
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const-string v0, "Unavailable"

    return-object v0

    :cond_1
    const/4 v2, 0x1

    .line 175
    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "Unavailable"

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->extractDeviceInformation()Lcom/hp/vd/data/DeviceInformationData;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->deviceInformationDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 61
    iget-object v1, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "DeviceExtractor"

    const-string v3, "Exception caught when extracting/saving data."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_1
    move-exception v0

    .line 56
    iget-object v1, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "DeviceExtractor"

    const-string v3, "SecurityException caught when extracting/saving data."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_2
    move-exception v0

    .line 51
    iget-object v1, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "DeviceExtractor"

    const-string v3, "IllegalStateException caught when saving data."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_3
    move-exception v0

    .line 46
    iget-object v1, p0, Lcom/hp/vd/module/monitor/information/DeviceExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "DeviceExtractor"

    const-string v3, "SQLException caught when saving data."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
