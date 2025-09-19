.class public Lcom/hp/vd/data/container/EntityContainer;
.super Ljava/lang/Object;
.source "EntityContainer.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/hp/vd/data/IData;",
        ">;"
    }
.end annotation


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hp/vd/data/IData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hp/vd/data/container/EntityContainer;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/hp/vd/data/IData;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/hp/vd/data/container/EntityContainer;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public iterator()Lcom/hp/vd/data/container/iterator/EntityIterator;
    .locals 1

    .line 20
    new-instance v0, Lcom/hp/vd/data/container/iterator/EntityIterator;

    invoke-direct {v0, p0}, Lcom/hp/vd/data/container/iterator/EntityIterator;-><init>(Lcom/hp/vd/data/container/EntityContainer;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/hp/vd/data/container/EntityContainer;->iterator()Lcom/hp/vd/data/container/iterator/EntityIterator;

    move-result-object v0

    return-object v0
.end method
