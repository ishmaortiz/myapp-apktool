.class public Lcom/hp/vd/module/monitor/browser/BrowserHistoryColumns;
.super Ljava/lang/Object;
.source "BrowserHistoryColumns.java"


# instance fields
.field public final COLUMN_ID:Ljava/lang/String;

.field public final COLUMN_LAST_VISIT_TIME:Ljava/lang/String;

.field public final COLUMN_TITLE:Ljava/lang/String;

.field public final COLUMN_URL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 5
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryColumns;->COLUMN_ID:Ljava/lang/String;

    const-string v0, "url"

    .line 6
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryColumns;->COLUMN_URL:Ljava/lang/String;

    const-string v0, "title"

    .line 7
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryColumns;->COLUMN_TITLE:Ljava/lang/String;

    const-string v0, "last_visit_time"

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryColumns;->COLUMN_LAST_VISIT_TIME:Ljava/lang/String;

    return-void
.end method
