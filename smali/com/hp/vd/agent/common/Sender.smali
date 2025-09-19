.class public Lcom/hp/vd/agent/common/Sender;
.super Ljava/lang/Object;
.source "Sender.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected data:Lcom/hp/vd/data/DataAbstract;

.field protected identifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/hp/vd/data/DataAbstract;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/hp/vd/agent/common/Sender;->identifier:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/hp/vd/agent/common/Sender;->data:Lcom/hp/vd/data/DataAbstract;

    return-void
.end method


# virtual methods
.method protected _run()Z
    .locals 3

    .line 40
    new-instance v0, Lcom/hp/vd/context/Context;

    invoke-direct {v0}, Lcom/hp/vd/context/Context;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/hp/vd/agent/common/Sender;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setName(Ljava/lang/String;)V

    .line 43
    invoke-static {v0}, Lcom/hp/vd/agent/Factory;->createConnectionManager(Lcom/hp/vd/context/Context;)Lcom/hp/vd/connection/IManager;

    move-result-object v0

    const-string v1, "data"

    .line 44
    invoke-interface {v0, v1}, Lcom/hp/vd/connection/IManager;->setRequestType(Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/hp/vd/data/container/EntityContainer;

    invoke-direct {v1}, Lcom/hp/vd/data/container/EntityContainer;-><init>()V

    .line 47
    iget-object v2, p0, Lcom/hp/vd/agent/common/Sender;->data:Lcom/hp/vd/data/DataAbstract;

    invoke-virtual {v1, v2}, Lcom/hp/vd/data/container/EntityContainer;->add(Lcom/hp/vd/data/IData;)V

    .line 49
    invoke-virtual {v1}, Lcom/hp/vd/data/container/EntityContainer;->iterator()Lcom/hp/vd/data/container/iterator/EntityIterator;

    move-result-object v1

    .line 50
    new-instance v2, Lcom/hp/vd/data/reader/InputStreamWithRootElement;

    invoke-direct {v2, v1}, Lcom/hp/vd/data/reader/InputStreamWithRootElement;-><init>(Ljava/util/Iterator;)V

    const-string v1, "data"

    .line 52
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/connection/IManager;->addPart(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 53
    invoke-interface {v0}, Lcom/hp/vd/connection/IManager;->send()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/hp/vd/agent/common/Sender;->_run()Z

    return-void
.end method
