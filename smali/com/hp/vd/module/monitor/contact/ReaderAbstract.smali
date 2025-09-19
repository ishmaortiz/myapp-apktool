.class public abstract Lcom/hp/vd/module/monitor/contact/ReaderAbstract;
.super Ljava/lang/Object;
.source "ReaderAbstract.java"

# interfaces
.implements Lcom/hp/vd/module/monitor/contact/IReader;


# instance fields
.field protected contactId:Ljava/lang/Integer;

.field protected contactInternalId:Ljava/lang/Integer;

.field protected contentResolver:Landroid/content/ContentResolver;

.field protected cursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ReaderAbstract;->contactInternalId:Ljava/lang/Integer;

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ReaderAbstract;->contactId:Ljava/lang/Integer;

    .line 9
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ReaderAbstract;->contentResolver:Landroid/content/ContentResolver;

    .line 10
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ReaderAbstract;->cursor:Landroid/database/Cursor;

    .line 13
    iput-object p1, p0, Lcom/hp/vd/module/monitor/contact/ReaderAbstract;->contactInternalId:Ljava/lang/Integer;

    .line 14
    iput-object p2, p0, Lcom/hp/vd/module/monitor/contact/ReaderAbstract;->contactId:Ljava/lang/Integer;

    .line 15
    iput-object p3, p0, Lcom/hp/vd/module/monitor/contact/ReaderAbstract;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ReaderAbstract;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public moveToNext()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ReaderAbstract;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method
