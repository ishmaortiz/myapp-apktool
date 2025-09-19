.class public Lcom/hp/vd/data/container/DaoContainer;
.super Ljava/lang/Object;
.source "DaoContainer.java"

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
            "Lcom/j256/ormlite/dao/Dao<",
            "+",
            "Lcom/hp/vd/data/IData;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hp/vd/data/container/DaoContainer;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "+",
            "Lcom/hp/vd/data/IData;",
            "*>;)V"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/hp/vd/data/container/DaoContainer;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public iterator()Lcom/hp/vd/data/container/iterator/DaoIterator;
    .locals 1

    .line 22
    new-instance v0, Lcom/hp/vd/data/container/iterator/DaoIterator;

    invoke-direct {v0, p0}, Lcom/hp/vd/data/container/iterator/DaoIterator;-><init>(Lcom/hp/vd/data/container/DaoContainer;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/hp/vd/data/container/DaoContainer;->iterator()Lcom/hp/vd/data/container/iterator/DaoIterator;

    move-result-object v0

    return-object v0
.end method
