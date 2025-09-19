.class public Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TokenRefreshReceiver.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field protected log:Lcom/hp/vd/agent/log/IWriter;


# direct methods
.method public constructor <init>(Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "TokenRefreshReceiver"

    .line 14
    iput-object v0, p0, Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;->TAG:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "com.hp.vb.FCM_TOKEN_REFRESH"

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 31
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "system"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "com.hp.vb.FCM_TOKEN_SENT_KEY"

    .line 37
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 38
    iget-object p1, p0, Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "TokenRefreshReceiver"

    const-string v0, "No token key found at all. quitting..."

    invoke-interface {p1, p2, v0, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_1
    const-string v0, "com.hp.vb.FCM_TOKEN_SENT_KEY"

    .line 44
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 45
    iget-object p1, p0, Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "TokenRefreshReceiver"

    const-string v0, "Token already synced. quitting..."

    invoke-interface {p1, p2, v0, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 54
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;

    iget-object v2, p0, Lcom/hp/vd/module/custom/fcm/TokenRefreshReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    invoke-direct {v1, p1, v2, p2}, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;-><init>(Landroid/content/Context;Lcom/hp/vd/agent/log/IWriter;Landroid/content/SharedPreferences;)V

    const-string p1, "FcmTokenSyncThread"

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "TokenRefreshReceiver"

    const-string v0, "Exception caught"

    .line 61
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
