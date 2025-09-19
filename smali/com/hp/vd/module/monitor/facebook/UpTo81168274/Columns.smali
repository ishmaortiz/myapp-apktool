.class public Lcom/hp/vd/module/monitor/facebook/UpTo81168274/Columns;
.super Ljava/lang/Object;
.source "Columns.java"


# instance fields
.field public final SENDER:Ljava/lang/String;

.field public final TEXT:Ljava/lang/String;

.field public final THREAD_ID:Ljava/lang/String;

.field public final THREAD_NAME:Ljava/lang/String;

.field public final THREAD_PARTICIPANTS:Ljava/lang/String;

.field public final TIMESTAMP_MS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "thread_key"

    .line 11
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/Columns;->THREAD_ID:Ljava/lang/String;

    const-string v0, "text"

    .line 12
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/Columns;->TEXT:Ljava/lang/String;

    const-string v0, "sender"

    .line 13
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/Columns;->SENDER:Ljava/lang/String;

    const-string v0, "timestamp_ms"

    .line 14
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/Columns;->TIMESTAMP_MS:Ljava/lang/String;

    const-string v0, "name"

    .line 16
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/Columns;->THREAD_NAME:Ljava/lang/String;

    const-string v0, "senders"

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/Columns;->THREAD_PARTICIPANTS:Ljava/lang/String;

    return-void
.end method
