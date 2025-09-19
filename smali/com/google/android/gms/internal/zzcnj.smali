.class public final Lcom/google/android/gms/internal/zzcnj;
.super Lcom/google/android/gms/internal/zzcli;


# instance fields
.field private final zza:Landroid/app/AlarmManager;

.field private final zzb:Lcom/google/android/gms/internal/zzcip;

.field private zzc:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzckj;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcli;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcnj;->zza:Landroid/app/AlarmManager;

    new-instance v0, Lcom/google/android/gms/internal/zzcnk;

    invoke-direct {v0, p0, p1, p1}, Lcom/google/android/gms/internal/zzcnk;-><init>(Lcom/google/android/gms/internal/zzcnj;Lcom/google/android/gms/internal/zzckj;Lcom/google/android/gms/internal/zzckj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcnj;->zzb:Lcom/google/android/gms/internal/zzcip;

    return-void
.end method

.method private final zzaa()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnj;->zzc:Ljava/lang/Integer;

    if-nez v0, :cond_1

    const-string v0, "measurement"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcnj;->zzc:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnj;->zzc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private final zzab()Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private final zzz()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjj;->zzae()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v1

    const-string v2, "Cancelling job. JobID"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcnj;->zzaa()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcnj;->zzaa()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcli;->zza()V

    return-void
.end method

.method public final zza(J)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcka;->zza(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzad()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Receiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcmy;->zza(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzad()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Service not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcnj;->zzy()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzk()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->zzb()J

    move-result-wide v0

    add-long v4, v0, p1

    const-wide/16 v0, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzciz;->zzad:Lcom/google/android/gms/internal/zzcja;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcja;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnj;->zzb:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcip;->zzb()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzae()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Scheduling upload with DelayedRunnable"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnj;->zzb:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzcip;->zza(J)V

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzae()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Scheduling upload with JobScheduler"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzl()Landroid/content/Context;

    move-result-object v1

    const-string v2, "jobscheduler"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcnj;->zzaa()I

    move-result v3

    invoke-direct {v2, v3, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    const/4 v0, 0x1

    shl-long/2addr p1, v0

    invoke-virtual {v2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    new-instance p1, Landroid/os/PersistableBundle;

    invoke-direct {p1}, Landroid/os/PersistableBundle;-><init>()V

    const-string p2, "action"

    const-string v0, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {p1, p2, v0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcjj;->zzae()Lcom/google/android/gms/internal/zzcjl;

    move-result-object p2

    const-string v0, "Scheduling job. JobID"

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcnj;->zzaa()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzclh;->zzt()Lcom/google/android/gms/internal/zzcjj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjj;->zzae()Lcom/google/android/gms/internal/zzcjl;

    move-result-object v0

    const-string v1, "Scheduling upload with AlarmManager"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjl;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcnj;->zza:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    sget-object v0, Lcom/google/android/gms/internal/zzciz;->zzy:Lcom/google/android/gms/internal/zzcja;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcja;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcnj;->zzab()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
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
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnj;->zza:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcnj;->zzab()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcnj;->zzz()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzy()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzaq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnj;->zza:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcnj;->zzab()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnj;->zzb:Lcom/google/android/gms/internal/zzcip;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcip;->zzc()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcnj;->zzz()V

    :cond_0
    return-void
.end method
