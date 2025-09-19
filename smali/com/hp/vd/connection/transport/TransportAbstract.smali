.class public abstract Lcom/hp/vd/connection/transport/TransportAbstract;
.super Ljava/lang/Object;
.source "TransportAbstract.java"

# interfaces
.implements Lcom/hp/vd/connection/transport/ITransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/vd/connection/transport/TransportAbstract$Entry;
    }
.end annotation


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected deviceIdentifier:Ljava/lang/String;

.field protected endpoint:Ljava/net/URI;

.field protected entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hp/vd/connection/transport/TransportAbstract$Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected formatter:Lcom/hp/vd/connection/formatter/IFormatter;

.field protected inputStream:Lcom/hp/vd/data/reader/InputStreamReaderAbstract;

.field protected requestType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/hp/vd/connection/transport/TransportAbstract;->endpoint:Ljava/net/URI;

    .line 18
    iput-object v0, p0, Lcom/hp/vd/connection/transport/TransportAbstract;->deviceIdentifier:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/hp/vd/connection/transport/TransportAbstract;->requestType:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hp/vd/connection/transport/TransportAbstract;->entities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEntity(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .line 53
    new-instance v0, Lcom/hp/vd/connection/transport/TransportAbstract$Entry;

    invoke-direct {v0, p0, p1, p2}, Lcom/hp/vd/connection/transport/TransportAbstract$Entry;-><init>(Lcom/hp/vd/connection/transport/TransportAbstract;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lcom/hp/vd/connection/transport/TransportAbstract;->entities:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setContext(Lcom/hp/vd/context/Context;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/hp/vd/connection/transport/TransportAbstract;->context:Lcom/hp/vd/context/Context;

    return-void
.end method

.method public setDeviceIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/hp/vd/connection/transport/TransportAbstract;->deviceIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setEndpoint(Ljava/net/URI;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/hp/vd/connection/transport/TransportAbstract;->endpoint:Ljava/net/URI;

    return-void
.end method

.method public setFormatter(Lcom/hp/vd/connection/formatter/IFormatter;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/hp/vd/connection/transport/TransportAbstract;->formatter:Lcom/hp/vd/connection/formatter/IFormatter;

    return-void
.end method

.method public setRequestType(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/hp/vd/connection/transport/TransportAbstract;->requestType:Ljava/lang/String;

    return-void
.end method
