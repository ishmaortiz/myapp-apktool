.class public Lcom/hp/vd/module/custom/skype/MessageColumns;
.super Ljava/lang/Object;
.source "MessageColumns.java"


# instance fields
.field public final AUTHOR:Ljava/lang/String;

.field public final BODY_XML:Ljava/lang/String;

.field public final CHATMSG_TYPE:Ljava/lang/String;

.field public final CONVO_ID:Ljava/lang/String;

.field public final DIALOG_PARTNER:Ljava/lang/String;

.field public final FROM_DISPNAME:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final TIMESTAMP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 5
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/MessageColumns;->ID:Ljava/lang/String;

    const-string v0, "author"

    .line 6
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/MessageColumns;->AUTHOR:Ljava/lang/String;

    const-string v0, "from_dispname"

    .line 7
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/MessageColumns;->FROM_DISPNAME:Ljava/lang/String;

    const-string v0, "dialog_partner"

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/MessageColumns;->DIALOG_PARTNER:Ljava/lang/String;

    const-string v0, "body_xml"

    .line 9
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/MessageColumns;->BODY_XML:Ljava/lang/String;

    const-string v0, "convo_id"

    .line 10
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/MessageColumns;->CONVO_ID:Ljava/lang/String;

    const-string v0, "timestamp"

    .line 11
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/MessageColumns;->TIMESTAMP:Ljava/lang/String;

    const-string v0, "chatmsg_type"

    .line 14
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/MessageColumns;->CHATMSG_TYPE:Ljava/lang/String;

    return-void
.end method
