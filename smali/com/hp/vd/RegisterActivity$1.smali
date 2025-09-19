.class Lcom/hp/vd/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hp/vd/RegisterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hp/vd/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/hp/vd/RegisterActivity;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/hp/vd/RegisterActivity$1;->this$0:Lcom/hp/vd/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;",
            ">;)V"
        }
    .end annotation

    .line 336
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;

    .line 339
    invoke-virtual {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;->isVerifyAppsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 340
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/hp/vd/RegisterActivity$1;->this$0:Lcom/hp/vd/RegisterActivity;

    const-class v1, Lcom/hp/vd/PresetupPlayProtectActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity$1;->this$0:Lcom/hp/vd/RegisterActivity;

    invoke-virtual {v0, p1}, Lcom/hp/vd/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
