.class public Lcom/hp/vd/module/custom/ping/FcmPingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FcmPingReceiver.java"


# instance fields
.field public final COMMAND_ARGUMENT_RESPOND:Ljava/lang/String;

.field public final COMMAND_PING:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field protected log:Lcom/hp/vd/agent/log/IWriter;


# direct methods
.method public constructor <init>(Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "FcmReceiver"

    .line 16
    iput-object v0, p0, Lcom/hp/vd/module/custom/ping/FcmPingReceiver;->TAG:Ljava/lang/String;

    const-string v0, "ping"

    .line 18
    iput-object v0, p0, Lcom/hp/vd/module/custom/ping/FcmPingReceiver;->COMMAND_PING:Ljava/lang/String;

    const-string v0, "respond"

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/custom/ping/FcmPingReceiver;->COMMAND_ARGUMENT_RESPOND:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/hp/vd/module/custom/ping/FcmPingReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 32
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/custom/ping/FcmPingReceiver;->process(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    iget-object p2, p0, Lcom/hp/vd/module/custom/ping/FcmPingReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "FcmReceiver"

    const-string v1, "Exception caught in process()"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method protected process(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "com.hp.vb.FCM_COMMAND_RECEIVED"

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "message"

    .line 46
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-eqz p2, :cond_4

    const-string v0, "_command"

    .line 49
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "respond"

    .line 56
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "respond"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    .line 61
    new-instance v0, Lcom/hp/vd/data/FcmCommandResponse;

    invoke-direct {v0}, Lcom/hp/vd/data/FcmCommandResponse;-><init>()V

    const-string v1, "_command_id"

    .line 62
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/hp/vd/data/FcmCommandResponse;->id:Ljava/lang/String;

    const-string v1, "_command_token"

    .line 63
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, v0, Lcom/hp/vd/data/FcmCommandResponse;->token:Ljava/lang/String;

    const-string p2, "1"

    .line 65
    iput-object p2, v0, Lcom/hp/vd/data/FcmCommandResponse;->resultCode:Ljava/lang/String;

    const-string p2, "pong"

    .line 66
    iput-object p2, v0, Lcom/hp/vd/data/FcmCommandResponse;->resultBody:Ljava/lang/String;

    .line 68
    new-instance p2, Lcom/hp/vd/fcm/Sender;

    invoke-direct {p2, p1, v0}, Lcom/hp/vd/fcm/Sender;-><init>(Landroid/content/Context;Lcom/hp/vd/data/FcmCommandResponse;)V

    .line 69
    new-instance p1, Ljava/lang/Thread;

    const-string v0, "FcmCommandResponseSender"

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method
