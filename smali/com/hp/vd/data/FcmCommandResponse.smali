.class public Lcom/hp/vd/data/FcmCommandResponse;
.super Lcom/hp/vd/data/DataAbstract;
.source "FcmCommandResponse.java"


# instance fields
.field public id:Ljava/lang/String;

.field public resultBody:Ljava/lang/String;

.field public resultCode:Ljava/lang/String;

.field public token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/hp/vd/data/DataAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public dump()Lcom/hp/vd/data/presentation/NodeAbstract;
    .locals 4

    .line 26
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/FcmCommandResponse;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "id"

    iget-object v3, p0, Lcom/hp/vd/data/FcmCommandResponse;->id:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 29
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "token"

    iget-object v3, p0, Lcom/hp/vd/data/FcmCommandResponse;->token:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 31
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "result_code"

    iget-object v3, p0, Lcom/hp/vd/data/FcmCommandResponse;->resultCode:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 32
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "result_body"

    iget-object v3, p0, Lcom/hp/vd/data/FcmCommandResponse;->resultBody:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "fcm_command_response"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method
