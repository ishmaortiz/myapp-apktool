.class public Lcom/hp/vd/data/LegalStatus;
.super Lcom/hp/vd/data/DataAbstract;
.source "LegalStatus.java"


# instance fields
.field public application:Ljava/lang/String;

.field public custom:Ljava/lang/String;

.field public deviceIdentifier:Ljava/lang/String;

.field public format:Ljava/lang/String;

.field public revision:Ljava/lang/Integer;

.field public status:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public ui:Ljava/lang/Integer;

.field public version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/hp/vd/data/DataAbstract;-><init>()V

    const-string v0, "android-client-v1"

    .line 15
    iput-object v0, p0, Lcom/hp/vd/data/LegalStatus;->application:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump()Lcom/hp/vd/data/presentation/NodeAbstract;
    .locals 4

    .line 29
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/LegalStatus;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "device_identifier"

    iget-object v3, p0, Lcom/hp/vd/data/LegalStatus;->deviceIdentifier:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 33
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "ui"

    iget-object v3, p0, Lcom/hp/vd/data/LegalStatus;->ui:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 34
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "type"

    iget-object v3, p0, Lcom/hp/vd/data/LegalStatus;->type:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 35
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "format"

    iget-object v3, p0, Lcom/hp/vd/data/LegalStatus;->format:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 36
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "version"

    iget-object v3, p0, Lcom/hp/vd/data/LegalStatus;->version:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 37
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "revision"

    iget-object v3, p0, Lcom/hp/vd/data/LegalStatus;->revision:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 39
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "application"

    iget-object v3, p0, Lcom/hp/vd/data/LegalStatus;->application:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 40
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "status"

    iget-object v3, p0, Lcom/hp/vd/data/LegalStatus;->status:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 42
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "custom"

    iget-object v3, p0, Lcom/hp/vd/data/LegalStatus;->custom:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "legal_status"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method
