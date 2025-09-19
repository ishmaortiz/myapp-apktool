.class public Lcom/hp/vd/module/custom/FcmTokenSynchronizer;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "FcmTokenSynchronizer.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "FcmTokenSynchronizer"


# instance fields
.field protected receiver:Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;

.field protected status:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->status:Z

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->receiver:Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;

    return-void
.end method


# virtual methods
.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 26
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 28
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 29
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v1.0"

    .line 33
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const/16 v1, 0x1c

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 38
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "FcmTokenSynchronizer"

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->status:Z

    return v0
.end method

.method public start()Z
    .locals 6

    .line 52
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "FcmTokenSynchronizer"

    const-string v2, "fcm: start() called."

    .line 53
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    iget-object v1, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->receiver:Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "FcmTokenSynchronizer"

    const-string v3, "fcm: start(): receiver != null. Did you forgot to call stop()?"

    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 66
    :cond_0
    :try_start_0
    new-instance v1, Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;

    invoke-direct {v1, v0}, Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;-><init>(Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->receiver:Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;

    .line 67
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.hp.vb.FCM_TOKEN_REFRESH"

    .line 69
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->receiver:Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 74
    iget-object v3, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v3

    const-string v4, "FcmTokenSynchronizer"

    const-string v5, "fcm: Exception caught while registering receiver"

    invoke-interface {v3, v4, v5, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 82
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "system"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "com.hp.vb.FCM_TOKEN_SENT_KEY"

    .line 88
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v1, "FcmTokenSynchronizer"

    const-string v3, "no token key found at all. quitting..."

    .line 89
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    :cond_1
    const-string v3, "com.hp.vb.FCM_TOKEN_SENT_KEY"

    .line 95
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v2, :cond_2

    const-string v1, "FcmTokenSynchronizer"

    const-string v3, "token already synced. quitting..."

    .line 96
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 105
    :cond_2
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;

    .line 106
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0, v1}, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;-><init>(Landroid/content/Context;Lcom/hp/vd/agent/log/IWriter;Landroid/content/SharedPreferences;)V

    const-string v0, "FcmTokenSyncThread"

    invoke-direct {v3, v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "###"

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v2
.end method

.method public startOnHeartbeat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 5

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->status:Z

    .line 123
    iget-object v0, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->receiver:Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v2, "FcmTokenSynchronizer"

    const-string v3, "fcm: stop(): receiver == null. Did you forgot to call start()?"

    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v1

    .line 130
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->receiver:Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->receiver:Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    iget-object v2, p0, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "FcmTokenSynchronizer"

    const-string v4, "fcm: Exception caught in stop()"

    invoke-interface {v2, v3, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return v1
.end method
