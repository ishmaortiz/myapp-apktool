.class public Lcom/hp/vd/data/DeviceAdminChangeData;
.super Lcom/hp/vd/data/DataAbstract;
.source "DeviceAdminChangeData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "module_device_admin_change"
.end annotation


# instance fields
.field public createdAt:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public id:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public note:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public status:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/hp/vd/data/DataAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public dump()Lcom/hp/vd/data/presentation/NodeAbstract;
    .locals 4

    .line 69
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/DeviceAdminChangeData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "status"

    iget-object v3, p0, Lcom/hp/vd/data/DeviceAdminChangeData;->status:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 72
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "note"

    iget-object v3, p0, Lcom/hp/vd/data/DeviceAdminChangeData;->note:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 73
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "created_at"

    iget-object v3, p0, Lcom/hp/vd/data/DeviceAdminChangeData;->createdAt:Ljava/util/Date;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/DeviceAdminChangeData;->dateToUtc(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "device_admin_change"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method
