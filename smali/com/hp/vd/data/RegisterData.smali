.class public Lcom/hp/vd/data/RegisterData;
.super Lcom/hp/vd/data/DataAbstract;
.source "RegisterData.java"


# instance fields
.field public androidId:Ljava/lang/String;

.field public bluetoothMacAddress:Ljava/lang/String;

.field public buildPackageName:Ljava/lang/String;

.field public buildSerial:Ljava/lang/String;

.field public buildVariant:Ljava/lang/String;

.field public cpuSerial:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public identifier:Ljava/lang/String;

.field public identifierPlain:Ljava/lang/String;

.field public installedAt:Ljava/util/Date;

.field public instance:Ljava/lang/String;

.field public manufacturer:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public version:Ljava/lang/Double;

.field public versionCodename:Ljava/lang/String;

.field public versionIncremental:Ljava/lang/String;

.field public versionRelease:Ljava/lang/String;

.field public versionSdk:Ljava/lang/String;

.field public wifiMacAddress:Ljava/lang/String;


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

    .line 103
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/RegisterData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 105
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "version"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->version:Ljava/lang/Double;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 106
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "identifier"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->identifier:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 107
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "identifier_plain"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->identifierPlain:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 109
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "build_serial"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->buildSerial:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 110
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "wifi_mac_address"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->wifiMacAddress:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 111
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "bluetooth_mac_address"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->bluetoothMacAddress:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 112
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "cpu_serial"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->cpuSerial:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 114
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "manufacturer"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->manufacturer:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 115
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "model"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->model:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 117
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "version_codename"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->versionCodename:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 118
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "version_incremental"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->versionIncremental:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 119
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "version_release"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->versionRelease:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 120
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "version_sdk"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->versionSdk:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 122
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "build_package_name"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->buildPackageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 123
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "build_variant"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->buildVariant:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 125
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "instance"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->instance:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 126
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "email"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->email:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 128
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "installed_at"

    iget-object v3, p0, Lcom/hp/vd/data/RegisterData;->installedAt:Ljava/util/Date;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/RegisterData;->dateToUtc(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "register"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method
