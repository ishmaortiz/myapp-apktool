.class public Lcom/hp/vd/data/LocationData;
.super Lcom/hp/vd/data/DataAbstract;
.source "LocationData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "module_location"
.end annotation


# instance fields
.field public accuracy:Ljava/lang/Float;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public altitude:Ljava/lang/Double;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public id:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public latitude:Ljava/lang/Double;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public longitude:Ljava/lang/Double;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public provider:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public speed:Ljava/lang/Float;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public takenAt:Ljava/util/Date;
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

    .line 46
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/LocationData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "provider"

    iget-object v3, p0, Lcom/hp/vd/data/LocationData;->provider:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 50
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "latitude"

    iget-object v3, p0, Lcom/hp/vd/data/LocationData;->latitude:Ljava/lang/Double;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 51
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "longitude"

    iget-object v3, p0, Lcom/hp/vd/data/LocationData;->longitude:Ljava/lang/Double;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 52
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "accuracy"

    iget-object v3, p0, Lcom/hp/vd/data/LocationData;->accuracy:Ljava/lang/Float;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 53
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "altitude"

    iget-object v3, p0, Lcom/hp/vd/data/LocationData;->altitude:Ljava/lang/Double;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 54
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "speed"

    iget-object v3, p0, Lcom/hp/vd/data/LocationData;->speed:Ljava/lang/Float;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 56
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "taken_at"

    iget-object v3, p0, Lcom/hp/vd/data/LocationData;->takenAt:Ljava/util/Date;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/LocationData;->dateToUtc(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "location"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method
