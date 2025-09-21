.class public Lcom/hp/vd/AlarmRoutine;
.super Ljava/lang/Object;
.source "AlarmRoutine.java"


# instance fields
.field protected context:Landroid/content/Context;

.field protected heartbeatInterval:I

.field protected intent:Landroid/content/Intent;

.field protected wakeupDelay:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/hp/vd/agent/Configuration;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/hp/vd/AlarmRoutine;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/hp/vd/AlarmRoutine;->intent:Landroid/content/Intent;

    .line 40
    iget-object p1, p0, Lcom/hp/vd/AlarmRoutine;->context:Landroid/content/Context;

    const-string p2, "system"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "initial_wakeup_delay"

    .line 47
    invoke-virtual {p3}, Lcom/hp/vd/agent/Configuration;->getDefaultInitialWakeupInterval()I

    move-result v0

    .line 45
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    iput p2, p0, Lcom/hp/vd/AlarmRoutine;->wakeupDelay:I

    const-string p2, "heartbeat_interval"

    .line 52
    invoke-virtual {p3}, Lcom/hp/vd/agent/Configuration;->getDefaultHeartbeatInterval()I

    move-result p3

    .line 50
    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/hp/vd/AlarmRoutine;->heartbeatInterval:I

    return-void
.end method


# virtual methods
.method protected dispatch(IJJ)V
    .locals 8

    .line 105
    iget-object v0, p0, Lcom/hp/vd/AlarmRoutine;->context:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 106
    invoke-virtual {p0}, Lcom/hp/vd/AlarmRoutine;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 108
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public dispatchOnBoot()V
    .locals 10

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/hp/vd/AlarmRoutine;->wakeupDelay:I

    int-to-long v2, v2

    add-long v6, v0, v2

    iget v0, p0, Lcom/hp/vd/AlarmRoutine;->heartbeatInterval:I

    int-to-long v8, v0

    const/4 v5, 0x2

    move-object v4, p0

    .line 92
    invoke-virtual/range {v4 .. v9}, Lcom/hp/vd/AlarmRoutine;->dispatch(IJJ)V

    return-void
.end method

.method public dispatchOnInstall()V
    .locals 6

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v0, p0, Lcom/hp/vd/AlarmRoutine;->heartbeatInterval:I

    int-to-long v4, v0

    const/4 v1, 0x2

    move-object v0, p0

    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/hp/vd/AlarmRoutine;->dispatch(IJJ)V

    return-void
.end method

.method protected getPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 118
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hp/vd/AlarmRoutine;->context:Landroid/content/Context;

    const-class v2, Lcom/hp/vd/starter/StartupBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    iget-object v1, p0, Lcom/hp/vd/AlarmRoutine;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0xc000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
