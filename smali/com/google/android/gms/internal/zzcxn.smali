.class final Lcom/google/android/gms/internal/zzcxn;
.super Lcom/google/android/gms/internal/zzcwz;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/internal/zzcxf$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcxf$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcxn;->zza:Lcom/google/android/gms/internal/zzcxf$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcwz;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zza;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxn;->zza:Lcom/google/android/gms/internal/zzcxf$zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzcxf$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzcxf$zza;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zza;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zza(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
