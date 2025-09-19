.class final Lcom/google/android/gms/internal/zzcle;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/zzcnn;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zza:Lcom/google/android/gms/internal/zzcif;

.field private synthetic zzb:Lcom/google/android/gms/internal/zzcko;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcif;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcle;->zzb:Lcom/google/android/gms/internal/zzcko;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcle;->zza:Lcom/google/android/gms/internal/zzcif;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcle;->zzb:Lcom/google/android/gms/internal/zzcko;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcko;->zza(Lcom/google/android/gms/internal/zzcko;)Lcom/google/android/gms/internal/zzckj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzag()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcle;->zzb:Lcom/google/android/gms/internal/zzcko;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcko;->zza(Lcom/google/android/gms/internal/zzcko;)Lcom/google/android/gms/internal/zzckj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzq()Lcom/google/android/gms/internal/zzcil;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcle;->zza:Lcom/google/android/gms/internal/zzcif;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcif;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcil;->zza(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
