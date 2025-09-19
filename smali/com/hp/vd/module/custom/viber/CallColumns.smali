.class public Lcom/hp/vd/module/custom/viber/CallColumns;
.super Ljava/lang/Object;
.source "CallColumns.java"


# instance fields
.field public final DATE:Ljava/lang/String;

.field public final DURATION:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final NUMBER:Ljava/lang/String;

.field public final TYPE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    .line 5
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/CallColumns;->ID:Ljava/lang/String;

    const-string v0, "type"

    .line 6
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/CallColumns;->TYPE:Ljava/lang/String;

    const-string v0, "number"

    .line 7
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/CallColumns;->NUMBER:Ljava/lang/String;

    const-string v0, "duration"

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/CallColumns;->DURATION:Ljava/lang/String;

    const-string v0, "date"

    .line 9
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/CallColumns;->DATE:Ljava/lang/String;

    return-void
.end method
