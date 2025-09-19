.class public Lcom/hp/vd/data/ExceptionV2Data;
.super Lcom/hp/vd/data/DataAbstract;
.source "ExceptionV2Data.java"


# instance fields
.field public identifier:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public processId:Ljava/lang/Integer;

.field public stack:Ljava/lang/String;

.field public threadId:Ljava/lang/Integer;

.field public threadName:Ljava/lang/String;

.field public versionCodename:Ljava/lang/String;


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

    .line 28
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/ExceptionV2Data;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "identifier"

    iget-object v3, p0, Lcom/hp/vd/data/ExceptionV2Data;->identifier:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 33
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "version_codename"

    iget-object v3, p0, Lcom/hp/vd/data/ExceptionV2Data;->versionCodename:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 35
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "process_id"

    iget-object v3, p0, Lcom/hp/vd/data/ExceptionV2Data;->processId:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 36
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "thread_id"

    iget-object v3, p0, Lcom/hp/vd/data/ExceptionV2Data;->threadId:Ljava/lang/Integer;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 37
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "thread_name"

    iget-object v3, p0, Lcom/hp/vd/data/ExceptionV2Data;->threadName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/ExceptionV2Data;->nonEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 39
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "message"

    iget-object v3, p0, Lcom/hp/vd/data/ExceptionV2Data;->message:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 40
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "stack"

    iget-object v3, p0, Lcom/hp/vd/data/ExceptionV2Data;->stack:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "exception"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2"

    return-object v0
.end method
