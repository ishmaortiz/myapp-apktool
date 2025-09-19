.class abstract Lcom/google/android/gms/internal/zzcli;
.super Lcom/google/android/gms/internal/zzclh;


# instance fields
.field private zza:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzclh;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcli;->zzp:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzckj;->zza(Lcom/google/android/gms/internal/zzcli;)V

    return-void
.end method


# virtual methods
.method protected p_()V
    .locals 0
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    return-void
.end method

.method final zzap()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcli;->zza:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzaq()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzap()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final zzar()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcli;->zza:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->zzw()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcli;->zzp:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzaf()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcli;->zza:Z

    :cond_1
    return-void
.end method

.method public final zzas()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcli;->zza:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcli;->p_()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcli;->zzp:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzaf()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcli;->zza:Z

    return-void
.end method

.method protected abstract zzw()Z
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation
.end method
