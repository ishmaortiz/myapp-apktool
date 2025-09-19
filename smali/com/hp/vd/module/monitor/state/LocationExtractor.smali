.class public Lcom/hp/vd/module/monitor/state/LocationExtractor;
.super Ljava/lang/Object;
.source "LocationExtractor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LocationExtractor"


# instance fields
.field buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/StateInfoData;",
            ">;"
        }
    .end annotation
.end field

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

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/state/LocationExtractor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/state/LocationExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 27
    iput-object p1, p0, Lcom/hp/vd/module/monitor/state/LocationExtractor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 28
    iput-object p2, p0, Lcom/hp/vd/module/monitor/state/LocationExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public extract(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    const-string v0, "location"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    const-string v0, "gps"

    .line 35
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "network"

    .line 36
    invoke-virtual {p1, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 38
    new-instance v1, Lcom/hp/vd/data/StateInfoData;

    invoke-direct {v1}, Lcom/hp/vd/data/StateInfoData;-><init>()V

    const/4 v2, 0x3

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/hp/vd/data/StateInfoData;->type:Ljava/lang/Integer;

    .line 41
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "is_gps_enabled"

    .line 42
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "is_network_enabled"

    .line 43
    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 46
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/hp/vd/data/StateInfoData;->data:Ljava/lang/String;

    .line 47
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v1, Lcom/hp/vd/data/StateInfoData;->createdAt:Ljava/util/Date;

    .line 49
    iget-object p1, p0, Lcom/hp/vd/module/monitor/state/LocationExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "LocationExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extract(): location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/hp/vd/data/StateInfoData;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    iget-object p1, p0, Lcom/hp/vd/module/monitor/state/LocationExtractor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {p1, v1}, Lcom/hp/vd/data/concurrency/BlockingQueue;->put(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    iget-object v0, p0, Lcom/hp/vd/module/monitor/state/LocationExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "LocationExtractor"

    const-string v2, "onReceive(): Exception caught"

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
