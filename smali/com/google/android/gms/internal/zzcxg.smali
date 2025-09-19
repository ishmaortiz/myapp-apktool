.class final Lcom/google/android/gms/internal/zzcxg;
.super Lcom/google/android/gms/internal/zzcxf$zzb;


# instance fields
.field private synthetic zzb:[B

.field private synthetic zzd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;[BLjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcxg;->zzb:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcxg;->zzd:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcxf$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzcxs;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxg;->zza:Lcom/google/android/gms/internal/zzcxb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcxg;->zzb:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcxg;->zzd:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "com.google.android.safetynet.ATTEST_API_KEY"

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzcxs;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzaf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcxd;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzcxd;->zza(Lcom/google/android/gms/internal/zzcxb;[BLjava/lang/String;)V

    return-void
.end method
