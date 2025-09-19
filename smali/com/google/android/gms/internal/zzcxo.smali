.class final Lcom/google/android/gms/internal/zzcxo;
.super Lcom/google/android/gms/internal/zzcwz;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/internal/zzcxf$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcxf$zzc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcxo;->zza:Lcom/google/android/gms/internal/zzcxf$zzc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxo;->zza:Lcom/google/android/gms/internal/zzcxf$zzc;

    new-instance v1, Lcom/google/android/gms/internal/zzcxf$zzj;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzcxf$zzj;-><init>(Lcom/google/android/gms/common/api/Status;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zza(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
