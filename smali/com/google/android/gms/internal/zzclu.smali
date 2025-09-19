.class final Lcom/google/android/gms/internal/zzclu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic zzb:Z

.field private synthetic zzc:Lcom/google/android/gms/internal/zzclk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclk;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclu;->zzc:Lcom/google/android/gms/internal/zzclk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzclu;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzclu;->zzb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclu;->zzc:Lcom/google/android/gms/internal/zzclk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzclh;->zzi()Lcom/google/android/gms/internal/zzcme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzclu;->zza:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzclu;->zzb:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcme;->zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-void
.end method
