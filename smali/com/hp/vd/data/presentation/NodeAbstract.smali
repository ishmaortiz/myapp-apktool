.class public abstract Lcom/hp/vd/data/presentation/NodeAbstract;
.super Ljava/lang/Object;
.source "NodeAbstract.java"


# instance fields
.field protected children:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/hp/vd/data/presentation/NodeAbstract;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/hp/vd/data/presentation/NodeAbstract;->children:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/hp/vd/data/presentation/NodeAbstract;->children:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasChildren()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/hp/vd/data/presentation/NodeAbstract;->children:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/hp/vd/data/presentation/NodeAbstract;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/hp/vd/data/presentation/NodeAbstract;->children:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
