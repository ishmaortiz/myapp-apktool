.class public Lcom/hp/vd/module/custom/Ping;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "Ping.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "FcmPing"


# instance fields
.field protected receiver:Lcom/hp/vd/module/custom/ping/FcmPingReceiver;

.field protected status:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/hp/vd/module/custom/Ping;->status:Z

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/hp/vd/module/custom/Ping;->receiver:Lcom/hp/vd/module/custom/ping/FcmPingReceiver;

    return-void
.end method


# virtual methods
.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 22
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "custom"

    .line 24
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 25
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/Ping;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v1.0"

    .line 29
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const/16 v1, 0x1d

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 34
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "Ping"

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/hp/vd/module/custom/Ping;->status:Z

    return v0
.end method

.method public start()Z
    .locals 5

    .line 48
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/Ping;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "FcmPing"

    const-string v2, "start() called."

    .line 49
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    iget-object v1, p0, Lcom/hp/vd/module/custom/Ping;->receiver:Lcom/hp/vd/module/custom/ping/FcmPingReceiver;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/hp/vd/module/custom/Ping;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "FcmPing"

    const-string v3, "fcm: start(): receiver != null. Did you forgot to call stop()?"

    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 62
    :cond_0
    :try_start_0
    new-instance v1, Lcom/hp/vd/module/custom/ping/FcmPingReceiver;

    invoke-direct {v1, v0}, Lcom/hp/vd/module/custom/ping/FcmPingReceiver;-><init>(Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/custom/Ping;->receiver:Lcom/hp/vd/module/custom/ping/FcmPingReceiver;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.hp.vb.FCM_COMMAND_RECEIVED"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/hp/vd/module/custom/Ping;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/hp/vd/module/custom/Ping;->receiver:Lcom/hp/vd/module/custom/ping/FcmPingReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    iput-boolean v2, p0, Lcom/hp/vd/module/custom/Ping;->status:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    iget-object v1, p0, Lcom/hp/vd/module/custom/Ping;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v3, "FcmPing"

    const-string v4, "fcm: Exception caught while registering receiver"

    invoke-interface {v1, v3, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return v2
.end method

.method public startOnHeartbeat()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public stop()Z
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/hp/vd/module/custom/Ping;->receiver:Lcom/hp/vd/module/custom/ping/FcmPingReceiver;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/hp/vd/module/custom/Ping;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v2, "FcmPing"

    const-string v3, "fcm: stop(): receiver == null. Did you forgot to call start()?"

    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v1

    .line 87
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/custom/Ping;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/hp/vd/module/custom/Ping;->receiver:Lcom/hp/vd/module/custom/ping/FcmPingReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/hp/vd/module/custom/Ping;->receiver:Lcom/hp/vd/module/custom/ping/FcmPingReceiver;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/hp/vd/module/custom/Ping;->status:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    iget-object v2, p0, Lcom/hp/vd/module/custom/Ping;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "FcmPing"

    const-string v4, "fcm: Exception caught in stop()"

    invoke-interface {v2, v3, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return v1
.end method
