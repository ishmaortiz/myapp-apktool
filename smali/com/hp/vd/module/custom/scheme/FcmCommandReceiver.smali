.class public Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FcmCommandReceiver.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field protected instance:Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "MonoSchemeUpdateCmdRecv"

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->instance:Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 27
    iput-object p1, p0, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->instance:Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;

    .line 28
    iput-object p2, p0, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 29
    iput-object p3, p0, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected enforceUpdate(Landroid/content/Context;Ljava/util/HashMap;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "MonoSchemeUpdateCmdRecv"

    const-string v2, "dispatch(): dispatching enforce_update"

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "_command_id"

    .line 74
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "_command_token"

    .line 75
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    .line 77
    iget-object p2, p0, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->instance:Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;

    invoke-virtual {p2}, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->resetLastUpdate()V

    .line 78
    iget-object p2, p0, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->instance:Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;

    invoke-virtual {p2}, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;->start()Z

    const-string v5, "1"

    const-string v6, "success"

    move-object v1, p0

    move-object v2, p1

    .line 80
    invoke-virtual/range {v1 .. v6}, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 36
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->process(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    iget-object p2, p0, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "MonoSchemeUpdateCmdRecv"

    const-string v1, "Exception caught in process()"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method protected process(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "com.hp.vb.FCM_COMMAND_RECEIVED"

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object p1, p0, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "MonoSchemeUpdateCmdRecv"

    const-string v0, "fcm: onRecv skipping because what is recv is not a command"

    invoke-interface {p1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "message"

    .line 52
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "enforce_update"

    aput-object v2, v0, v1

    if-eqz p2, :cond_3

    .line 59
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "_command"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "_command"

    .line 65
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "enforce_update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/custom/scheme/FcmCommandReceiver;->enforceUpdate(Landroid/content/Context;Ljava/util/HashMap;)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method protected sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 87
    new-instance v0, Lcom/hp/vd/data/FcmCommandResponse;

    invoke-direct {v0}, Lcom/hp/vd/data/FcmCommandResponse;-><init>()V

    .line 89
    iput-object p2, v0, Lcom/hp/vd/data/FcmCommandResponse;->id:Ljava/lang/String;

    .line 90
    iput-object p3, v0, Lcom/hp/vd/data/FcmCommandResponse;->token:Ljava/lang/String;

    .line 92
    iput-object p4, v0, Lcom/hp/vd/data/FcmCommandResponse;->resultCode:Ljava/lang/String;

    .line 93
    iput-object p5, v0, Lcom/hp/vd/data/FcmCommandResponse;->resultBody:Ljava/lang/String;

    .line 95
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/hp/vd/fcm/Sender;

    invoke-direct {p3, p1, v0}, Lcom/hp/vd/fcm/Sender;-><init>(Landroid/content/Context;Lcom/hp/vd/data/FcmCommandResponse;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
