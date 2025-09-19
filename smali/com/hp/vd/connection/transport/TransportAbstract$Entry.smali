.class Lcom/hp/vd/connection/transport/TransportAbstract$Entry;
.super Ljava/lang/Object;
.source "TransportAbstract.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/vd/connection/transport/TransportAbstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/hp/vd/connection/transport/TransportAbstract;

.field protected value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/hp/vd/connection/transport/TransportAbstract;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/hp/vd/connection/transport/TransportAbstract$Entry;->this$0:Lcom/hp/vd/connection/transport/TransportAbstract;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/hp/vd/connection/transport/TransportAbstract$Entry;->key:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/hp/vd/connection/transport/TransportAbstract$Entry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/hp/vd/connection/transport/TransportAbstract$Entry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/hp/vd/connection/transport/TransportAbstract$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/hp/vd/connection/transport/TransportAbstract$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/hp/vd/connection/transport/TransportAbstract$Entry;->value:Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Lcom/hp/vd/connection/transport/TransportAbstract$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
