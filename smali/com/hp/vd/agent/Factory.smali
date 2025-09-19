.class public Lcom/hp/vd/agent/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createConnectionManager(Lcom/hp/vd/context/Context;)Lcom/hp/vd/connection/IManager;
    .locals 3

    .line 15
    new-instance v0, Lcom/hp/vd/connection/Basic;

    invoke-direct {v0}, Lcom/hp/vd/connection/Basic;-><init>()V

    .line 16
    invoke-interface {v0, p0}, Lcom/hp/vd/connection/IManager;->setContext(Lcom/hp/vd/context/Context;)V

    .line 18
    new-instance v1, Lcom/hp/vd/connection/transport/Http;

    invoke-direct {v1}, Lcom/hp/vd/connection/transport/Http;-><init>()V

    .line 19
    new-instance v2, Lcom/hp/vd/connection/formatter/Xml;

    invoke-direct {v2}, Lcom/hp/vd/connection/formatter/Xml;-><init>()V

    .line 21
    invoke-interface {v1, p0}, Lcom/hp/vd/connection/transport/ITransport;->setContext(Lcom/hp/vd/context/Context;)V

    .line 23
    invoke-interface {v0, v1}, Lcom/hp/vd/connection/IManager;->setTransport(Lcom/hp/vd/connection/transport/ITransport;)V

    .line 24
    invoke-interface {v0, v2}, Lcom/hp/vd/connection/IManager;->setFormatter(Lcom/hp/vd/connection/formatter/IFormatter;)V

    return-object v0
.end method
