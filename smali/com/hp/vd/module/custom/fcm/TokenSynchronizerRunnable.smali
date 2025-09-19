.class public Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;
.super Ljava/lang/Object;
.source "TokenSynchronizerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "TokenSynchronizerRunnable"


# instance fields
.field protected context:Landroid/content/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hp/vd/agent/log/IWriter;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;->context:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 27
    iput-object p1, p0, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 29
    iput-object p3, p0, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method protected process()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.hp.vb.FCM_TOKEN_KEY"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TokenSynchronizerRunnable"

    const-string v2, "fcm: token is -1"

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 53
    :cond_0
    new-instance v2, Lcom/hp/vd/data/FcmTokenData;

    invoke-direct {v2}, Lcom/hp/vd/data/FcmTokenData;-><init>()V

    .line 54
    iput-object v1, v2, Lcom/hp/vd/data/FcmTokenData;->token:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, v2}, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;->send(Landroid/content/Context;Lcom/hp/vd/data/FcmTokenData;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.hp.vb.FCM_TOKEN_SENT_KEY"

    const/4 v2, 0x1

    .line 57
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method public run()V
    .locals 4

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;->process()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    iget-object v1, p0, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "TokenSynchronizerRunnable"

    const-string v3, "run()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method protected send(Landroid/content/Context;Lcom/hp/vd/data/FcmTokenData;)Z
    .locals 4

    .line 74
    new-instance v0, Lcom/hp/vd/context/Context;

    invoke-direct {v0}, Lcom/hp/vd/context/Context;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/hp/vd/module/custom/fcm/TokenSynchronizerRunnable;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setApplicationContext(Landroid/content/Context;)V

    .line 77
    new-instance v1, Lcom/hp/vd/agent/Utility;

    invoke-direct {v1, v0}, Lcom/hp/vd/agent/Utility;-><init>(Lcom/hp/vd/context/Context;)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setUtility(Lcom/hp/vd/agent/Utility;)V

    const-string v2, "system"

    const/4 v3, 0x0

    .line 80
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "email"

    const/4 v3, 0x0

    .line 85
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {v1, p1}, Lcom/hp/vd/agent/Utility;->getUniqueIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Lcom/hp/vd/context/Context;->setName(Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Lcom/hp/vd/agent/Factory;->createConnectionManager(Lcom/hp/vd/context/Context;)Lcom/hp/vd/connection/IManager;

    move-result-object p1

    const-string v0, "data"

    .line 95
    invoke-interface {p1, v0}, Lcom/hp/vd/connection/IManager;->setRequestType(Ljava/lang/String;)V

    .line 100
    new-instance v0, Lcom/hp/vd/data/container/EntityContainer;

    invoke-direct {v0}, Lcom/hp/vd/data/container/EntityContainer;-><init>()V

    .line 101
    invoke-virtual {v0, p2}, Lcom/hp/vd/data/container/EntityContainer;->add(Lcom/hp/vd/data/IData;)V

    .line 103
    invoke-virtual {v0}, Lcom/hp/vd/data/container/EntityContainer;->iterator()Lcom/hp/vd/data/container/iterator/EntityIterator;

    move-result-object p2

    .line 104
    new-instance v0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;

    invoke-direct {v0, p2}, Lcom/hp/vd/data/reader/InputStreamWithRootElement;-><init>(Ljava/util/Iterator;)V

    const-string p2, "data"

    .line 110
    invoke-interface {p1, p2, v0}, Lcom/hp/vd/connection/IManager;->addPart(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 111
    invoke-interface {p1}, Lcom/hp/vd/connection/IManager;->send()Z

    move-result p1

    return p1
.end method
