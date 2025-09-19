.class public Lcom/hp/vd/module/monitor/location/LocationListenerFroyo;
.super Lcom/hp/vd/module/monitor/location/LocationListenerAbstract;
.source "LocationListenerFroyo.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "LocationListenerFroyo"


# instance fields
.field protected locationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/module/monitor/location/ProviderMapper;Landroid/location/LocationManager;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/LocationData;",
            ">;",
            "Lcom/hp/vd/module/monitor/location/ProviderMapper;",
            "Landroid/location/LocationManager;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2, p4}, Lcom/hp/vd/module/monitor/location/LocationListenerAbstract;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/module/monitor/location/ProviderMapper;Lcom/hp/vd/agent/log/IWriter;)V

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/hp/vd/module/monitor/location/LocationListenerFroyo;->locationManager:Landroid/location/LocationManager;

    .line 23
    iput-object p3, p0, Lcom/hp/vd/module/monitor/location/LocationListenerFroyo;->locationManager:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    if-nez p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/hp/vd/module/monitor/location/LocationListenerFroyo;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "LocationListenerFroyo"

    const-string v1, "onLocationChanged(): location is NULL"

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/location/LocationListenerFroyo;->logRecord(Landroid/location/Location;)V

    .line 36
    iget-object p1, p0, Lcom/hp/vd/module/monitor/location/LocationListenerFroyo;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
