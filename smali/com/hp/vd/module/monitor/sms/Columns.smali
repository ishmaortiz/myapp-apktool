.class public Lcom/hp/vd/module/monitor/sms/Columns;
.super Ljava/lang/Object;
.source "Columns.java"


# instance fields
.field public final ADDRESS:Ljava/lang/String;

.field public final BODY:Ljava/lang/String;

.field public final DATE:Ljava/lang/String;

.field public final TYPE:Ljava/lang/String;

.field public final _ID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    .line 5
    iput-object v0, p0, Lcom/hp/vd/module/monitor/sms/Columns;->_ID:Ljava/lang/String;

    const-string v0, "type"

    .line 6
    iput-object v0, p0, Lcom/hp/vd/module/monitor/sms/Columns;->TYPE:Ljava/lang/String;

    const-string v0, "body"

    .line 7
    iput-object v0, p0, Lcom/hp/vd/module/monitor/sms/Columns;->BODY:Ljava/lang/String;

    const-string v0, "address"

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/monitor/sms/Columns;->ADDRESS:Ljava/lang/String;

    const-string v0, "date"

    .line 9
    iput-object v0, p0, Lcom/hp/vd/module/monitor/sms/Columns;->DATE:Ljava/lang/String;

    return-void
.end method
