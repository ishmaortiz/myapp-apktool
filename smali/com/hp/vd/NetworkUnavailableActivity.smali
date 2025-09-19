.class public Lcom/hp/vd/NetworkUnavailableActivity;
.super Landroid/app/Activity;
.source "NetworkUnavailableActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustSettingsOnClick(Landroid/view/View;)V
    .locals 1

    .line 37
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hp/vd/NetworkUnavailableActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public continueOnClick(Landroid/view/View;)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/hp/vd/NetworkUnavailableActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/hp/vd/NetworkUnavailableActivity;->requestWindowFeature(I)Z

    const p1, 0x7f080002

    .line 20
    invoke-virtual {p0, p1}, Lcom/hp/vd/NetworkUnavailableActivity;->setContentView(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 30
    invoke-static {p0}, Lcom/hp/vd/agent/InstallHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/hp/vd/NetworkUnavailableActivity;->finish()V

    :cond_0
    return-void
.end method
