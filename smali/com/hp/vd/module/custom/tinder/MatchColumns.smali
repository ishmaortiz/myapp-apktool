.class public Lcom/hp/vd/module/custom/tinder/MatchColumns;
.super Ljava/lang/Object;
.source "MatchColumns.java"


# instance fields
.field public final BIO:Ljava/lang/String;

.field public final BIRTH_DATE:Ljava/lang/String;

.field public final CREATION_DATE:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final NAME:Ljava/lang/String;

.field public final PHOTOS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 5
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/MatchColumns;->ID:Ljava/lang/String;

    const-string v0, "name"

    .line 6
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/MatchColumns;->NAME:Ljava/lang/String;

    const-string v0, "bio"

    .line 7
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/MatchColumns;->BIO:Ljava/lang/String;

    const-string v0, "birth_date"

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/MatchColumns;->BIRTH_DATE:Ljava/lang/String;

    const-string v0, "photos"

    .line 9
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/MatchColumns;->PHOTOS:Ljava/lang/String;

    const-string v0, "creation_date"

    .line 10
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/MatchColumns;->CREATION_DATE:Ljava/lang/String;

    return-void
.end method
