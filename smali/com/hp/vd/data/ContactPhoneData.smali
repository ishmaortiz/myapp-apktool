.class public Lcom/hp/vd/data/ContactPhoneData;
.super Lcom/hp/vd/data/DataAbstract;
.source "ContactPhoneData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "module_contact_phone"
.end annotation


# instance fields
.field public contactId:Ljava/lang/Integer;
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

.field public number:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public numberNormalized:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public timesContacted:Ljava/lang/Integer;
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

    .line 9
    invoke-direct {p0}, Lcom/hp/vd/data/DataAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public dump()Lcom/hp/vd/data/presentation/NodeAbstract;
    .locals 4

    .line 36
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/ContactPhoneData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "internal_id"

    iget-object v3, p0, Lcom/hp/vd/data/ContactPhoneData;->internalId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 39
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "type"

    iget-object v3, p0, Lcom/hp/vd/data/ContactPhoneData;->type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 40
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "number"

    iget-object v3, p0, Lcom/hp/vd/data/ContactPhoneData;->number:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 41
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "number_normalized"

    iget-object v3, p0, Lcom/hp/vd/data/ContactPhoneData;->numberNormalized:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    const-string v1, ""

    .line 44
    iget-object v2, p0, Lcom/hp/vd/data/ContactPhoneData;->timesContacted:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 45
    iget-object v1, p0, Lcom/hp/vd/data/ContactPhoneData;->timesContacted:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    :cond_0
    new-instance v2, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v3, "times_contacted"

    invoke-direct {v2, v3, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "contact_phone"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method
