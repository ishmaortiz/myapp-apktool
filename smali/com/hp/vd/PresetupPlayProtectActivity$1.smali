.class Lcom/hp/vd/PresetupPlayProtectActivity$1;
.super Ljava/lang/Object;
.source "PresetupPlayProtectActivity.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hp/vd/PresetupPlayProtectActivity;->onResume()V
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
.field final synthetic this$0:Lcom/hp/vd/PresetupPlayProtectActivity;


# direct methods
.method constructor <init>(Lcom/hp/vd/PresetupPlayProtectActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/hp/vd/PresetupPlayProtectActivity$1;->this$0:Lcom/hp/vd/PresetupPlayProtectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;->isVerifyAppsEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/hp/vd/PresetupPlayProtectActivity$1;->this$0:Lcom/hp/vd/PresetupPlayProtectActivity;

    invoke-virtual {p1}, Lcom/hp/vd/PresetupPlayProtectActivity;->finish()V

    :cond_0
    return-void
.end method
