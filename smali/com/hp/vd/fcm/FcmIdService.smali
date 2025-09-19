.class public Lcom/hp/vd/fcm/FcmIdService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "FcmIdService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FcmIdService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method


# virtual methods
.method protected isNewToken(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "com.hp.vb.FCM_TOKEN_KEY"

    .line 50
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.hp.vb.FCM_TOKEN_KEY"

    const-string v2, ""

    .line 54
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method public onTokenRefresh()V
    .locals 3

    .line 31
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system"

    const/4 v2, 0x0

    .line 33
    invoke-virtual {p0, v1, v2}, Lcom/hp/vd/fcm/FcmIdService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 38
    invoke-virtual {p0, v1, v0}, Lcom/hp/vd/fcm/FcmIdService;->isNewToken(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/hp/vd/fcm/FcmIdService;->persistToken(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    .line 40
    invoke-virtual {p0, p0}, Lcom/hp/vd/fcm/FcmIdService;->sendBroadcast(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FcmIdService"

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected persistToken(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 1

    .line 63
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "com.hp.vb.FCM_TOKEN_KEY"

    .line 65
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, "com.hp.vb.FCM_TOKEN_SENT_KEY"

    const/4 v0, 0x0

    .line 66
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method protected sendBroadcast(Landroid/content/Context;)V
    .locals 2

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.hp.vb.FCM_TOKEN_REFRESH"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
