.class public abstract Lcom/hp/vd/connection/ManagerAbstract;
.super Ljava/lang/Object;
.source "ManagerAbstract.java"

# interfaces
.implements Lcom/hp/vd/connection/IManager;


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected formatter:Lcom/hp/vd/connection/formatter/IFormatter;

.field protected requestType:Ljava/lang/String;

.field protected transport:Lcom/hp/vd/connection/transport/ITransport;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/hp/vd/connection/ManagerAbstract;->transport:Lcom/hp/vd/connection/transport/ITransport;

    invoke-interface {v0, p1, p2}, Lcom/hp/vd/connection/transport/ITransport;->addEntity(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/hp/vd/connection/ManagerAbstract;->transport:Lcom/hp/vd/connection/transport/ITransport;

    invoke-interface {v0}, Lcom/hp/vd/connection/transport/ITransport;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransport()Lcom/hp/vd/connection/transport/ITransport;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/hp/vd/connection/ManagerAbstract;->transport:Lcom/hp/vd/connection/transport/ITransport;

    return-object v0
.end method

.method public setContext(Lcom/hp/vd/context/Context;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/hp/vd/connection/ManagerAbstract;->context:Lcom/hp/vd/context/Context;

    return-void
.end method

.method public setFormatter(Lcom/hp/vd/connection/formatter/IFormatter;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/hp/vd/connection/ManagerAbstract;->formatter:Lcom/hp/vd/connection/formatter/IFormatter;

    return-void
.end method

.method public setRequestType(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/hp/vd/connection/ManagerAbstract;->requestType:Ljava/lang/String;

    return-void
.end method

.method public setTransport(Lcom/hp/vd/connection/transport/ITransport;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/hp/vd/connection/ManagerAbstract;->transport:Lcom/hp/vd/connection/transport/ITransport;

    return-void
.end method
