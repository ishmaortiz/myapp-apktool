.class public Lcom/hp/vd/module/monitor/telegram/Columns;
.super Ljava/lang/Object;
.source "Columns.java"


# instance fields
.field public final COLUMN_ALIAS_CHATNAME:Ljava/lang/String;

.field public final COLUMN_ALIAS_USERDATA:Ljava/lang/String;

.field public final COLUMN_DATA:Ljava/lang/String;

.field public final COLUMN_DATE:Ljava/lang/String;

.field public final COLUMN_MID:Ljava/lang/String;

.field public final COLUMN_OUT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mid"

    .line 5
    iput-object v0, p0, Lcom/hp/vd/module/monitor/telegram/Columns;->COLUMN_MID:Ljava/lang/String;

    const-string v0, "out"

    .line 6
    iput-object v0, p0, Lcom/hp/vd/module/monitor/telegram/Columns;->COLUMN_OUT:Ljava/lang/String;

    const-string v0, "date"

    .line 7
    iput-object v0, p0, Lcom/hp/vd/module/monitor/telegram/Columns;->COLUMN_DATE:Ljava/lang/String;

    const-string v0, "data"

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/monitor/telegram/Columns;->COLUMN_DATA:Ljava/lang/String;

    const-string v0, "user_data"

    .line 10
    iput-object v0, p0, Lcom/hp/vd/module/monitor/telegram/Columns;->COLUMN_ALIAS_USERDATA:Ljava/lang/String;

    const-string v0, "chat_name"

    .line 11
    iput-object v0, p0, Lcom/hp/vd/module/monitor/telegram/Columns;->COLUMN_ALIAS_CHATNAME:Ljava/lang/String;

    return-void
.end method
