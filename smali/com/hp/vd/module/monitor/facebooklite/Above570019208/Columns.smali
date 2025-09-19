.class public Lcom/hp/vd/module/monitor/facebooklite/Above570019208/Columns;
.super Ljava/lang/Object;
.source "Columns.java"


# instance fields
.field public final CONTACT_ID:Ljava/lang/String;

.field public final DISPLAY_NAME:Ljava/lang/String;

.field public final PARTICIPANT_THREAD_KEY:Ljava/lang/String;

.field public final SENDER:Ljava/lang/String;

.field public final SENDER_ID:Ljava/lang/String;

.field public final TABLE_CONTACT:Ljava/lang/String;

.field public final TEXT:Ljava/lang/String;

.field public final THREAD_KEY:Ljava/lang/String;

.field public final TIMESTAMP_MS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "thread_key"

    .line 5
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/Above570019208/Columns;->THREAD_KEY:Ljava/lang/String;

    const-string v0, "text"

    .line 7
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/Above570019208/Columns;->TEXT:Ljava/lang/String;

    const-string v0, "sender"

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/Above570019208/Columns;->SENDER:Ljava/lang/String;

    const-string v0, "sender_id"

    .line 11
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/Above570019208/Columns;->SENDER_ID:Ljava/lang/String;

    const-string v0, "timestamp_ms"

    .line 12
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/Above570019208/Columns;->TIMESTAMP_MS:Ljava/lang/String;

    const-string v0, "display_name"

    .line 13
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/Above570019208/Columns;->DISPLAY_NAME:Ljava/lang/String;

    const-string v0, "participant_thread_key"

    .line 16
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/Above570019208/Columns;->PARTICIPANT_THREAD_KEY:Ljava/lang/String;

    const-string v0, "contact_id"

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/Above570019208/Columns;->CONTACT_ID:Ljava/lang/String;

    const-string v0, "thread_participant"

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/Above570019208/Columns;->TABLE_CONTACT:Ljava/lang/String;

    return-void
.end method
