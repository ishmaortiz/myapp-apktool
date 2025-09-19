.class public Lcom/hp/vd/data/ContactData;
.super Lcom/hp/vd/data/DataAbstract;
.source "ContactData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    daoClass = Lcom/hp/vd/data/persistency/ContactDao;
    tableName = "module_contact"
.end annotation


# instance fields
.field public addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hp/vd/data/ContactAddressData;",
            ">;"
        }
    .end annotation
.end field

.field public custom:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public displayName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public emails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hp/vd/data/ContactEmailData;",
            ">;"
        }
    .end annotation
.end field

.field public firstName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public hasPhoneNumber:Ljava/lang/Boolean;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public id:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public instantMessengers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hp/vd/data/ContactInstantMessengerData;",
            ">;"
        }
    .end annotation
.end field

.field public internalId:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hp/vd/data/ContactNoteData;",
            ">;"
        }
    .end annotation
.end field

.field public organizations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hp/vd/data/ContactOrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field public phones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hp/vd/data/ContactPhoneData;",
            ">;"
        }
    .end annotation
.end field

.field public secondName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public statusTimestamp:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public thirdName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public timesContacted:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/hp/vd/data/DataAbstract;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/hp/vd/data/ContactData;->phones:Ljava/util/List;

    .line 36
    iput-object v0, p0, Lcom/hp/vd/data/ContactData;->emails:Ljava/util/List;

    .line 37
    iput-object v0, p0, Lcom/hp/vd/data/ContactData;->notes:Ljava/util/List;

    .line 38
    iput-object v0, p0, Lcom/hp/vd/data/ContactData;->instantMessengers:Ljava/util/List;

    .line 39
    iput-object v0, p0, Lcom/hp/vd/data/ContactData;->addresses:Ljava/util/List;

    .line 40
    iput-object v0, p0, Lcom/hp/vd/data/ContactData;->organizations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dump()Lcom/hp/vd/data/presentation/NodeAbstract;
    .locals 4

    .line 57
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/ContactData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "internal_id"

    iget-object v3, p0, Lcom/hp/vd/data/ContactData;->internalId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 60
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "display_name"

    iget-object v3, p0, Lcom/hp/vd/data/ContactData;->displayName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 61
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "first_name"

    iget-object v3, p0, Lcom/hp/vd/data/ContactData;->firstName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 62
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "second_name"

    iget-object v3, p0, Lcom/hp/vd/data/ContactData;->secondName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 63
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "third_name"

    iget-object v3, p0, Lcom/hp/vd/data/ContactData;->thirdName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 64
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "has_phone_number"

    iget-object v3, p0, Lcom/hp/vd/data/ContactData;->hasPhoneNumber:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 65
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "custom"

    iget-object v3, p0, Lcom/hp/vd/data/ContactData;->custom:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    const-string v1, ""

    .line 68
    iget-object v2, p0, Lcom/hp/vd/data/ContactData;->timesContacted:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 69
    iget-object v1, p0, Lcom/hp/vd/data/ContactData;->timesContacted:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_0
    new-instance v2, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v3, "times_contacted"

    invoke-direct {v2, v3, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 73
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "status_timestamp"

    iget-object v3, p0, Lcom/hp/vd/data/ContactData;->statusTimestamp:Ljava/util/Date;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/ContactData;->dateToUtc(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 81
    iget-object v1, p0, Lcom/hp/vd/data/ContactData;->phones:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hp/vd/data/ContactData;->phones:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 82
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "phone"

    invoke-direct {v1, v2}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/hp/vd/data/ContactData;->phones:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hp/vd/data/ContactPhoneData;

    .line 85
    invoke-virtual {v3}, Lcom/hp/vd/data/ContactPhoneData;->dump()Lcom/hp/vd/data/presentation/NodeAbstract;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/hp/vd/data/ContactData;->notes:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hp/vd/data/ContactData;->notes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 98
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "note"

    invoke-direct {v1, v2}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/hp/vd/data/ContactData;->notes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hp/vd/data/ContactNoteData;

    .line 101
    invoke-virtual {v3}, Lcom/hp/vd/data/ContactNoteData;->dump()Lcom/hp/vd/data/presentation/NodeAbstract;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 113
    :cond_4
    iget-object v1, p0, Lcom/hp/vd/data/ContactData;->emails:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/hp/vd/data/ContactData;->emails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 114
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "email"

    invoke-direct {v1, v2}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/hp/vd/data/ContactData;->emails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hp/vd/data/ContactEmailData;

    .line 117
    invoke-virtual {v3}, Lcom/hp/vd/data/ContactEmailData;->dump()Lcom/hp/vd/data/presentation/NodeAbstract;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    goto :goto_2

    .line 122
    :cond_5
    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 129
    :cond_6
    iget-object v1, p0, Lcom/hp/vd/data/ContactData;->instantMessengers:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/hp/vd/data/ContactData;->instantMessengers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 130
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "instant_messenger"

    invoke-direct {v1, v2}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/hp/vd/data/ContactData;->instantMessengers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hp/vd/data/ContactInstantMessengerData;

    .line 133
    invoke-virtual {v3}, Lcom/hp/vd/data/ContactInstantMessengerData;->dump()Lcom/hp/vd/data/presentation/NodeAbstract;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    goto :goto_3

    .line 138
    :cond_7
    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 145
    :cond_8
    iget-object v1, p0, Lcom/hp/vd/data/ContactData;->addresses:Ljava/util/List;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/hp/vd/data/ContactData;->addresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 146
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "address"

    invoke-direct {v1, v2}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/hp/vd/data/ContactData;->addresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hp/vd/data/ContactAddressData;

    .line 149
    invoke-virtual {v3}, Lcom/hp/vd/data/ContactAddressData;->dump()Lcom/hp/vd/data/presentation/NodeAbstract;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    goto :goto_4

    .line 154
    :cond_9
    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 161
    :cond_a
    iget-object v1, p0, Lcom/hp/vd/data/ContactData;->organizations:Ljava/util/List;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/hp/vd/data/ContactData;->organizations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 162
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "organization"

    invoke-direct {v1, v2}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/hp/vd/data/ContactData;->organizations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hp/vd/data/ContactOrganizationData;

    .line 165
    invoke-virtual {v3}, Lcom/hp/vd/data/ContactOrganizationData;->dump()Lcom/hp/vd/data/presentation/NodeAbstract;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    goto :goto_5

    .line 170
    :cond_b
    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    :cond_c
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "contact"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method
