.class public Lcom/hp/vd/module/monitor/location/LocationListenerICS;
.super Lcom/hp/vd/module/monitor/location/LocationListenerAbstract;
.source "LocationListenerICS.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "LocationListenerICS"


# direct methods
.method public constructor <init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/module/monitor/location/ProviderMapper;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/LocationData;",
            ">;",
            "Lcom/hp/vd/module/monitor/location/ProviderMapper;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/hp/vd/module/monitor/location/LocationListenerAbstract;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/module/monitor/location/ProviderMapper;Lcom/hp/vd/agent/log/IWriter;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    if-nez p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/hp/vd/module/monitor/location/LocationListenerICS;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "LocationListenerICS"

    const-string v1, "onLocationChanged(): location is NULL"

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/location/LocationListenerICS;->logRecord(Landroid/location/Location;)V

    return-void
.end method
