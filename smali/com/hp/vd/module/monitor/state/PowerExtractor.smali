.class public Lcom/hp/vd/module/monitor/state/PowerExtractor;
.super Ljava/lang/Object;
.source "PowerExtractor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PowerExtractor"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/StateInfoData;",
            ">;"
        }
    .end annotation
.end field

.field context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/StateInfoData;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/state/PowerExtractor;->context:Lcom/hp/vd/context/Context;

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/state/PowerExtractor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 27
    iput-object v0, p0, Lcom/hp/vd/module/monitor/state/PowerExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 31
    iput-object p1, p0, Lcom/hp/vd/module/monitor/state/PowerExtractor;->context:Lcom/hp/vd/context/Context;

    .line 32
    iput-object p2, p0, Lcom/hp/vd/module/monitor/state/PowerExtractor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 33
    iput-object p3, p0, Lcom/hp/vd/module/monitor/state/PowerExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public extract()V
    .locals 8

    .line 43
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/hp/vd/module/monitor/state/PowerExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "status"

    const/4 v2, -0x1

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v5

    :goto_1
    const-string v6, "plugged"

    .line 49
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-ne v6, v5, :cond_3

    move v4, v5

    :cond_3
    const-string v6, "level"

    .line 53
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "scale"

    .line 54
    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-float v2, v6

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 62
    new-instance v0, Lcom/hp/vd/data/StateInfoData;

    invoke-direct {v0}, Lcom/hp/vd/data/StateInfoData;-><init>()V

    .line 64
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "battery_charging"

    .line 66
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "battery_charing_ac"

    .line 67
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "battery_charing_usb"

    .line 68
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "battery_percentage"

    .line 69
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 73
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/StateInfoData;->type:Ljava/lang/Integer;

    .line 74
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/StateInfoData;->data:Ljava/lang/String;

    .line 75
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/hp/vd/data/StateInfoData;->createdAt:Ljava/util/Date;

    .line 81
    iget-object v1, p0, Lcom/hp/vd/module/monitor/state/PowerExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "PowerExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extract(): battery: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/hp/vd/data/StateInfoData;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    iget-object v1, p0, Lcom/hp/vd/module/monitor/state/PowerExtractor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {v1, v0}, Lcom/hp/vd/data/concurrency/BlockingQueue;->put(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 86
    iget-object v1, p0, Lcom/hp/vd/module/monitor/state/PowerExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "PowerExtractor"

    const-string v3, "Exception caught"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_3
    return-void
.end method
