.class public Lcom/google/android/gms/internal/zzclz;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# instance fields
.field public zza:Ljava/lang/String;

.field public zzb:Ljava/lang/String;

.field public zzc:J


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzclz;)V
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzclz;->zza:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclz;->zza:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzclz;->zzb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzclz;->zzb:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzclz;->zzc:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzclz;->zzc:J

    return-void
.end method
