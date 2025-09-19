.class public Lcom/hp/vd/data/Command;
.super Lcom/hp/vd/data/DataAbstract;
.source "Command.java"


# instance fields
.field public executedAt:Ljava/util/Date;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/hp/vd/data/DataAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public dump()Lcom/hp/vd/data/presentation/NodeAbstract;
    .locals 4

    .line 30
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/Command;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "id"

    iget-object v3, p0, Lcom/hp/vd/data/Command;->id:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 34
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "package"

    iget-object v3, p0, Lcom/hp/vd/data/Command;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 35
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "name"

    iget-object v3, p0, Lcom/hp/vd/data/Command;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 37
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "executed_at"

    iget-object v3, p0, Lcom/hp/vd/data/Command;->executedAt:Ljava/util/Date;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/Command;->dateToUtc(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 38
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "result"

    iget-object v3, p0, Lcom/hp/vd/data/Command;->result:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "command"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method
