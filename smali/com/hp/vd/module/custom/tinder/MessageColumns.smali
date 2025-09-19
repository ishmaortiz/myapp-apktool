.class public Lcom/hp/vd/module/custom/tinder/MessageColumns;
.super Ljava/lang/Object;
.source "MessageColumns.java"


# instance fields
.field public final CLIENT_SEQUENTIAL_ID:Ljava/lang/String;

.field public final CONTENT:Ljava/lang/String;

.field public final PARTICIPANT_ID:Ljava/lang/String;

.field public final PARTICIPANT_NAME:Ljava/lang/String;

.field public final SENT_DATE:Ljava/lang/String;

.field public final TYPE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "client_sequential_id"

    .line 5
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/MessageColumns;->CLIENT_SEQUENTIAL_ID:Ljava/lang/String;

    const-string v0, "type"

    .line 6
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/MessageColumns;->TYPE:Ljava/lang/String;

    const-string v0, "participant_id"

    .line 7
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/MessageColumns;->PARTICIPANT_ID:Ljava/lang/String;

    const-string v0, "participant_name"

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/MessageColumns;->PARTICIPANT_NAME:Ljava/lang/String;

    const-string v0, "content"

    .line 9
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/MessageColumns;->CONTENT:Ljava/lang/String;

    const-string v0, "sent_date"

    .line 10
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/MessageColumns;->SENT_DATE:Ljava/lang/String;

    return-void
.end method
