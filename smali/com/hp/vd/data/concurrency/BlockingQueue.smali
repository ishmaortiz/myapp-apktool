.class public Lcom/hp/vd/data/concurrency/BlockingQueue;
.super Ljava/lang/Object;
.source "BlockingQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected data:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected isAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/hp/vd/data/concurrency/BlockingQueue;->data:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/hp/vd/data/concurrency/BlockingQueue;->isAvailable:Z

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/hp/vd/data/concurrency/BlockingQueue;->data:Ljava/util/LinkedList;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-boolean v1, p0, Lcom/hp/vd/data/concurrency/BlockingQueue;->isAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 21
    :try_start_1
    iget-object v1, p0, Lcom/hp/vd/data/concurrency/BlockingQueue;->data:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 24
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 26
    throw v1

    .line 30
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hp/vd/data/concurrency/BlockingQueue;->data:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 31
    iget-object v3, p0, Lcom/hp/vd/data/concurrency/BlockingQueue;->data:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 33
    iget-object v3, p0, Lcom/hp/vd/data/concurrency/BlockingQueue;->data:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 34
    iput-boolean v2, p0, Lcom/hp/vd/data/concurrency/BlockingQueue;->isAvailable:Z

    .line 37
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/hp/vd/data/concurrency/BlockingQueue;->data:Ljava/util/LinkedList;

    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/data/concurrency/BlockingQueue;->data:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 45
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/hp/vd/data/concurrency/BlockingQueue;->isAvailable:Z

    .line 50
    iget-object v1, p0, Lcom/hp/vd/data/concurrency/BlockingQueue;->data:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 52
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
