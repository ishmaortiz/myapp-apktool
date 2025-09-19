.class public Lcom/hp/vd/module/custom/viber/MessageColumns;
.super Ljava/lang/Object;
.source "MessageColumns.java"


# instance fields
.field public final BODY:Ljava/lang/String;

.field public final CONTACT_NAME:Ljava/lang/String;

.field public final DATE:Ljava/lang/String;

.field public final DISPLAY_NAME:Ljava/lang/String;

.field public final EXTRA_MIME:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final NUMBER:Ljava/lang/String;

.field public final THREAD_ID:Ljava/lang/String;

.field public final TYPE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    .line 5
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/MessageColumns;->ID:Ljava/lang/String;

    const-string v0, "type"

    .line 6
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/MessageColumns;->TYPE:Ljava/lang/String;

    const-string v0, "number"

    .line 7
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/MessageColumns;->NUMBER:Ljava/lang/String;

    const-string v0, "thread_id"

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/MessageColumns;->THREAD_ID:Ljava/lang/String;

    const-string v0, "extra_mime"

    .line 9
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/MessageColumns;->EXTRA_MIME:Ljava/lang/String;

    const-string v0, "body"

    .line 10
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/MessageColumns;->BODY:Ljava/lang/String;

    const-string v0, "contact_name"

    .line 11
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/MessageColumns;->CONTACT_NAME:Ljava/lang/String;

    const-string v0, "display_name"

    .line 12
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/MessageColumns;->DISPLAY_NAME:Ljava/lang/String;

    const-string v0, "date"

    .line 13
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/MessageColumns;->DATE:Ljava/lang/String;

    return-void
.end method
