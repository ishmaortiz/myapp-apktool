.class public Lcom/hp/vd/module/custom/HeartbeatDispatcher;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "HeartbeatDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;
    }
.end annotation


# instance fields
.field protected heartbeatBroadcastReceiver:Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;

.field protected status:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->heartbeatBroadcastReceiver:Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->status:Z

    return-void
.end method


# virtual methods
.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 53
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "heartbeat"

    .line 55
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 56
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x2

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v2.0"

    .line 60
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, ""

    .line 61
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 63
    sget-object v1, Lcom/hp/vd/module/Constants;->INTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    const/4 v1, -0x4

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "HeartbeatDispatcher"

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->status:Z

    return v0
.end method

.method public start()Z
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 80
    iget-boolean v1, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->active:Z

    if-nez v1, :cond_0

    const-string v1, "ModuleAbstract"

    const-string v2, "This module is currently DEactivated."

    .line 81
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0

    .line 90
    :cond_0
    new-instance v0, Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;

    iget-object v1, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->context:Lcom/hp/vd/context/Context;

    invoke-direct {v0, p0, v1}, Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;-><init>(Lcom/hp/vd/module/custom/HeartbeatDispatcher;Lcom/hp/vd/context/Context;)V

    iput-object v0, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->heartbeatBroadcastReceiver:Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.hp.vb.intent.heartbeat.beat"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->heartbeatBroadcastReceiver:Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->status:Z

    return v0
.end method

.method public stop()Z
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->heartbeatBroadcastReceiver:Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->heartbeatBroadcastReceiver:Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->heartbeatBroadcastReceiver:Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;

    :cond_0
    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher;->status:Z

    const/4 v0, 0x1

    return v0
.end method
