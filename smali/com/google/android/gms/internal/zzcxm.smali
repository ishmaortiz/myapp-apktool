.class final Lcom/google/android/gms/internal/zzcxm;
.super Lcom/google/android/gms/internal/zzcxf$zze;


# instance fields
.field private synthetic zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcxf;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcxm;->zzb:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcxf$zze;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcxs;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxm;->zza:Lcom/google/android/gms/internal/zzcxb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxm;->zzb:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzaf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcxd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzcxd;->zza(Lcom/google/android/gms/internal/zzcxb;Ljava/lang/String;)V

    return-void
.end method
