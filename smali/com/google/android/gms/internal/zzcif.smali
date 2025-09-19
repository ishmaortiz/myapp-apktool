.class public final Lcom/google/android/gms/internal/zzcif;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcif;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;

.field public final zze:J

.field public final zzf:J

.field public final zzg:Ljava/lang/String;

.field public final zzh:Z

.field public final zzi:Z

.field public final zzj:J

.field public final zzk:Ljava/lang/String;

.field public final zzl:J

.field public final zzm:J

.field public final zzn:I

.field public final zzo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcig;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcig;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcif;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V
    .locals 3

    move-object v0, p0

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcif;->zza:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/zzcif;->zzb:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcif;->zzc:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcif;->zzj:J

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcif;->zzd:Ljava/lang/String;

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcif;->zze:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcif;->zzf:J

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcif;->zzg:Ljava/lang/String;

    move v1, p12

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzcif;->zzh:Z

    move/from16 v1, p13

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzcif;->zzi:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcif;->zzk:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcif;->zzl:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcif;->zzm:J

    move/from16 v1, p19

    iput v1, v0, Lcom/google/android/gms/internal/zzcif;->zzn:I

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzcif;->zzo:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZ)V
    .locals 3

    move-object v0, p0

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcif;->zza:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcif;->zzb:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcif;->zzc:Ljava/lang/String;

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcif;->zzj:J

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcif;->zzd:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcif;->zze:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcif;->zzf:J

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcif;->zzg:Ljava/lang/String;

    move v1, p10

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzcif;->zzh:Z

    move v1, p11

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzcif;->zzi:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/zzcif;->zzk:Ljava/lang/String;

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcif;->zzl:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzcif;->zzm:J

    move/from16 v1, p19

    iput v1, v0, Lcom/google/android/gms/internal/zzcif;->zzn:I

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzcif;->zzo:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcif;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcif;->zzb:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcif;->zzc:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcif;->zzd:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcif;->zze:J

    const/4 v0, 0x6

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcif;->zzf:J

    const/4 v0, 0x7

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcif;->zzg:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcif;->zzh:Z

    const/16 v2, 0x9

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcif;->zzi:Z

    const/16 v2, 0xa

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcif;->zzj:J

    const/16 v0, 0xb

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcif;->zzk:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcif;->zzl:J

    const/16 v2, 0xd

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcif;->zzm:J

    const/16 v2, 0xe

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IJ)V

    iget v0, p0, Lcom/google/android/gms/internal/zzcif;->zzn:I

    const/16 v1, 0xf

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcif;->zzo:Z

    const/16 v1, 0x10

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I)V

    return-void
.end method
