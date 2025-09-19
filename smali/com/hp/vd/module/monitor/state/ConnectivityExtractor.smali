.class public Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;
.super Ljava/lang/Object;
.source "ConnectivityExtractor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ConnectivityExtractor"


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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 30
    iput-object p1, p0, Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 31
    iput-object p2, p0, Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public extract(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string v0, "connectivity"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 38
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 40
    new-instance v0, Lcom/hp/vd/data/StateInfoData;

    invoke-direct {v0}, Lcom/hp/vd/data/StateInfoData;-><init>()V

    const/4 v1, 0x2

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/StateInfoData;->type:Ljava/lang/Integer;

    .line 44
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;->getNetworkState(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 45
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/hp/vd/data/StateInfoData;->data:Ljava/lang/String;

    .line 47
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v0, Lcom/hp/vd/data/StateInfoData;->createdAt:Ljava/util/Date;

    .line 49
    iget-object p1, p0, Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "ConnectivityExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extract(): connectivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/hp/vd/data/StateInfoData;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    iget-object p1, p0, Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {p1, v0}, Lcom/hp/vd/data/concurrency/BlockingQueue;->put(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    iget-object v0, p0, Lcom/hp/vd/module/monitor/state/ConnectivityExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "ConnectivityExtractor"

    const-string v2, "extract(): Exception caught"

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method protected getNetworkState(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "connectivity"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 67
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    .line 71
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 72
    invoke-virtual {p1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 85
    array-length v1, p1

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v2, p1, v3

    .line 87
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method
