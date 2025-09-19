.class public Lcom/hp/vd/module/monitor/line/UpTo91610110/Columns;
.super Ljava/lang/Object;
.source "Columns.java"


# instance fields
.field public final CONTENT:Ljava/lang/String;

.field public final CREATED_TIME:Ljava/lang/String;

.field public final GROUP_NAME:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final NAME:Ljava/lang/String;

.field public final STATUS:Ljava/lang/String;

.field public final TYPE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 5
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/Columns;->ID:Ljava/lang/String;

    const-string v0, "type"

    .line 7
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/Columns;->TYPE:Ljava/lang/String;

    const-string v0, "status"

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/Columns;->STATUS:Ljava/lang/String;

    const-string v0, "name"

    .line 10
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/Columns;->NAME:Ljava/lang/String;

    const-string v0, "group_name"

    .line 11
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/Columns;->GROUP_NAME:Ljava/lang/String;

    const-string v0, "content"

    .line 13
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/Columns;->CONTENT:Ljava/lang/String;

    const-string v0, "created_time"

    .line 15
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/Columns;->CREATED_TIME:Ljava/lang/String;

    return-void
.end method
