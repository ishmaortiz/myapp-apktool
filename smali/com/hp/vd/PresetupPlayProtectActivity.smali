.class public Lcom/hp/vd/PresetupPlayProtectActivity;
.super Landroid/app/Activity;
.source "PresetupPlayProtectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public actionFinish(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 58
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/hp/vd/RegisterActivity;->proceedWithPPEnabled:Ljava/lang/Boolean;

    .line 60
    invoke-virtual {p0}, Lcom/hp/vd/PresetupPlayProtectActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    new-instance p1, Lcom/hp/vd/agent/ExceptionHandler;

    .line 23
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/hp/vd/PresetupPlayProtectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/hp/vd/agent/ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 21
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/hp/vd/PresetupPlayProtectActivity;->requestWindowFeature(I)Z

    const p1, 0x7f080003

    .line 29
    invoke-virtual {p0, p1}, Lcom/hp/vd/PresetupPlayProtectActivity;->setContentView(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 37
    invoke-static {p0}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/safetynet/SafetyNetClient;->isVerifyAppsEnabled()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/hp/vd/PresetupPlayProtectActivity$1;

    invoke-direct {v1, p0}, Lcom/hp/vd/PresetupPlayProtectActivity$1;-><init>(Lcom/hp/vd/PresetupPlayProtectActivity;)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
