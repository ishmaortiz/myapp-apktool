.class final Lcom/google/android/gms/safetynet/zzl;
.super Lcom/google/android/gms/common/api/internal/zzde;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzde<",
        "Lcom/google/android/gms/internal/zzcxs;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/safetynet/SafetyNetClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zzde;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcxs;

    new-instance v0, Lcom/google/android/gms/safetynet/zzm;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/safetynet/zzm;-><init>(Lcom/google/android/gms/safetynet/zzl;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzaf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcxd;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzcxd;->zza(Lcom/google/android/gms/internal/zzcxb;)V

    return-void
.end method
