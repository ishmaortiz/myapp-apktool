.class public Lcom/hp/vd/module/custom/skype/ConstantsV8;
.super Ljava/lang/Object;
.source "ConstantsV8.java"


# static fields
.field public static final COLUMN_ALIAS_DT_FORMATTED:Ljava/lang/String; = "dt_formatted"

.field public static final COLUMN_NSP_DATA:Ljava/lang/String; = "nsp_data"

.field public static final FIELD_CONTENT:Ljava/lang/String; = "content"

.field public static final FIELD_CONVERSATION_ID:Ljava/lang/String; = "conversationId"

.field public static final FIELD_IS_MY_MESSAGE:Ljava/lang/String; = "_isMyMessage"

.field public static final FIELD_MESSAGE_TYPE:Ljava/lang/String; = "messagetype"

.field public static final FIELD_XML_TYPE:Ljava/lang/String; = "type"

.field public static final MESSAGE_TYPE_EVENT_CALL:Ljava/lang/String; = "Event/Call"

.field public static final MESSAGE_TYPE_RICHTEXT:Ljava/lang/String; = "RichText"

.field public static final MESSAGE_TYPE_TEXT:Ljava/lang/String; = "Text"

.field public static final STATUS_ACCEPTED:Ljava/lang/Integer;

.field public static final STATUS_MISSED:Ljava/lang/Integer;

.field public static final STATUS_REJECTED:Ljava/lang/Integer;

.field public static final TYPE_INCOMING:Ljava/lang/Integer;

.field public static final TYPE_OUTGOING:Ljava/lang/Integer;

.field public static final _SKYPE_TYPE_ENDED:Ljava/lang/String; = "ended"

.field public static final _SKYPE_TYPE_MISSED:Ljava/lang/String; = "missed"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/hp/vd/module/custom/skype/ConstantsV8;->TYPE_INCOMING:Ljava/lang/Integer;

    const/4 v1, 0x2

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/hp/vd/module/custom/skype/ConstantsV8;->TYPE_OUTGOING:Ljava/lang/Integer;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/hp/vd/module/custom/skype/ConstantsV8;->STATUS_ACCEPTED:Ljava/lang/Integer;

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/hp/vd/module/custom/skype/ConstantsV8;->STATUS_MISSED:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/hp/vd/module/custom/skype/ConstantsV8;->STATUS_REJECTED:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
