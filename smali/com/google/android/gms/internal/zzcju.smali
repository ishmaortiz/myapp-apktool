.class final Lcom/google/android/gms/internal/zzcju;
.super Lcom/google/android/gms/internal/zzcli;


# static fields
.field static final zza:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public zzb:Lcom/google/android/gms/internal/zzcjy;

.field public final zzc:Lcom/google/android/gms/internal/zzcjx;

.field public final zzd:Lcom/google/android/gms/internal/zzcjx;

.field public final zze:Lcom/google/android/gms/internal/zzcjx;

.field public final zzf:Lcom/google/android/gms/internal/zzcjx;

.field public final zzg:Lcom/google/android/gms/internal/zzcjx;

.field public final zzh:Lcom/google/android/gms/internal/zzcjx;

.field public final zzi:Lcom/google/android/gms/internal/zzcjz;

.field public final zzj:Lcom/google/android/gms/internal/zzcjx;

.field public final zzk:Lcom/google/android/gms/internal/zzcjx;

.field public final zzl:Lcom/google/android/gms/internal/zzcjw;

.field public final zzm:Lcom/google/android/gms/internal/zzcjx;

.field public final zzn:Lcom/google/android/gms/internal/zzcjx;

.field public zzo:Z

.field private zzq:Landroid/content/SharedPreferences;

.field private zzr:Ljava/lang/String;

.field private zzs:Z

.field private zzt:J

.field private zzu:Ljava/lang/String;

.field private zzv:J

.field private final zzw:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/Pair;

    const-string v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/zzcju;->zza:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzckj;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    new-instance p1, Lcom/google/android/gms/internal/zzcjx;

    const-string v0, "last_upload"

    const-wide/16 v1, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcjx;-><init>(Lcom/google/android/gms/internal/zzcju;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzc:Lcom/google/android/gms/internal/zzcjx;

    new-instance p1, Lcom/google/android/gms/internal/zzcjx;

    const-string v0, "last_upload_attempt"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcjx;-><init>(Lcom/google/android/gms/internal/zzcju;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzd:Lcom/google/android/gms/internal/zzcjx;

    new-instance p1, Lcom/google/android/gms/internal/zzcjx;

    const-string v0, "backoff"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcjx;-><init>(Lcom/google/android/gms/internal/zzcju;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zze:Lcom/google/android/gms/internal/zzcjx;

    new-instance p1, Lcom/google/android/gms/internal/zzcjx;

    const-string v0, "last_delete_stale"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcjx;-><init>(Lcom/google/android/gms/internal/zzcju;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzf:Lcom/google/android/gms/internal/zzcjx;

    new-instance p1, Lcom/google/android/gms/internal/zzcjx;

    const-string v0, "time_before_start"

    const-wide/16 v3, 0x2710

    invoke-direct {p1, p0, v0, v3, v4}, Lcom/google/android/gms/internal/zzcjx;-><init>(Lcom/google/android/gms/internal/zzcju;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzj:Lcom/google/android/gms/internal/zzcjx;

    new-instance p1, Lcom/google/android/gms/internal/zzcjx;

    const-string v0, "session_timeout"

    const-wide/32 v3, 0x1b7740

    invoke-direct {p1, p0, v0, v3, v4}, Lcom/google/android/gms/internal/zzcjx;-><init>(Lcom/google/android/gms/internal/zzcju;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzk:Lcom/google/android/gms/internal/zzcjx;

    new-instance p1, Lcom/google/android/gms/internal/zzcjw;

    const-string v0, "start_new_session"

    const/4 v3, 0x1

    invoke-direct {p1, p0, v0, v3}, Lcom/google/android/gms/internal/zzcjw;-><init>(Lcom/google/android/gms/internal/zzcju;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzl:Lcom/google/android/gms/internal/zzcjw;

    new-instance p1, Lcom/google/android/gms/internal/zzcjx;

    const-string v0, "last_pause_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcjx;-><init>(Lcom/google/android/gms/internal/zzcju;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzm:Lcom/google/android/gms/internal/zzcjx;

    new-instance p1, Lcom/google/android/gms/internal/zzcjx;

    const-string v0, "time_active"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcjx;-><init>(Lcom/google/android/gms/internal/zzcju;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzn:Lcom/google/android/gms/internal/zzcjx;

    new-instance p1, Lcom/google/android/gms/internal/zzcjx;

    const-string v0, "midnight_offset"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcjx;-><init>(Lcom/google/android/gms/internal/zzcju;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzg:Lcom/google/android/gms/internal/zzcjx;

    new-instance p1, Lcom/google/android/gms/internal/zzcjx;

    const-string v0, "first_open_time"

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzcjx;-><init>(Lcom/google/android/gms/internal/zzcju;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzh:Lcom/google/android/gms/internal/zzcjx;

    new-instance p1, Lcom/google/android/gms/internal/zzcjz;

    const-string v0, "app_instance_id"

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/zzcjz;-><init>(Lcom/google/android/gms/internal/zzcju;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzi:Lcom/google/android/gms/internal/zzcjz;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzw:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcju;)Landroid/content/SharedPreferences;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcju;->zzad()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private final zzad()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcju;->zzq:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method protected final p_()V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcju;->zzq:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcju;->zzq:Landroid/content/SharedPreferences;

    const-string v1, "has_been_opened"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcju;->zzo:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcju;->zzo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcju;->zzq:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "has_been_opened"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzcjy;

    const-string v5, "health_monitor"

    const-wide/16 v1, 0x0

    sget-object v3, Lcom/google/android/gms/internal/zzciz;->zzi:Lcom/google/android/gms/internal/zzcja;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcja;->zzb()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzcjy;-><init>(Lcom/google/android/gms/internal/zzcju;Ljava/lang/String;JLcom/google/android/gms/internal/zzcjv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcju;->zzb:Lcom/google/android/gms/internal/zzcjy;

    return-void
.end method

.method final zza(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzk()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->zzb()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcju;->zzr:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcju;->zzt:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcju;->zzr:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcju;->zzs:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzv()Lcom/google/android/gms/internal/zzcik;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzciz;->zzh:Lcom/google/android/gms/internal/zzcja;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/zzcik;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcja;)J

    move-result-wide v2

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/zzcju;->zzt:J

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcju;->zzr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcju;->zzs:Z

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzr:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzad()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Unable to get advertising id"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzr:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcju;->zzr:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcju;->zzs:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method final zza(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzae()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Setting useService"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcju;->zzad()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "use_service"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzaa()Ljava/lang/Boolean;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcju;->zzad()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_service"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcju;->zzad()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_service"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method final zzab()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzae()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Clearing collection preferences."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcju;->zzad()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzcju;->zzc(Z)Z

    move-result v1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcju;->zzad()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzcju;->zzb(Z)V

    :cond_1
    return-void
.end method

.method protected final zzac()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcju;->zzad()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "previous_os_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzh()Lcom/google/android/gms/internal/zzcir;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcju;->zzad()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "previous_os_version"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method

.method final zzb(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcju;->zza(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "MD5"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcno;->zzf(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%032X"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-direct {v6, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final zzb(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzae()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Setting measurementEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcju;->zzad()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzc(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcju;->zzad()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gmp_app_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final zzc(Z)Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcju;->zzad()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method final zzd(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcju;->zzw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcju;->zzu:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzk()Lcom/google/android/gms/common/util/zze;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zze;->zzb()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/zzcju;->zzv:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final zzw()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final zzy()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcju;->zzad()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gmp_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzz()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcju;->zzw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzk()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->zzb()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzcju;->zzv:J

    sub-long v5, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcju;->zzu:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
