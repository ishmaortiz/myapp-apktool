.class public Lcom/hp/vd/data/FacebookMessageLiteData;
.super Lcom/hp/vd/data/DataAbstract;
.source "FacebookMessageLiteData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "module_facebook_message_lite"
.end annotation


# instance fields
.field public body:Ljava/lang/String;
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

.field public recipient:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public sender:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public threadKey:Ljava/lang/String;
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

    .line 42
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/FacebookMessageLiteData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "thread_key"

    iget-object v3, p0, Lcom/hp/vd/data/FacebookMessageLiteData;->threadKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 46
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "sender"

    iget-object v3, p0, Lcom/hp/vd/data/FacebookMessageLiteData;->sender:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 47
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "recipient"

    iget-object v3, p0, Lcom/hp/vd/data/FacebookMessageLiteData;->recipient:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 48
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "body"

    iget-object v3, p0, Lcom/hp/vd/data/FacebookMessageLiteData;->body:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 50
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "created_at"

    iget-object v3, p0, Lcom/hp/vd/data/FacebookMessageLiteData;->createdAt:Ljava/util/Date;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/FacebookMessageLiteData;->dateToUtc(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "facebook_message_lite"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method
