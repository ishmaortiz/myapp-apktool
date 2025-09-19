.class public Lcom/hp/vd/data/container/iterator/DaoIterator;
.super Ljava/lang/Object;
.source "DaoIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lcom/hp/vd/context/ContextAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/hp/vd/data/IData;",
        ">;",
        "Lcom/hp/vd/context/ContextAware;"
    }
.end annotation


# instance fields
.field protected container:Lcom/hp/vd/data/container/DaoContainer;

.field protected context:Lcom/hp/vd/context/Context;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/IData;",
            "*>;"
        }
    .end annotation
.end field

.field protected daoIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/j256/ormlite/dao/Dao<",
            "+",
            "Lcom/hp/vd/data/IData;",
            "*>;>;"
        }
    .end annotation
.end field

.field protected entityIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/hp/vd/data/IData;",
            ">;"
        }
    .end annotation
.end field

.field protected readCount:I

.field protected readLimit:I

.field protected settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/hp/vd/data/container/DaoContainer;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->container:Lcom/hp/vd/data/container/DaoContainer;

    .line 19
    iput-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->daoIterator:Ljava/util/Iterator;

    .line 21
    iput-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->entityIterator:Ljava/util/Iterator;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->dao:Lcom/j256/ormlite/dao/Dao;

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->readCount:I

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->readLimit:I

    .line 27
    iput-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->context:Lcom/hp/vd/context/Context;

    .line 32
    iput-object p1, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->container:Lcom/hp/vd/data/container/DaoContainer;

    .line 33
    iget-object p1, p1, Lcom/hp/vd/data/container/DaoContainer;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->daoIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/hp/vd/data/container/iterator/DaoIterator;->preload()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->entityIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method protected hitLimit()Z
    .locals 3

    .line 113
    iget v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->readLimit:I

    sget-object v1, Lcom/hp/vd/module/Constants;->DATA_LIMIT_UNLIMITED:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    .line 121
    :cond_0
    iget v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->readCount:I

    iget v1, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->readLimit:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method public next()Lcom/hp/vd/data/IData;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/hp/vd/data/container/iterator/DaoIterator;->preload()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->entityIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->entityIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->entityIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/vd/data/IData;

    .line 66
    iget v1, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->readCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->readCount:I

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/hp/vd/data/container/iterator/DaoIterator;->next()Lcom/hp/vd/data/IData;

    move-result-object v0

    return-object v0
.end method

.method protected preload()Z
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->entityIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->entityIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hp/vd/data/container/iterator/DaoIterator;->hitLimit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->daoIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->daoIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao;

    iput-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 90
    iget-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->entityIterator:Ljava/util/Iterator;

    .line 92
    iput v1, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->readCount:I

    .line 94
    iget-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v2, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->settings:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read_limit_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/hp/vd/module/Constants;->DATA_LIMIT_UNLIMITED:Ljava/lang/Integer;

    .line 97
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 95
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->readLimit:I

    .line 100
    iget-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->entityIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->daoIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setContext(Lcom/hp/vd/context/Context;)V
    .locals 2

    .line 38
    iput-object p1, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->context:Lcom/hp/vd/context/Context;

    .line 40
    iget-object p1, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "system"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/data/container/iterator/DaoIterator;->settings:Landroid/content/SharedPreferences;

    return-void
.end method
