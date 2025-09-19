.class public abstract Lcom/hp/vd/data/reader/InputStreamReaderAbstract;
.super Ljava/io/InputStream;
.source "InputStreamReaderAbstract.java"


# instance fields
.field protected formatter:Lcom/hp/vd/connection/formatter/IFormatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public setFormatter(Lcom/hp/vd/connection/formatter/IFormatter;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/hp/vd/data/reader/InputStreamReaderAbstract;->formatter:Lcom/hp/vd/connection/formatter/IFormatter;

    return-void
.end method
