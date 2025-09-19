.class final Lcom/google/android/gms/internal/zzclx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/internal/zzclk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclx;->zza:Lcom/google/android/gms/internal/zzclk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclx;->zza:Lcom/google/android/gms/internal/zzclk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzad()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Resetting analytics data (FE)"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzi()Lcom/google/android/gms/internal/zzcme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcme;->zzaa()V

    return-void
.end method
