.class public Lcom/hp/vd/LegalActivity;
.super Landroid/app/Activity;
.source "LegalActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods

.method public actionFinish(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    .line 30
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/hp/vd/RegisterActivity;->tosStatus:Ljava/lang/Boolean;

    const-string p1, "system"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hp/vd/LegalActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "BUNDLE_KEY_TOS"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/hp/vd/LegalActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    new-instance p1, Lcom/hp/vd/agent/ExceptionHandler;

    .line 19
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/hp/vd/LegalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/hp/vd/agent/ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 17
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Lcom/hp/vd/LegalActivity;->requestWindowFeature(I)Z

    const p1, 0x7f080001

    .line 25
    invoke-virtual {p0, p1}, Lcom/hp/vd/LegalActivity;->setContentView(I)V

    return-void
.end method
