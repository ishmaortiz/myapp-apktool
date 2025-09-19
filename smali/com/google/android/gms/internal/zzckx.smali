.class final Lcom/google/android/gms/internal/zzckx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/zzcii;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zza:Ljava/lang/String;

.field private synthetic zzb:Ljava/lang/String;

.field private synthetic zzc:Ljava/lang/String;

.field private synthetic zzd:Lcom/google/android/gms/internal/zzcko;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcko;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckx;->zzd:Lcom/google/android/gms/internal/zzcko;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckx;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzckx;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzckx;->zzc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzd:Lcom/google/android/gms/internal/zzcko;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcko;->zza(Lcom/google/android/gms/internal/zzcko;)Lcom/google/android/gms/internal/zzckj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzag()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckx;->zzd:Lcom/google/android/gms/internal/zzcko;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcko;->zza(Lcom/google/android/gms/internal/zzcko;)Lcom/google/android/gms/internal/zzckj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzq()Lcom/google/android/gms/internal/zzcil;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckx;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckx;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzckx;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcil;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
