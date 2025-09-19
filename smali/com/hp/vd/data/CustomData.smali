.class public Lcom/hp/vd/data/CustomData;
.super Lcom/hp/vd/data/DataAbstract;
.source "CustomData.java"


# instance fields
.field protected name:Ljava/lang/String;

.field protected node:Lcom/hp/vd/data/presentation/NodeAbstract;

.field protected version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/hp/vd/data/presentation/NodeAbstract;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/hp/vd/data/DataAbstract;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/hp/vd/data/CustomData;->name:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/hp/vd/data/CustomData;->version:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/hp/vd/data/CustomData;->node:Lcom/hp/vd/data/presentation/NodeAbstract;

    return-void
.end method


# virtual methods
.method public dump()Lcom/hp/vd/data/presentation/NodeAbstract;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/hp/vd/data/CustomData;->node:Lcom/hp/vd/data/presentation/NodeAbstract;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/hp/vd/data/CustomData;->node:Lcom/hp/vd/data/presentation/NodeAbstract;

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/CustomData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/hp/vd/data/CustomData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/hp/vd/data/CustomData;->version:Ljava/lang/String;

    return-object v0
.end method
