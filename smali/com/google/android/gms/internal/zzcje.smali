.class public final Lcom/google/android/gms/internal/zzcje;
.super Lcom/google/android/gms/internal/zzcli;


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:J

.field private zzh:I

.field private zzi:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    return-void
.end method

.method private final zzad()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzaa()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final p_()V
    .locals 10

    const-string v0, "unknown"

    const-string v1, "Unknown"

    const-string v2, "Unknown"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjj;->zzy()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v4

    const-string v7, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcjj;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcjj;->zzy()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v7

    const-string v8, "Error retrieving app installer package name. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcjj;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "manual_install"

    goto :goto_1

    :cond_1
    const-string v7, "com.android.vending"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v0, ""

    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    :cond_3
    iget-object v4, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget v1, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move v6, v1

    move-object v1, v4

    goto :goto_2

    :catch_1
    move-object v1, v4

    :catch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjj;->zzy()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v4

    const-string v7, "Error retrieving package info. appId, appName"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcjj;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v7, v8, v2}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    iput-object v3, p0, Lcom/google/android/gms/internal/zzcje;->zza:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcje;->zzd:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzcje;->zzb:Ljava/lang/String;

    iput v6, p0, Lcom/google/android/gms/internal/zzcje;->zzc:I

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcje;->zze:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcje;->zzf:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zzbz;->zza(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v4

    goto :goto_3

    :cond_5
    move v6, v5

    :goto_3
    if-nez v6, :cond_7

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzy()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v7, "GoogleService failed to initialize (no status)"

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcjj;->zzy()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v7

    const-string v8, "GoogleService failed to initialize, status"

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v9, v2}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_4
    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzv()Lcom/google/android/gms/internal/zzcik;

    move-result-object v2

    const-string v6, "firebase_analytics_collection_enabled"

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/zzcik;->zzb(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzv()Lcom/google/android/gms/internal/zzcik;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcik;->zzx()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzac()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v4, "Collection disabled with firebase_analytics_collection_deactivated=1"

    :goto_5
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzac()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v4, "Collection disabled with firebase_analytics_collection_enabled=0"

    goto :goto_5

    :cond_9
    if-nez v2, :cond_a

    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzbz;->zzb()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzac()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v4, "Collection disabled with google_app_measurement_enable=0"

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjj;->zzae()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v2

    const-string v6, "Collection enabled"

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    :goto_6
    move v4, v5

    :goto_7
    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcje;->zzi:Ljava/lang/String;

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcje;->zzg:J

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzbz;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, ""

    :cond_c
    iput-object v0, p0, Lcom/google/android/gms/internal/zzcje;->zzi:Ljava/lang/String;

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzae()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "App package, google app id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcje;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcje;->zzi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzy()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "getGoogleAppId or isMeasurementEnabled failed with exception. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzcjj;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    :goto_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbif;->zza(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzcje;->zzh:I

    return-void

    :cond_e
    iput v5, p0, Lcom/google/android/gms/internal/zzcje;->zzh:I

    return-void
.end method

.method final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcif;
    .locals 23
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    new-instance v22, Lcom/google/android/gms/internal/zzcif;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcje;->zzz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcje;->zzaa()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcje;->zzb:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcje;->zzab()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    iget-object v7, v0, Lcom/google/android/gms/internal/zzcje;->zzd:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzc()V

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzcje;->zzf:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcje;->zzp:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzckj;->zzo()Lcom/google/android/gms/internal/zzcno;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/zzcno;->zzb(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/google/android/gms/internal/zzcje;->zzf:J

    :cond_0
    iget-wide v10, v0, Lcom/google/android/gms/internal/zzcje;->zzf:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcje;->zzp:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzckj;->zzab()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzu()Lcom/google/android/gms/internal/zzcju;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzcju;->zzo:Z

    const/4 v8, 0x1

    xor-int/lit8 v14, v1, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcje;->zzad()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    const-wide/16 v16, 0x0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcje;->zzp:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzckj;->zzac()J

    move-result-wide v18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcje;->zzac()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzclh;->zzv()Lcom/google/android/gms/internal/zzcik;

    move-result-object v1

    const-string v9, "google_analytics_adid_collection_enabled"

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/zzcik;->zzb(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :cond_2
    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    const-wide/16 v8, 0x2fb2

    move-object/from16 v1, v22

    move-object/from16 v12, p1

    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/internal/zzcif;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    return-object v22
.end method

.method public final bridge synthetic zza()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zza()V

    return-void
.end method

.method final zzaa()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcje;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method final zzab()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    iget v0, p0, Lcom/google/android/gms/internal/zzcje;->zzc:I

    return v0
.end method

.method final zzac()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    iget v0, p0, Lcom/google/android/gms/internal/zzcje;->zzh:I

    return v0
.end method

.method public final bridge synthetic zzb()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzb()V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzc()V

    return-void
.end method

.method public final bridge synthetic zzd()Lcom/google/android/gms/internal/zzcia;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zzd()Lcom/google/android/gms/internal/zzcia;

    move-result-object v0

    return-object v0
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

    const/4 v0, 0x1

    return v0
.end method

.method final zzy()Ljava/lang/String;
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzp()Lcom/google/android/gms/internal/zzcno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcno;->zzz()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%032x"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 v0, 0x0

    aput-object v5, v4, v0

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzz()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcje;->zza:Ljava/lang/String;

    return-object v0
.end method
