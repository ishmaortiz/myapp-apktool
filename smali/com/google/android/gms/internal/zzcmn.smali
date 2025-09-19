.class final Lcom/google/android/gms/internal/zzcmn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Z

.field private synthetic zzb:Z

.field private synthetic zzc:Lcom/google/android/gms/internal/zzcii;

.field private synthetic zzd:Lcom/google/android/gms/internal/zzcif;

.field private synthetic zze:Lcom/google/android/gms/internal/zzcii;

.field private synthetic zzf:Lcom/google/android/gms/internal/zzcme;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcme;ZZLcom/google/android/gms/internal/zzcii;Lcom/google/android/gms/internal/zzcif;Lcom/google/android/gms/internal/zzcii;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcmn;->zzf:Lcom/google/android/gms/internal/zzcme;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcmn;->zza:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzcmn;->zzb:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcmn;->zzc:Lcom/google/android/gms/internal/zzcii;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcmn;->zzd:Lcom/google/android/gms/internal/zzcif;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcmn;->zze:Lcom/google/android/gms/internal/zzcii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmn;->zzf:Lcom/google/android/gms/internal/zzcme;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcme;->zzd(Lcom/google/android/gms/internal/zzcme;)Lcom/google/android/gms/internal/zzcjb;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmn;->zzf:Lcom/google/android/gms/internal/zzcme;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzy()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcmn;->zza:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmn;->zzf:Lcom/google/android/gms/internal/zzcme;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcmn;->zzb:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmn;->zzc:Lcom/google/android/gms/internal/zzcii;

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcmn;->zzd:Lcom/google/android/gms/internal/zzcif;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzcme;->zza(Lcom/google/android/gms/internal/zzcjb;Lcom/google/android/gms/internal/zzbgl;Lcom/google/android/gms/internal/zzcif;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmn;->zze:Lcom/google/android/gms/internal/zzcii;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcii;->zza:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmn;->zzc:Lcom/google/android/gms/internal/zzcii;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmn;->zzd:Lcom/google/android/gms/internal/zzcif;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzcjb;->zza(Lcom/google/android/gms/internal/zzcii;Lcom/google/android/gms/internal/zzcif;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmn;->zzc:Lcom/google/android/gms/internal/zzcii;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzcjb;->zza(Lcom/google/android/gms/internal/zzcii;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcmn;->zzf:Lcom/google/android/gms/internal/zzcme;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzy()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Failed to send conditional user property to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmn;->zzf:Lcom/google/android/gms/internal/zzcme;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcme;->zze(Lcom/google/android/gms/internal/zzcme;)V

    return-void
.end method
