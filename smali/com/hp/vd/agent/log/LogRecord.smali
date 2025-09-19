.class public Lcom/hp/vd/agent/log/LogRecord;
.super Ljava/lang/Object;
.source "LogRecord.java"


# instance fields
.field public code:Ljava/lang/Integer;

.field public content:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/hp/vd/agent/log/LogRecord;->type:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/hp/vd/agent/log/LogRecord;->content:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/hp/vd/agent/log/LogRecord;->code:Ljava/lang/Integer;

    return-void
.end method
