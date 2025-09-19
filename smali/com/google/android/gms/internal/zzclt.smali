.class final Lcom/google/android/gms/internal/zzclt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Ljava/lang/String;

.field private synthetic zzb:Ljava/lang/String;

.field private synthetic zzc:Ljava/lang/Object;

.field private synthetic zzd:J

.field private synthetic zze:Lcom/google/android/gms/internal/zzclk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclt;->zze:Lcom/google/android/gms/internal/zzclk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzclt;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzclt;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzclt;->zzc:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzclt;->zzd:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclt;->zze:Lcom/google/android/gms/internal/zzclk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclt;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclt;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzclt;->zzc:Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzclt;->zzd:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/zzclk;->zza(Lcom/google/android/gms/internal/zzclk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
