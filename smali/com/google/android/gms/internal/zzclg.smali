.class final Lcom/google/android/gms/internal/zzclg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Ljava/lang/String;

.field private synthetic zzb:Ljava/lang/String;

.field private synthetic zzc:Ljava/lang/String;

.field private synthetic zzd:J

.field private synthetic zze:Lcom/google/android/gms/internal/zzcko;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcko;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclg;->zze:Lcom/google/android/gms/internal/zzcko;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzclg;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzclg;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzclg;->zzc:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzclg;->zzd:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclg;->zza:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclg;->zze:Lcom/google/android/gms/internal/zzcko;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcko;->zza(Lcom/google/android/gms/internal/zzcko;)Lcom/google/android/gms/internal/zzckj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzv()Lcom/google/android/gms/internal/zzcma;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclg;->zzb:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcma;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzclz;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzclz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzclz;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclg;->zzc:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzclz;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclg;->zza:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzclz;->zzb:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzclg;->zzd:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzclz;->zzc:J

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclg;->zze:Lcom/google/android/gms/internal/zzcko;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcko;->zza(Lcom/google/android/gms/internal/zzcko;)Lcom/google/android/gms/internal/zzckj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzckj;->zzv()Lcom/google/android/gms/internal/zzcma;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclg;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcma;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzclz;)V

    return-void
.end method
