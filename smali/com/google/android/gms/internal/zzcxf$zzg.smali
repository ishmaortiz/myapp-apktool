.class final Lcom/google/android/gms/internal/zzcxf$zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/safetynet/SafetyNetApi$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcxf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzg"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/common/api/Status;

.field private final zzb:Lcom/google/android/gms/safetynet/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcxf$zzg;->zza:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcxf$zzg;->zzb:Lcom/google/android/gms/safetynet/zzd;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxf$zzg;->zza:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final zza()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/safetynet/HarmfulAppsData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxf$zzg;->zzb:Lcom/google/android/gms/safetynet/zzd;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxf$zzg;->zzb:Lcom/google/android/gms/safetynet/zzd;

    iget-object v0, v0, Lcom/google/android/gms/safetynet/zzd;->zzb:[Lcom/google/android/gms/safetynet/HarmfulAppsData;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxf$zzg;->zzb:Lcom/google/android/gms/safetynet/zzd;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxf$zzg;->zzb:Lcom/google/android/gms/safetynet/zzd;

    iget-wide v0, v0, Lcom/google/android/gms/safetynet/zzd;->zza:J

    return-wide v0
.end method

.method public final zzc()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxf$zzg;->zzb:Lcom/google/android/gms/safetynet/zzd;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxf$zzg;->zzb:Lcom/google/android/gms/safetynet/zzd;

    iget v0, v0, Lcom/google/android/gms/safetynet/zzd;->zzc:I

    return v0
.end method
