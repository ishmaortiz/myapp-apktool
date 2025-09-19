.class public Lcom/hp/vd/data/BootData;
.super Lcom/hp/vd/data/DataAbstract;
.source "BootData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "module_boot"
.end annotation


# instance fields
.field public accessibilityServiceEnabled:Ljava/lang/Integer;
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

.field public isDeviceAdmin:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public versionIncremental:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public versionRelease:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public versionSdk:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/hp/vd/data/DataAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public dump()Lcom/hp/vd/data/presentation/NodeAbstract;
    .locals 4

    .line 53
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/BootData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "version_incremental"

    iget-object v3, p0, Lcom/hp/vd/data/BootData;->versionIncremental:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 56
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "version_release"

    iget-object v3, p0, Lcom/hp/vd/data/BootData;->versionRelease:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 57
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "version_sdk"

    iget-object v3, p0, Lcom/hp/vd/data/BootData;->versionSdk:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 59
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "is_device_admin"

    iget-object v3, p0, Lcom/hp/vd/data/BootData;->isDeviceAdmin:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 60
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "accessibility_service_enabled"

    iget-object v3, p0, Lcom/hp/vd/data/BootData;->accessibilityServiceEnabled:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 62
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "created_at"

    iget-object v3, p0, Lcom/hp/vd/data/BootData;->createdAt:Ljava/util/Date;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/BootData;->dateToUtc(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "boot"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3"

    return-object v0
.end method
