.class public Lcom/hp/vd/data/reader/InputStreamWithRootElement;
.super Lcom/hp/vd/data/reader/InputStreamEntityReader;
.source "InputStreamWithRootElement.java"


# instance fields
.field canWriteTrailer:I

.field currentByte:I

.field end:[B

.field endTop:I

.field head:[B

.field headTop:I


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/hp/vd/data/IData;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lcom/hp/vd/data/reader/InputStreamEntityReader;-><init>(Ljava/util/Iterator;)V

    const/4 p1, 0x6

    .line 9
    new-array p1, p1, [B

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->head:[B

    const/4 p1, 0x7

    .line 10
    new-array p1, p1, [B

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->end:[B

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->headTop:I

    .line 12
    iput p1, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->endTop:I

    .line 15
    iput p1, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->canWriteTrailer:I

    return-void

    nop

    :array_0
    .array-data 1
        0x3ct
        0x72t
        0x6ft
        0x6ft
        0x74t
        0x3et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3ct
        0x2ft
        0x72t
        0x6ft
        0x6ft
        0x74t
        0x3et
    .end array-data
.end method


# virtual methods
.method public read()I
    .locals 3

    .line 29
    iget v0, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->headTop:I

    iget-object v1, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->head:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->head:[B

    iget v1, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->headTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->headTop:I

    aget-byte v0, v0, v1

    return v0

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/hp/vd/data/reader/InputStreamEntityReader;->read()I

    move-result v0

    iput v0, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->currentByte:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 38
    iget v0, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->currentByte:I

    return v0

    .line 45
    :cond_1
    iget v0, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->endTop:I

    iget-object v2, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->end:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 46
    iget-object v0, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->end:[B

    iget v1, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->endTop:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/hp/vd/data/reader/InputStreamWithRootElement;->endTop:I

    aget-byte v0, v0, v1

    return v0

    :cond_2
    return v1
.end method
