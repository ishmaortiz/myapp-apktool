.class public Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityBroadcastReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ConnectivityBroadcastReceiver"


# instance fields
.field connectivityExtractor:Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;

.field log:Lcom/hp/vd/agent/log/IWriter;


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

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 17
    iput-object v0, p0, Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;->connectivityExtractor:Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;

    .line 21
    iput-object p2, p0, Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 22
    new-instance v0, Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;

    invoke-direct {v0, p1, p2}, Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v0, p0, Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;->connectivityExtractor:Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 29
    iget-object p1, p0, Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "ConnectivityBroadcastReceiver"

    const-string v0, "onReceive: received the wrong intent"

    invoke-interface {p1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 34
    :cond_0
    iget-object p2, p0, Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "ConnectivityBroadcastReceiver"

    const-string v1, "onReceive: received  intent"

    invoke-interface {p2, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    :try_start_0
    iget-object p2, p0, Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;->connectivityExtractor:Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;

    invoke-virtual {p2, p1}, Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;->extract(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    iget-object p2, p0, Lcom/hp/vd/module/monitor/state/ConnectivityBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "ConnectivityBroadcastReceiver"

    const-string v1, "onReceive(): Exception caught"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
