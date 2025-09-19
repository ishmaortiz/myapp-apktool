.class public Lcom/hp/vd/module/monitor/DeviceInformationMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "DeviceInformationMonitor.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "DeviceInformationMonitor"


# instance fields
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

.field protected extractorThread:Ljava/lang/Thread;

.field protected telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->deviceInformationDao:Lcom/j256/ormlite/dao/Dao;

    .line 29
    iput-object v0, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 30
    iput-object v0, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->extractorThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->deviceInformationDao:Lcom/j256/ormlite/dao/Dao;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    iput-object v1, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->deviceInformationDao:Lcom/j256/ormlite/dao/Dao;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 104
    iput-object v1, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 35
    const-class v0, Lcom/hp/vd/data/DeviceInformationData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 52
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 54
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 55
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x2

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v2.0"

    .line 59
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data=text;"

    .line 60
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    const/4 v1, 0x1

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 65
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "DeviceInformationMonitor"

    return-object v0
.end method

.method public initialize()Z
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->deviceInformationDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "phone"

    .line 85
    iget-object v3, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 87
    iget-object v2, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    const-string v2, "DeviceInformationMonitor"

    const-string v3, "Could not create TelephonyManager."

    const/4 v4, 0x3

    .line 88
    invoke-interface {v0, v2, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    const-string v3, "DeviceInformationMonitor"

    const-string v4, "Could not create Dao."

    .line 79
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public install(Ljava/lang/String;)Z
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x19

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->extractorThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 6

    .line 113
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "DeviceInformationMonitor"

    const-string v2, "start() called."

    .line 114
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "DeviceInformationMonitor"

    const-string v3, "start(): This module is currently DEactivated."

    .line 117
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->extractorThread:Ljava/lang/Thread;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DeviceInformationMonitor"

    const-string v4, "start(): Extractor thread is currently running. Exiting..."

    .line 123
    invoke-interface {v0, v1, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 128
    :cond_1
    new-instance v1, Lcom/hp/vd/module/monitor/information/DeviceExtractor;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 130
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->deviceInformationDao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/hp/vd/module/monitor/information/DeviceExtractor;-><init>(Landroid/telephony/TelephonyManager;Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    .line 135
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "Extractor-Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->extractorThread:Ljava/lang/Thread;

    .line 136
    iget-object v0, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v3
.end method

.method public stop()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->extractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
