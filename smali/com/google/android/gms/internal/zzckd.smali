.class public final Lcom/google/android/gms/internal/zzckd;
.super Lcom/google/android/gms/internal/zzcli;


# static fields
.field private static zza:I = 0xffff

.field private static zzb:I = 0x2


# instance fields
.field private final zzc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcny;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzckj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckd;->zzc:Ljava/util/Map;

    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckd;->zzd:Ljava/util/Map;

    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckd;->zze:Ljava/util/Map;

    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckd;->zzf:Ljava/util/Map;

    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckd;->zzh:Ljava/util/Map;

    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckd;->zzg:Ljava/util/Map;

    return-void
.end method

.method private final zza(Ljava/lang/String;[B)Lcom/google/android/gms/internal/zzcny;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    if-nez p2, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzcny;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzcny;-><init>()V

    return-object p1

    :cond_0
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/zzflj;->zza([BII)Lcom/google/android/gms/internal/zzflj;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/zzcny;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcny;-><init>()V

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflj;)Lcom/google/android/gms/internal/zzfls;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzae()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string v1, "Parsed config. version, gmp_app_id"

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcny;->zza:Ljava/lang/Long;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcny;->zzb:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, v3}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzaa()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Unable to merge remote config. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcjj;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/internal/zzcny;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzcny;-><init>()V

    return-object p1
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcny;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcny;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcny;->zzc:[Lcom/google/android/gms/internal/zzcnz;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcny;->zzc:[Lcom/google/android/gms/internal/zzcnz;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcnz;->zza:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcnz;->zzb:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcny;)V
    .locals 9

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v2, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V

    if-eqz p2, :cond_5

    iget-object v3, p2, Lcom/google/android/gms/internal/zzcny;->zzd:[Lcom/google/android/gms/internal/zzcnx;

    if-eqz v3, :cond_5

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcny;->zzd:[Lcom/google/android/gms/internal/zzcnx;

    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, p2, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcnx;->zza:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjj;->zzaa()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v5

    const-string v6, "EventConfig contained null event name"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object v6, v5, Lcom/google/android/gms/internal/zzcnx;->zza:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iput-object v6, v5, Lcom/google/android/gms/internal/zzcnx;->zza:Ljava/lang/String;

    :cond_1
    iget-object v6, v5, Lcom/google/android/gms/internal/zzcnx;->zza:Ljava/lang/String;

    iget-object v7, v5, Lcom/google/android/gms/internal/zzcnx;->zzb:Ljava/lang/Boolean;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcnx;->zza:Ljava/lang/String;

    iget-object v7, v5, Lcom/google/android/gms/internal/zzcnx;->zzc:Ljava/lang/Boolean;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcnx;->zzd:Ljava/lang/Integer;

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcnx;->zzd:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Lcom/google/android/gms/internal/zzckd;->zzb:I

    if-lt v6, v7, :cond_3

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcnx;->zzd:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Lcom/google/android/gms/internal/zzckd;->zza:I

    if-le v6, v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, v5, Lcom/google/android/gms/internal/zzcnx;->zza:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcnx;->zzd:Ljava/lang/Integer;

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcjj;->zzaa()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v6

    const-string v7, "Invalid sampling rate. Event name, sample rate"

    iget-object v8, v5, Lcom/google/android/gms/internal/zzcnx;->zza:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcnx;->zzd:Ljava/lang/Integer;

    invoke-virtual {v6, v7, v8, v5}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/google/android/gms/internal/zzckd;->zzd:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzckd;->zze:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzckd;->zzg:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zze(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zza(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzn()Lcom/google/android/gms/internal/zzcil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcil;->zzd(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zze:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzf:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzh:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzg:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzckd;->zza(Ljava/lang/String;[B)Lcom/google/android/gms/internal/zzcny;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckd;->zzc:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzckd;->zza(Lcom/google/android/gms/internal/zzcny;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzckd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcny;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzckd;->zzf:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzh:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method protected final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcny;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zza(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzckd;->zze(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzcny;

    return-object p1
.end method

.method final zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzckd;->zze(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzc:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic zza()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zza()V

    return-void
.end method

.method protected final zza(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 17
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->zza(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/internal/zzckd;->zza(Ljava/lang/String;[B)Lcom/google/android/gms/internal/zzcny;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzckd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcny;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/zzckd;->zzf:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzckd;->zzh:Ljava/util/Map;

    move-object/from16 v6, p3

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzckd;->zzc:Ljava/util/Map;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzckd;->zza(Lcom/google/android/gms/internal/zzcny;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zze()Lcom/google/android/gms/internal/zzcih;

    move-result-object v5

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcny;->zze:[Lcom/google/android/gms/internal/zzcnr;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/zzbq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v7, v6

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_7

    aget-object v9, v6, v8

    iget-object v10, v9, Lcom/google/android/gms/internal/zzcnr;->zzc:[Lcom/google/android/gms/internal/zzcns;

    array-length v11, v10

    move v12, v4

    :goto_1
    if-ge v12, v11, :cond_4

    aget-object v13, v10, v12

    iget-object v14, v13, Lcom/google/android/gms/internal/zzcns;->zzb:Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/gms/measurement/AppMeasurement$Event;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    iput-object v14, v13, Lcom/google/android/gms/internal/zzcns;->zzb:Ljava/lang/String;

    :cond_1
    iget-object v13, v13, Lcom/google/android/gms/internal/zzcns;->zzc:[Lcom/google/android/gms/internal/zzcnt;

    array-length v14, v13

    move v15, v4

    :goto_2
    if-ge v15, v14, :cond_3

    aget-object v4, v13, v15

    move/from16 v16, v7

    iget-object v7, v4, Lcom/google/android/gms/internal/zzcnt;->zzd:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/measurement/AppMeasurement$Param;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    iput-object v7, v4, Lcom/google/android/gms/internal/zzcnt;->zzd:Ljava/lang/String;

    :cond_2
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v16

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    move/from16 v16, v7

    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    move/from16 v16, v7

    iget-object v4, v9, Lcom/google/android/gms/internal/zzcnr;->zzb:[Lcom/google/android/gms/internal/zzcnv;

    array-length v7, v4

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v7, :cond_6

    aget-object v10, v4, v9

    iget-object v11, v10, Lcom/google/android/gms/internal/zzcnv;->zzb:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/measurement/AppMeasurement$UserProperty;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    iput-object v11, v10, Lcom/google/android/gms/internal/zzcnv;->zzb:Ljava/lang/String;

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v16

    const/4 v4, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzclh;->zzn()Lcom/google/android/gms/internal/zzcil;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/internal/zzcil;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcnr;)V

    const/4 v4, 0x0

    :try_start_0
    iput-object v4, v3, Lcom/google/android/gms/internal/zzcny;->zze:[Lcom/google/android/gms/internal/zzcnr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfls;->zzf()I

    move-result v4

    new-array v4, v4, [B

    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/zzflk;->zza([BII)Lcom/google/android/gms/internal/zzflk;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzfls;->zza(Lcom/google/android/gms/internal/zzflk;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjj;->zzaa()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v4

    const-string v5, "Unable to serialize reduced-size config. Storing full config instead. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcjj;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v4, p2

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzn()Lcom/google/android/gms/internal/zzcil;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->zza(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "remote_config"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcil;->zzaa()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "apps"

    const-string v8, "app_id = ?"

    new-array v9, v4, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjj;->zzy()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v5

    const-string v6, "Failed to update remote config (got 0). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcjj;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    return v4

    :catch_1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjj;->zzy()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v3

    const-string v6, "Error storing remote config. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzcjj;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v6, v2, v5}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return v4
.end method

.method protected final zzb(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final bridge synthetic zzb()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzb()V

    return-void
.end method

.method final zzb(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzckd;->zze(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzp()Lcom/google/android/gms/internal/zzcno;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcno;->zzk(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcno;->zzh(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzp()Lcom/google/android/gms/internal/zzcno;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcno;->zzl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzcno;->zza(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public final bridge synthetic zzc()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzc()V

    return-void
.end method

.method protected final zzc(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzh:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final zzc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzckd;->zze(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zze:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method final zzd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzckd;->zze(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/internal/zzcia;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzd()Lcom/google/android/gms/internal/zzcia;

    move-result-object v0

    return-object v0
.end method

.method final zzd(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckd;->zzf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/internal/zzcih;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zze()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/internal/zzclk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzf()Lcom/google/android/gms/internal/zzclk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/internal/zzcje;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzg()Lcom/google/android/gms/internal/zzcje;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/internal/zzcir;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzh()Lcom/google/android/gms/internal/zzcir;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/internal/zzcme;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzi()Lcom/google/android/gms/internal/zzcme;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/internal/zzcma;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzj()Lcom/google/android/gms/internal/zzcma;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/common/util/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzk()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzl()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/internal/zzcjf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzm()Lcom/google/android/gms/internal/zzcjf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Lcom/google/android/gms/internal/zzcil;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzn()Lcom/google/android/gms/internal/zzcil;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/internal/zzcjh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzo()Lcom/google/android/gms/internal/zzcjh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/internal/zzcno;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzp()Lcom/google/android/gms/internal/zzcno;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/internal/zzckd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzq()Lcom/google/android/gms/internal/zzckd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/internal/zzcnd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzr()Lcom/google/android/gms/internal/zzcnd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/internal/zzcke;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzs()Lcom/google/android/gms/internal/zzcke;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/internal/zzcjj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/internal/zzcju;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzu()Lcom/google/android/gms/internal/zzcju;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzv()Lcom/google/android/gms/internal/zzcik;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzv()Lcom/google/android/gms/internal/zzcik;

    move-result-object v0

    return-object v0
.end method

.method protected final zzw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
