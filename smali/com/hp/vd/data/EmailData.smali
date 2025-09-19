.class public Lcom/hp/vd/data/EmailData;
.super Lcom/hp/vd/data/DataAbstract;
.source "EmailData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "module_email"
.end annotation


# instance fields
.field public account:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public bcc:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public body:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public bodyCompressed:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public cc:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public conversation:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public from:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public id:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public internalId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public receivedAt:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public sentAt:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public subject:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public tag:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public to:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public type:Ljava/lang/Integer;
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

    .line 66
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/EmailData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "internal_id"

    iget-object v3, p0, Lcom/hp/vd/data/EmailData;->internalId:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 70
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "conversation"

    iget-object v3, p0, Lcom/hp/vd/data/EmailData;->conversation:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 72
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "account"

    iget-object v3, p0, Lcom/hp/vd/data/EmailData;->account:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 74
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "type"

    iget-object v3, p0, Lcom/hp/vd/data/EmailData;->type:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 75
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "tag"

    iget-object v3, p0, Lcom/hp/vd/data/EmailData;->tag:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 77
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "from"

    iget-object v3, p0, Lcom/hp/vd/data/EmailData;->from:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 78
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "to"

    iget-object v3, p0, Lcom/hp/vd/data/EmailData;->to:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 79
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "cc"

    iget-object v3, p0, Lcom/hp/vd/data/EmailData;->cc:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 80
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "bcc"

    iget-object v3, p0, Lcom/hp/vd/data/EmailData;->bcc:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 82
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "subject"

    iget-object v3, p0, Lcom/hp/vd/data/EmailData;->subject:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 83
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "body"

    iget-object v3, p0, Lcom/hp/vd/data/EmailData;->body:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 84
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "body_compressed"

    iget-object v3, p0, Lcom/hp/vd/data/EmailData;->bodyCompressed:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 86
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "sent_at"

    iget-object v3, p0, Lcom/hp/vd/data/EmailData;->sentAt:Ljava/util/Date;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/EmailData;->dateToUtc(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 87
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "received_at"

    iget-object v3, p0, Lcom/hp/vd/data/EmailData;->receivedAt:Ljava/util/Date;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/EmailData;->dateToUtc(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "email"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method
