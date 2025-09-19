.class public Lcom/hp/vd/data/concurrency/QueueConsumerDao;
.super Ljava/lang/Object;
.source "QueueConsumerDao.java"

# interfaces
.implements Lcom/hp/vd/data/concurrency/ConsumerInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hp/vd/data/concurrency/ConsumerInterface;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "DaoConsumer"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected isStarted:Z

.field protected log:Lcom/hp/vd/agent/log/IWriter;


# direct methods
.method public constructor <init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "TT;>;",
            "Lcom/j256/ormlite/dao/Dao<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 12
    iput-object v0, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 13
    iput-object v0, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->log:Lcom/hp/vd/agent/log/IWriter;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->isStarted:Z

    .line 18
    iput-object p1, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 19
    iput-object p2, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 20
    iput-object p3, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public getIsStarted()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->isStarted:Z

    return v0
.end method

.method public run()V
    .locals 4

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->isStarted:Z

    .line 42
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->isStarted:Z

    if-eqz v0, :cond_1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {v0}, Lcom/hp/vd/data/concurrency/BlockingQueue;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 54
    iget-boolean v1, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->isStarted:Z

    if-nez v1, :cond_0

    return-void

    .line 59
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 66
    iget-object v1, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "DaoConsumer"

    const-string v3, "run(): dao.create()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_2
    move-exception v0

    .line 48
    iget-object v1, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "DaoConsumer"

    const-string v3, "InterruptedException caught."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :cond_1
    return-void
.end method

.method public setIsStarted(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->isStarted:Z

    return-void
.end method
