.class final Lcom/google/android/gms/internal/zzclw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic zzb:Lcom/google/android/gms/internal/zzclk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclk;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclw;->zzb:Lcom/google/android/gms/internal/zzclk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzclw;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclw;->zzb:Lcom/google/android/gms/internal/zzclk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzi()Lcom/google/android/gms/internal/zzcme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclw;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcme;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
