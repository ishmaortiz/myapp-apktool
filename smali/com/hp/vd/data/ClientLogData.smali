.class public Lcom/hp/vd/data/ClientLogData;
.super Lcom/hp/vd/data/DataAbstract;
.source "ClientLogData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "client_log"
.end annotation


# instance fields
.field public code:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public content:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public createdAt:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public id:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public instance:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public session:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public threadId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public threadName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/hp/vd/data/DataAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public dump()Lcom/hp/vd/data/presentation/NodeAbstract;
    .locals 4

    .line 51
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/ClientLogData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "instance"

    iget-object v3, p0, Lcom/hp/vd/data/ClientLogData;->instance:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 54
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "session"

    iget-object v3, p0, Lcom/hp/vd/data/ClientLogData;->session:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 55
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "thread_id"

    iget-object v3, p0, Lcom/hp/vd/data/ClientLogData;->threadId:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 56
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "thread_name"

    iget-object v3, p0, Lcom/hp/vd/data/ClientLogData;->threadName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 58
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "type"

    iget-object v3, p0, Lcom/hp/vd/data/ClientLogData;->type:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 59
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "code"

    iget-object v3, p0, Lcom/hp/vd/data/ClientLogData;->code:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 60
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "content"

    iget-object v3, p0, Lcom/hp/vd/data/ClientLogData;->content:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 62
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "created_at"

    iget-object v3, p0, Lcom/hp/vd/data/ClientLogData;->createdAt:Ljava/util/Date;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/ClientLogData;->dateToUtc(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "client_log"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method
