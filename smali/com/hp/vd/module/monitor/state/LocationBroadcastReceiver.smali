.class public Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationBroadcastReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LocationBroadcastReceiver"


# instance fields
.field protected locationExtractor:Lcom/hp/vd/module/monitor/state/LocationExtractor;

.field protected log:Lcom/hp/vd/agent/log/IWriter;


# direct methods
.method public constructor <init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/StateInfoData;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;->locationExtractor:Lcom/hp/vd/module/monitor/state/LocationExtractor;

    .line 24
    iput-object p2, p0, Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 25
    new-instance v0, Lcom/hp/vd/module/monitor/state/LocationExtractor;

    invoke-direct {v0, p1, p2}, Lcom/hp/vd/module/monitor/state/LocationExtractor;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v0, p0, Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;->locationExtractor:Lcom/hp/vd/module/monitor/state/LocationExtractor;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 34
    iget-object p1, p0, Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "LocationBroadcastReceiver"

    const-string v0, "Location: received the wrong intent"

    invoke-interface {p1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 39
    :cond_0
    iget-object p2, p0, Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "LocationBroadcastReceiver"

    const-string v1, "providers changed"

    invoke-interface {p2, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    :try_start_0
    iget-object p2, p0, Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;->locationExtractor:Lcom/hp/vd/module/monitor/state/LocationExtractor;

    invoke-virtual {p2, p1}, Lcom/hp/vd/module/monitor/state/LocationExtractor;->extract(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    iget-object p2, p0, Lcom/hp/vd/module/monitor/state/LocationBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "LocationBroadcastReceiver"

    const-string v1, "onReceive(): Exception caught"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
