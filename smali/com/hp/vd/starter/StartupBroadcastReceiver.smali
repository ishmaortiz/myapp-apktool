.class public Lcom/hp/vd/starter/StartupBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartupBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 13
    :try_start_0
    new-instance p2, Lcom/hp/vd/starter/FallbackStarter;

    invoke-direct {p2}, Lcom/hp/vd/starter/FallbackStarter;-><init>()V

    .line 15
    invoke-virtual {p2, p1}, Lcom/hp/vd/starter/FallbackStarter;->startServiceIfNotRunning(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p2, p1}, Lcom/hp/vd/starter/FallbackStarter;->heartbeat(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
