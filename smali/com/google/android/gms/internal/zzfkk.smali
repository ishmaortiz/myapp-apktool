.class public final Lcom/google/android/gms/internal/zzfkk;
.super Lcom/google/android/gms/internal/zzfhu;

# interfaces
.implements Lcom/google/android/gms/internal/zzfje;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfkk$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfhu<",
        "Lcom/google/android/gms/internal/zzfkk;",
        "Lcom/google/android/gms/internal/zzfkk$zza;",
        ">;",
        "Lcom/google/android/gms/internal/zzfje;"
    }
.end annotation


# static fields
.field private static final zzf:Lcom/google/android/gms/internal/zzfkk;

.field private static volatile zzg:Lcom/google/android/gms/internal/zzfjl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfjl<",
            "Lcom/google/android/gms/internal/zzfkk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzd:J

.field private zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzfkk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzfkk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzfkk;->zzf:Lcom/google/android/gms/internal/zzfkk;

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzf:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzfhu;->zzb:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfko;->zzc()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhu;-><init>()V

    return-void
.end method

.method private final zza(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzfkk;->zze:I

    return-void
.end method

.method private final zza(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzfkk;->zzd:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfkk;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfkk;->zza(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfkk;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzfkk;->zza(J)V

    return-void
.end method

.method public static zzd()Lcom/google/android/gms/internal/zzfkk$zza;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/zzfkk;->zzf:Lcom/google/android/gms/internal/zzfkk;

    sget v1, Lcom/google/android/gms/internal/zzfhu$zzg;->zzh:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zzfhu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzfhu$zza;

    check-cast v0, Lcom/google/android/gms/internal/zzfkk$zza;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/zzfkk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfkk;->zzf:Lcom/google/android/gms/internal/zzfkk;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/android/gms/internal/zzfkk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzfkk;->zzf:Lcom/google/android/gms/internal/zzfkk;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/zzfkk;->zzc:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfkk;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfkk;->zzd:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzfhg;->zzc(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/zzfkk;->zze:I

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/zzfkk;->zze:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzfhg;->zze(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfkk;->zzb:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfko;->zze()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/zzfkk;->zzc:I

    return v0
.end method

.method protected final zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lcom/google/android/gms/internal/zzfkl;->zza:[I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/zzfkk;->zzg:Lcom/google/android/gms/internal/zzfjl;

    if-nez p1, :cond_1

    const-class p1, Lcom/google/android/gms/internal/zzfkk;

    monitor-enter p1

    :try_start_0
    sget-object p2, Lcom/google/android/gms/internal/zzfkk;->zzg:Lcom/google/android/gms/internal/zzfjl;

    if-nez p2, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/zzfhu$zzb;

    sget-object p3, Lcom/google/android/gms/internal/zzfkk;->zzf:Lcom/google/android/gms/internal/zzfkk;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/zzfhu$zzb;-><init>(Lcom/google/android/gms/internal/zzfhu;)V

    sput-object p2, Lcom/google/android/gms/internal/zzfkk;->zzg:Lcom/google/android/gms/internal/zzfjl;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/zzfkk;->zzg:Lcom/google/android/gms/internal/zzfjl;

    return-object p1

    :pswitch_3
    check-cast p2, Lcom/google/android/gms/internal/zzfhb;

    check-cast p3, Lcom/google/android/gms/internal/zzfhm;

    if-nez p3, :cond_2

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_2
    move p1, v2

    :cond_3
    :goto_1
    if-nez p1, :cond_9

    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfhb;->zza()I

    move-result p3

    if-eqz p3, :cond_8

    const/16 v0, 0x8

    if-eq p3, v0, :cond_7

    const/16 v0, 0x10

    if-eq p3, v0, :cond_6

    and-int/lit8 v0, p3, 0x7

    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    move p3, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzb:Lcom/google/android/gms/internal/zzfko;

    invoke-static {}, Lcom/google/android/gms/internal/zzfko;->zza()Lcom/google/android/gms/internal/zzfko;

    move-result-object v3

    if-ne v0, v3, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzfko;->zzb()Lcom/google/android/gms/internal/zzfko;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzb:Lcom/google/android/gms/internal/zzfko;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhu;->zzb:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0, p3, p2}, Lcom/google/android/gms/internal/zzfko;->zza(ILcom/google/android/gms/internal/zzfhb;)Z

    move-result p3

    :goto_2
    if-nez p3, :cond_3

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfhb;->zzf()I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/zzfkk;->zze:I

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfhb;->zze()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzfkk;->zzd:J
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzfie; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_3
    move p1, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/google/android/gms/internal/zzfie;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/zzfie;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/zzfie;->zza(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfie;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzfie;->zza(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfie;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    throw p1

    :cond_9
    :pswitch_4
    sget-object p1, Lcom/google/android/gms/internal/zzfkk;->zzf:Lcom/google/android/gms/internal/zzfkk;

    return-object p1

    :pswitch_5
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/zzfhu$zzh;

    check-cast p3, Lcom/google/android/gms/internal/zzfkk;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzfkk;->zzd:J

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_a

    move v4, v1

    goto :goto_5

    :cond_a
    move v4, v2

    :goto_5
    iget-wide v7, p0, Lcom/google/android/gms/internal/zzfkk;->zzd:J

    iget-wide v9, p3, Lcom/google/android/gms/internal/zzfkk;->zzd:J

    cmp-long p2, v9, v5

    if-eqz p2, :cond_b

    move p2, v1

    goto :goto_6

    :cond_b
    move p2, v2

    :goto_6
    iget-wide v9, p3, Lcom/google/android/gms/internal/zzfkk;->zzd:J

    move-object v3, p1

    move-wide v5, v7

    move v7, p2

    move-wide v8, v9

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/zzfhu$zzh;->zza(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzfkk;->zzd:J

    iget p2, p0, Lcom/google/android/gms/internal/zzfkk;->zze:I

    if-eqz p2, :cond_c

    move p2, v1

    goto :goto_7

    :cond_c
    move p2, v2

    :goto_7
    iget v0, p0, Lcom/google/android/gms/internal/zzfkk;->zze:I

    iget v3, p3, Lcom/google/android/gms/internal/zzfkk;->zze:I

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    move v1, v2

    :goto_8
    iget p3, p3, Lcom/google/android/gms/internal/zzfkk;->zze:I

    invoke-interface {p1, p2, v0, v1, p3}, Lcom/google/android/gms/internal/zzfhu$zzh;->zza(ZIZI)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzfkk;->zze:I

    return-object p0

    :pswitch_6
    new-instance p1, Lcom/google/android/gms/internal/zzfkk$zza;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzfkk$zza;-><init>(Lcom/google/android/gms/internal/zzfkl;)V

    return-object p1

    :pswitch_7
    return-object v0

    :pswitch_8
    sget-object p1, Lcom/google/android/gms/internal/zzfkk;->zzf:Lcom/google/android/gms/internal/zzfkk;

    return-object p1

    :pswitch_9
    new-instance p1, Lcom/google/android/gms/internal/zzfkk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzfkk;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfhg;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfkk;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfkk;->zzd:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzfhg;->zza(IJ)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzfkk;->zze:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/zzfkk;->zze:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzfhg;->zzb(II)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfkk;->zzb:Lcom/google/android/gms/internal/zzfko;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfko;->zza(Lcom/google/android/gms/internal/zzfhg;)V

    return-void
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfkk;->zzd:J

    return-wide v0
.end method

.method public final zzc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfkk;->zze:I

    return v0
.end method
