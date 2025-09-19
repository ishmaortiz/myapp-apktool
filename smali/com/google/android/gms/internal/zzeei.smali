.class final Lcom/google/android/gms/internal/zzeei;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/android/gms/internal/zzeej;",
        ">;"
    }
.end annotation


# instance fields
.field private zza:I

.field private synthetic zzb:Lcom/google/android/gms/internal/zzeeh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzeeh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeei;->zzb:Lcom/google/android/gms/internal/zzeeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeei;->zzb:Lcom/google/android/gms/internal/zzeeh;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeeh;->zza(Lcom/google/android/gms/internal/zzeeh;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzeei;->zza:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzeei;->zza:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeei;->zzb:Lcom/google/android/gms/internal/zzeeh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeeh;->zzb(Lcom/google/android/gms/internal/zzeeh;)J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/zzeei;->zza:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    int-to-long v4, v2

    and-long v6, v0, v4

    new-instance v0, Lcom/google/android/gms/internal/zzeej;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzeej;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v4, v6, v1

    if-nez v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzeej;->zza:Z

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    iget v4, p0, Lcom/google/android/gms/internal/zzeei;->zza:I

    int-to-double v4, v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lcom/google/android/gms/internal/zzeej;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/zzeei;->zza:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/zzeei;->zza:I

    return-object v0
.end method

.method public final remove()V
    .locals 0

    return-void
.end method
