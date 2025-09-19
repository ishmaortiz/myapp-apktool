.class public Lcom/hp/vd/data/presentation/KeyValueNode;
.super Lcom/hp/vd/data/presentation/NodeAbstract;
.source "KeyValueNode.java"

# interfaces
.implements Lcom/hp/vd/data/presentation/KeyValueInterface;


# instance fields
.field protected key:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/hp/vd/data/presentation/NodeAbstract;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->key:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/hp/vd/data/presentation/NodeAbstract;-><init>()V

    if-eqz p1, :cond_0

    .line 50
    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->key:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->key:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->value:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    .line 60
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->value:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/hp/vd/data/presentation/NodeAbstract;-><init>()V

    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->key:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->key:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->value:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 77
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->value:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/hp/vd/data/presentation/NodeAbstract;-><init>()V

    if-eqz p1, :cond_0

    .line 33
    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->key:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->key:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    .line 40
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->value:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->value:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/hp/vd/data/presentation/NodeAbstract;-><init>()V

    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->key:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->key:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    .line 91
    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->value:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-wide/16 p1, 0x0

    .line 94
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->value:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/hp/vd/data/presentation/NodeAbstract;-><init>()V

    if-eqz p1, :cond_0

    .line 16
    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->key:Ljava/lang/String;

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->key:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_1

    .line 23
    iput-object p2, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->value:Ljava/lang/String;

    goto :goto_1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    iput-object p1, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->value:Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/hp/vd/data/presentation/KeyValueNode;->value:Ljava/lang/String;

    return-object v0
.end method
