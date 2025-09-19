.class final Lcom/google/android/gms/internal/zzcls;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Ljava/lang/String;

.field private synthetic zzb:Ljava/lang/String;

.field private synthetic zzc:J

.field private synthetic zzd:Landroid/os/Bundle;

.field private synthetic zze:Z

.field private synthetic zzf:Z

.field private synthetic zzg:Z

.field private synthetic zzh:Ljava/lang/String;

.field private synthetic zzi:Lcom/google/android/gms/internal/zzclk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclk;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcls;->zzi:Lcom/google/android/gms/internal/zzclk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcls;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcls;->zzb:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzcls;->zzc:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcls;->zzd:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzcls;->zze:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzcls;->zzf:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzcls;->zzg:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/zzcls;->zzh:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcls;->zzi:Lcom/google/android/gms/internal/zzclk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcls;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcls;->zzb:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzcls;->zzc:J

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcls;->zzd:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzcls;->zze:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/zzcls;->zzf:Z

    iget-boolean v8, p0, Lcom/google/android/gms/internal/zzcls;->zzg:Z

    iget-object v9, p0, Lcom/google/android/gms/internal/zzcls;->zzh:Ljava/lang/String;

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/internal/zzclk;->zza(Lcom/google/android/gms/internal/zzclk;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method
