.class Lcom/hp/vd/module/monitor/location/PersisterRunnable$1;
.super Ljava/lang/Object;
.source "PersisterRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hp/vd/module/monitor/location/PersisterRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hp/vd/module/monitor/location/PersisterRunnable;


# direct methods
.method constructor <init>(Lcom/hp/vd/module/monitor/location/PersisterRunnable;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable$1;->this$0:Lcom/hp/vd/module/monitor/location/PersisterRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable$1;->this$0:Lcom/hp/vd/module/monitor/location/PersisterRunnable;

    iget-object v0, v0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->instance:Lcom/hp/vd/module/monitor/LocationMonitor;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/LocationMonitor;->stop()Z

    .line 63
    iget-object v0, p0, Lcom/hp/vd/module/monitor/location/PersisterRunnable$1;->this$0:Lcom/hp/vd/module/monitor/location/PersisterRunnable;

    iget-object v0, v0, Lcom/hp/vd/module/monitor/location/PersisterRunnable;->instance:Lcom/hp/vd/module/monitor/LocationMonitor;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/LocationMonitor;->start()Z

    return-void
.end method
