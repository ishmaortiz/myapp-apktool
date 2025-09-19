.class public Lcom/hp/vd/starter/OnBootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnBootBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 16
    new-instance v0, Lcom/hp/vd/AlarmRoutine;

    new-instance v1, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v1}, Lcom/hp/vd/agent/Configuration;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcom/hp/vd/AlarmRoutine;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/hp/vd/agent/Configuration;)V

    .line 18
    invoke-virtual {v0}, Lcom/hp/vd/AlarmRoutine;->dispatchOnBoot()V

    return-void
.end method
