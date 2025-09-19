.class abstract Lcom/google/android/gms/internal/zzcxf$zzf;
.super Lcom/google/android/gms/internal/zzcxa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcxf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcxa<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;",
        ">;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/zzcxb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcxa;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance p1, Lcom/google/android/gms/internal/zzcxr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcxr;-><init>(Lcom/google/android/gms/internal/zzcxf$zzf;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcxf$zzf;->zza:Lcom/google/android/gms/internal/zzcxb;

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzcxf$zzi;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzcxf$zzi;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/SafeBrowsingData;)V

    return-object v0
.end method
