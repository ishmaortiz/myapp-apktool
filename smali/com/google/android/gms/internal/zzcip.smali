.class abstract Lcom/google/android/gms/internal/zzcip;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# static fields
.field private static volatile zzb:Landroid/os/Handler;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/zzckj;

.field private final zzc:Ljava/lang/Runnable;

.field private volatile zzd:J

.field private zze:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcip;->zza:Lcom/google/android/gms/internal/zzckj;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcip;->zze:Z

    new-instance v0, Lcom/google/android/gms/internal/zzciq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzciq;-><init>(Lcom/google/android/gms/internal/zzcip;Lcom/google/android/gms/internal/zzckj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcip;->zzc:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcip;J)J
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcip;->zzd:J

    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcip;)Lcom/google/android/gms/internal/zzckj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcip;->zza:Lcom/google/android/gms/internal/zzckj;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcip;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzcip;->zze:Z

    return p0
.end method

.method private final zzd()Landroid/os/Handler;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzcip;->zzb:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzcip;->zzb:Landroid/os/Handler;

    return-object v0

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/zzcip;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzcip;->zzb:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcip;->zza:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzckj;->zzt()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gms/internal/zzcip;->zzb:Landroid/os/Handler;

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/zzcip;->zzb:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public abstract zza()V
.end method

.method public final zza(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcip;->zzc()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcip;->zza:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzu()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->zza()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcip;->zzd:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcip;->zzd()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcip;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcip;->zza:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzf()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzy()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Failed to schedule delayed post. time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzb()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcip;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcip;->zzd:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcip;->zzd()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcip;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
