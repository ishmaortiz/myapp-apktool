.class public Lcom/hp/vd/data/reader/InputStreamEntityReader;
.super Lcom/hp/vd/data/reader/InputStreamReaderAbstract;
.source "InputStreamEntityReader.java"


# instance fields
.field protected buffer:[B

.field protected iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/hp/vd/data/IData;",
            ">;"
        }
    .end annotation
.end field

.field position:I


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/hp/vd/data/IData;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/hp/vd/data/reader/InputStreamReaderAbstract;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->iterator:Ljava/util/Iterator;

    .line 15
    iput-object p1, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->position:I

    iget-object v1, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_3

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->iterator:Ljava/util/Iterator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/vd/data/IData;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 47
    new-array v0, v0, [B

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    goto :goto_0

    .line 51
    :cond_2
    iget-object v2, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->formatter:Lcom/hp/vd/connection/formatter/IFormatter;

    invoke-interface {v2, v0}, Lcom/hp/vd/connection/formatter/IFormatter;->format(Lcom/hp/vd/data/IData;)[B

    move-result-object v0

    .line 54
    :goto_0
    array-length v2, v0

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->buffer:[B

    .line 55
    iput-object v0, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->buffer:[B

    .line 57
    iput v1, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->position:I

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->buffer:[B

    iget v1, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hp/vd/data/reader/InputStreamEntityReader;->position:I

    aget-byte v0, v0, v1

    return v0

    :cond_4
    :goto_1
    const/4 v0, -0x1

    return v0
.end method
