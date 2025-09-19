.class public Lcom/hp/vd/module/monitor/kik/Columns;
.super Ljava/lang/Object;
.source "Columns.java"


# instance fields
.field public final COLUMN_BODY:Ljava/lang/String;

.field public final COLUMN_DISPLAY_NAME:Ljava/lang/String;

.field public final COLUMN_IS_GROUP:Ljava/lang/String;

.field public final COLUMN_TIMESTAMP:Ljava/lang/String;

.field public final COLUMN_USER_NAME:Ljava/lang/String;

.field public final COLUMN_WAS_ME:Ljava/lang/String;

.field public final COLUMN__ID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    .line 5
    iput-object v0, p0, Lcom/hp/vd/module/monitor/kik/Columns;->COLUMN__ID:Ljava/lang/String;

    const-string v0, "was_me"

    .line 6
    iput-object v0, p0, Lcom/hp/vd/module/monitor/kik/Columns;->COLUMN_WAS_ME:Ljava/lang/String;

    const-string v0, "is_group"

    .line 7
    iput-object v0, p0, Lcom/hp/vd/module/monitor/kik/Columns;->COLUMN_IS_GROUP:Ljava/lang/String;

    const-string v0, "user_name"

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/monitor/kik/Columns;->COLUMN_USER_NAME:Ljava/lang/String;

    const-string v0, "display_name"

    .line 9
    iput-object v0, p0, Lcom/hp/vd/module/monitor/kik/Columns;->COLUMN_DISPLAY_NAME:Ljava/lang/String;

    const-string v0, "body"

    .line 10
    iput-object v0, p0, Lcom/hp/vd/module/monitor/kik/Columns;->COLUMN_BODY:Ljava/lang/String;

    const-string v0, "timestamp"

    .line 11
    iput-object v0, p0, Lcom/hp/vd/module/monitor/kik/Columns;->COLUMN_TIMESTAMP:Ljava/lang/String;

    return-void
.end method
