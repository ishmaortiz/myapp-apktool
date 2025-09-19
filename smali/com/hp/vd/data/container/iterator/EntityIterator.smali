.class public Lcom/hp/vd/data/container/iterator/EntityIterator;
.super Ljava/lang/Object;
.source "EntityIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/hp/vd/data/IData;",
        ">;"
    }
.end annotation


# instance fields
.field protected container:Lcom/hp/vd/data/container/EntityContainer;

.field protected iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/hp/vd/data/IData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hp/vd/data/container/EntityContainer;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/hp/vd/data/container/iterator/EntityIterator;->container:Lcom/hp/vd/data/container/EntityContainer;

    .line 11
    iput-object v0, p0, Lcom/hp/vd/data/container/iterator/EntityIterator;->iterator:Ljava/util/Iterator;

    .line 15
    iput-object p1, p0, Lcom/hp/vd/data/container/iterator/EntityIterator;->container:Lcom/hp/vd/data/container/EntityContainer;

    .line 16
    iget-object p1, p1, Lcom/hp/vd/data/container/EntityContainer;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/data/container/iterator/EntityIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/hp/vd/data/container/iterator/EntityIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/hp/vd/data/IData;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/hp/vd/data/container/iterator/EntityIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/vd/data/IData;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/hp/vd/data/container/iterator/EntityIterator;->next()Lcom/hp/vd/data/IData;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
