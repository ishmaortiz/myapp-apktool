.class public Lcom/hp/vd/fcm/Sender;
.super Ljava/lang/Object;
.source "Sender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected context:Landroid/content/Context;

.field protected response:Lcom/hp/vd/data/FcmCommandResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hp/vd/data/FcmCommandResponse;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/hp/vd/fcm/Sender;->context:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/hp/vd/fcm/Sender;->response:Lcom/hp/vd/data/FcmCommandResponse;

    .line 25
    iput-object p1, p0, Lcom/hp/vd/fcm/Sender;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/hp/vd/fcm/Sender;->response:Lcom/hp/vd/data/FcmCommandResponse;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/fcm/Sender;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/hp/vd/fcm/Sender;->response:Lcom/hp/vd/data/FcmCommandResponse;

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/fcm/Sender;->send(Landroid/content/Context;Lcom/hp/vd/data/FcmCommandResponse;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected send(Landroid/content/Context;Lcom/hp/vd/data/FcmCommandResponse;)Z
    .locals 3

    .line 47
    new-instance v0, Lcom/hp/vd/context/Context;

    invoke-direct {v0}, Lcom/hp/vd/context/Context;-><init>()V

    .line 48
    invoke-virtual {v0, p1}, Lcom/hp/vd/context/Context;->setApplicationContext(Landroid/content/Context;)V

    const-string v1, "system"

    const/4 v2, 0x0

    .line 50
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "email"

    const/4 v2, 0x0

    .line 55
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    new-instance v1, Lcom/hp/vd/agent/Utility;

    invoke-direct {v1, v0}, Lcom/hp/vd/agent/Utility;-><init>(Lcom/hp/vd/context/Context;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setUtility(Lcom/hp/vd/agent/Utility;)V

    .line 60
    invoke-virtual {v1, p1}, Lcom/hp/vd/agent/Utility;->getUniqueIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hp/vd/context/Context;->setName(Ljava/lang/String;)V

    .line 66
    invoke-static {v0}, Lcom/hp/vd/agent/Factory;->createConnectionManager(Lcom/hp/vd/context/Context;)Lcom/hp/vd/connection/IManager;

    move-result-object p1

    const-string v0, "data"

    .line 67
    invoke-interface {p1, v0}, Lcom/hp/vd/connection/IManager;->setRequestType(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/hp/vd/data/container/EntityContainer;

    invoke-direct {v0}, Lcom/hp/vd/data/container/EntityContainer;-><init>()V

    .line 73
    invoke-virtual {v0, p2}, Lcom/hp/vd/data/container/EntityContainer;->add(Lcom/hp/vd/data/IData;)V

    .line 75
    invoke-virtual {v0}, Lcom/hp/vd/data/container/EntityContainer;->iterator()Lcom/hp/vd/data/container/iterator/EntityIterator;

    move-result-object p2

    .line 76
    new-instance v0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;

    invoke-direct {v0, p2}, Lcom/hp/vd/data/reader/InputStreamWithRootElement;-><init>(Ljava/util/Iterator;)V

    const-string p2, "data"

    .line 82
    invoke-interface {p1, p2, v0}, Lcom/hp/vd/connection/IManager;->addPart(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 83
    invoke-interface {p1}, Lcom/hp/vd/connection/IManager;->send()Z

    move-result p1

    return p1
.end method
