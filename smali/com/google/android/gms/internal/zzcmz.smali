.class final synthetic Lcom/google/android/gms/internal/zzcmz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/zzcmy;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/zzcjj;

.field private final zzd:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcmy;ILcom/google/android/gms/internal/zzcjj;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcmz;->zza:Lcom/google/android/gms/internal/zzcmy;

    iput p2, p0, Lcom/google/android/gms/internal/zzcmz;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcmz;->zzc:Lcom/google/android/gms/internal/zzcjj;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcmz;->zzd:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmz;->zza:Lcom/google/android/gms/internal/zzcmy;

    iget v1, p0, Lcom/google/android/gms/internal/zzcmz;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcmz;->zzc:Lcom/google/android/gms/internal/zzcjj;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcmz;->zzd:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcmy;->zza(ILcom/google/android/gms/internal/zzcjj;Landroid/content/Intent;)V

    return-void
.end method
