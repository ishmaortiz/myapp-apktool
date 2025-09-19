.class public Lcom/hp/vd/module/monitor/whatsapp/Columns;
.super Ljava/lang/Object;
.source "Columns.java"


# instance fields
.field public final CALL_RESULT:Ljava/lang/String;

.field public final DATA:Ljava/lang/String;

.field public final DURATION:Ljava/lang/String;

.field public final FROM_ME:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final KEY_FROM_ME:Ljava/lang/String;

.field public final KEY_REMOTE_JID:Ljava/lang/String;

.field public final LATITUDE:Ljava/lang/String;

.field public final LONGITUDE:Ljava/lang/String;

.field public final MEDIA_KEY:Ljava/lang/String;

.field public final MEDIA_MIME_TYPE:Ljava/lang/String;

.field public final MEDIA_SIZE:Ljava/lang/String;

.field public final MEDIA_URL:Ljava/lang/String;

.field public final MEDIA_WA_TYPE:Ljava/lang/String;

.field public final TIMESTAMP:Ljava/lang/String;

.field public final USER:Ljava/lang/String;

.field public final VIDEO_CALL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->ID:Ljava/lang/String;

    const-string v0, "key_remote_jid"

    .line 9
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->KEY_REMOTE_JID:Ljava/lang/String;

    const-string v0, "key_from_me"

    .line 10
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->KEY_FROM_ME:Ljava/lang/String;

    const-string v0, "data"

    .line 11
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->DATA:Ljava/lang/String;

    const-string v0, "timestamp"

    .line 12
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->TIMESTAMP:Ljava/lang/String;

    const-string v0, "media_url"

    .line 13
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->MEDIA_URL:Ljava/lang/String;

    const-string v0, "media_mime_type"

    .line 14
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->MEDIA_MIME_TYPE:Ljava/lang/String;

    const-string v0, "media_wa_type"

    .line 15
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->MEDIA_WA_TYPE:Ljava/lang/String;

    const-string v0, "media_size"

    .line 16
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->MEDIA_SIZE:Ljava/lang/String;

    const-string v0, "latitude"

    .line 17
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->LATITUDE:Ljava/lang/String;

    const-string v0, "longitude"

    .line 18
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->LONGITUDE:Ljava/lang/String;

    const-string v0, "media_key"

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->MEDIA_KEY:Ljava/lang/String;

    const-string v0, "from_me"

    .line 30
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->FROM_ME:Ljava/lang/String;

    const-string v0, "video_call"

    .line 31
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->VIDEO_CALL:Ljava/lang/String;

    const-string v0, "duration"

    .line 32
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->DURATION:Ljava/lang/String;

    const-string v0, "call_result"

    .line 33
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->CALL_RESULT:Ljava/lang/String;

    const-string v0, "user"

    .line 39
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/Columns;->USER:Ljava/lang/String;

    return-void
.end method
