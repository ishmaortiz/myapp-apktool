.class public Lcom/hp/vd/module/custom/cleaner/FcmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FcmReceiver.java"


# instance fields
.field public final COMMAND_CLEAN:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field protected context:Lcom/hp/vd/context/Context;


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "FcmReceiver"

    .line 15
    iput-object v0, p0, Lcom/hp/vd/module/custom/cleaner/FcmReceiver;->TAG:Ljava/lang/String;

    const-string v0, "cleaner_clean"

    .line 17
    iput-object v0, p0, Lcom/hp/vd/module/custom/cleaner/FcmReceiver;->COMMAND_CLEAN:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/hp/vd/module/custom/cleaner/FcmReceiver;->context:Lcom/hp/vd/context/Context;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 30
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/custom/cleaner/FcmReceiver;->process(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    iget-object p2, p0, Lcom/hp/vd/module/custom/cleaner/FcmReceiver;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object p2

    const-string v0, "FcmReceiver"

    const-string v1, "Exception caught in process()"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method protected process(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.hp.vb.FCM_COMMAND_RECEIVED"

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "message"

    .line 44
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-eqz p2, :cond_2

    const-string v0, "_command"

    .line 47
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "cleaner_clean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lcom/hp/vd/data/FcmCommandResponse;

    invoke-direct {v0}, Lcom/hp/vd/data/FcmCommandResponse;-><init>()V

    const-string v1, "_command_id"

    .line 60
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/hp/vd/data/FcmCommandResponse;->id:Ljava/lang/String;

    const-string v1, "_command_token"

    .line 61
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, v0, Lcom/hp/vd/data/FcmCommandResponse;->token:Ljava/lang/String;

    const-string p2, "1"

    .line 63
    iput-object p2, v0, Lcom/hp/vd/data/FcmCommandResponse;->resultCode:Ljava/lang/String;

    const-string p2, "cleaning initiated"

    .line 64
    iput-object p2, v0, Lcom/hp/vd/data/FcmCommandResponse;->resultBody:Ljava/lang/String;

    .line 66
    new-instance p2, Lcom/hp/vd/fcm/Sender;

    invoke-direct {p2, p1, v0}, Lcom/hp/vd/fcm/Sender;-><init>(Landroid/content/Context;Lcom/hp/vd/data/FcmCommandResponse;)V

    .line 67
    new-instance p1, Ljava/lang/Thread;

    const-string v0, "FcmCommandResponseSender"

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 73
    new-instance p1, Lcom/hp/vd/module/custom/cleaner/CleanerRunnable;

    iget-object p2, p0, Lcom/hp/vd/module/custom/cleaner/FcmReceiver;->context:Lcom/hp/vd/context/Context;

    invoke-direct {p1, p2}, Lcom/hp/vd/module/custom/cleaner/CleanerRunnable;-><init>(Lcom/hp/vd/context/Context;)V

    .line 74
    new-instance p2, Ljava/lang/Thread;

    const-string v0, "CleanerThreadHope"

    invoke-direct {p2, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
