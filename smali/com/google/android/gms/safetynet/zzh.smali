.class public final Lcom/google/android/gms/safetynet/zzh;
.super Lcom/google/android/gms/internal/zzbgl;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/safetynet/zzh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:I
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation
.end field

.field private zzb:Z
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/safetynet/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/safetynet/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/safetynet/zzh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput p1, p0, Lcom/google/android/gms/safetynet/zzh;->zza:I

    iput-boolean p2, p0, Lcom/google/android/gms/safetynet/zzh;->zzb:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/safetynet/zzh;->zza:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lcom/google/android/gms/safetynet/zzh;->zzb:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I)V

    return-void
.end method
