.class final Lcom/google/android/gms/internal/zzcic;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Ljava/lang/String;

.field private synthetic zzb:J

.field private synthetic zzc:Lcom/google/android/gms/internal/zzcia;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcia;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcic;->zzc:Lcom/google/android/gms/internal/zzcia;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcic;->zza:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcic;->zzb:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzc:Lcom/google/android/gms/internal/zzcia;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcic;->zza:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcic;->zzb:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcia;->zzb(Lcom/google/android/gms/internal/zzcia;Ljava/lang/String;J)V

    return-void
.end method
