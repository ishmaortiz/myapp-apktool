.class abstract Lcom/google/android/gms/internal/zzcxf$zzd;
.super Lcom/google/android/gms/internal/zzcxa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcxf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcxa<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$zzb;",
        ">;"
    }
.end annotation


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/zzcxb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcxa;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance p1, Lcom/google/android/gms/internal/zzcxp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcxp;-><init>(Lcom/google/android/gms/internal/zzcxf$zzd;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcxf$zzd;->zza:Lcom/google/android/gms/internal/zzcxb;

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzcxf$zzg;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzcxf$zzg;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V

    return-object v0
.end method
