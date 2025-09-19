.class public final Lcom/google/android/gms/internal/zzbft;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/ClearcutLogger$zza;


# static fields
.field private static final zza:Ljava/nio/charset/Charset;

.field private static final zzb:Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;

.field private static zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/phenotype/PhenotypeFlag<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static zze:Ljava/lang/Boolean;

.field private static zzf:Ljava/lang/Long;


# instance fields
.field private final zzc:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbft;->zza:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;

    const-string v1, "com.google.android.gms.clearcut.public"

    invoke-static {v1}, Lcom/google/android/gms/phenotype/Phenotype;->getContentProviderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;-><init>(Landroid/net/Uri;)V

    const-string v1, "gms:playlog:service:sampling_"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;->withGservicePrefix(Ljava/lang/String;)Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;

    move-result-object v0

    const-string v1, "LogSampling__"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;->withPhenotypePrefix(Ljava/lang/String;)Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbft;->zzb:Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbft;->zzc:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/zzbft;->zzd:Ljava/util/Map;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sput-object p1, Lcom/google/android/gms/internal/zzbft;->zzd:Ljava/util/Map;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbft;->zzc:Landroid/content/Context;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbft;->zzc:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/phenotype/PhenotypeFlag;->maybeInit(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private static zza(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbfu;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ""

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    :cond_1
    move-object v5, v1

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gtz v1, :cond_3

    const-string v1, "LogSamplerImpl"

    const-string v2, "Failed to parse the rule: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    :try_start_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x0

    cmp-long p0, v6, v1

    if-ltz p0, :cond_5

    cmp-long p0, v8, v1

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/zzbfu;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/zzbfu;-><init>(Ljava/lang/String;JJ)V

    return-object p0

    :cond_5
    :goto_1
    const-string p0, "LogSamplerImpl"

    const/16 v1, 0x48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "negative values not supported: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "LogSamplerImpl"

    const-string v3, "parseLong() failed while parsing: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static zza(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbft;->zze:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbih;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbig;

    move-result-object p0

    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbig;->zza(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/zzbft;->zze:Ljava/lang/Boolean;

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/zzbft;->zze:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;I)Z
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v2, p1

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-nez v2, :cond_2

    return v3

    :cond_2
    iget-object v4, v0, Lcom/google/android/gms/internal/zzbft;->zzc:Landroid/content/Context;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/google/android/gms/internal/zzbft;->zzc:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbft;->zza(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/google/android/gms/internal/zzbft;->zzd:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/phenotype/PhenotypeFlag;

    if-nez v4, :cond_4

    sget-object v4, Lcom/google/android/gms/internal/zzbft;->zzb:Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;

    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/phenotype/PhenotypeFlag$Factory;->createFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/phenotype/PhenotypeFlag;

    move-result-object v4

    sget-object v1, Lcom/google/android/gms/internal/zzbft;->zzd:Ljava/util/Map;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/phenotype/PhenotypeFlag;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_5
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/zzbft;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbfu;

    move-result-object v1

    if-nez v1, :cond_6

    return v3

    :cond_6
    iget-object v2, v1, Lcom/google/android/gms/internal/zzbfu;->zza:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzbft;->zzc:Landroid/content/Context;

    sget-object v5, Lcom/google/android/gms/internal/zzbft;->zzf:Ljava/lang/Long;

    const-wide/16 v6, 0x0

    if-nez v5, :cond_9

    if-eqz v4, :cond_8

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbft;->zza(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/internal/zzdnm;->zza(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_2
    sput-object v4, Lcom/google/android/gms/internal/zzbft;->zzf:Ljava/lang/Long;

    goto :goto_3

    :cond_7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_2

    :cond_8
    move-wide v4, v6

    goto :goto_4

    :cond_9
    :goto_3
    sget-object v4, Lcom/google/android/gms/internal/zzbft;->zzf:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_4
    const/16 v8, 0x8

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_5

    :cond_a
    sget-object v9, Lcom/google/android/gms/internal/zzbft;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v9, v2

    add-int/2addr v9, v8

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    goto :goto_6

    :cond_b
    :goto_5
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    :goto_6
    invoke-static {v2}, Lcom/google/android/gms/internal/zzbfo;->zza([B)J

    move-result-wide v4

    iget-wide v8, v1, Lcom/google/android/gms/internal/zzbfu;->zzb:J

    iget-wide v1, v1, Lcom/google/android/gms/internal/zzbfu;->zzc:J

    cmp-long v10, v8, v6

    if-ltz v10, :cond_f

    cmp-long v10, v1, v6

    if-gez v10, :cond_c

    goto :goto_9

    :cond_c
    cmp-long v10, v1, v6

    if-lez v10, :cond_e

    cmp-long v10, v4, v6

    if-ltz v10, :cond_d

    :goto_7
    rem-long/2addr v4, v1

    goto :goto_8

    :cond_d
    const-wide v6, 0x7fffffffffffffffL

    rem-long v10, v6, v1

    const-wide/16 v12, 0x1

    add-long v14, v10, v12

    and-long v10, v4, v6

    rem-long/2addr v10, v1

    add-long v4, v14, v10

    goto :goto_7

    :goto_8
    cmp-long v1, v4, v8

    if-gez v1, :cond_e

    return v3

    :cond_e
    const/4 v1, 0x0

    return v1

    :cond_f
    :goto_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x48

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "negative values not supported: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
