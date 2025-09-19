.class public Lcom/hp/vd/module/monitor/contact/ContactNoteReader;
.super Lcom/hp/vd/module/monitor/contact/ReaderAbstract;
.source "ContactNoteReader.java"


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/hp/vd/module/monitor/contact/ReaderAbstract;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public getData()Lcom/hp/vd/data/IData;
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;->cursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;->cursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;->cursor:Landroid/database/Cursor;

    const-string v3, "data1"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/hp/vd/data/ContactNoteData;

    invoke-direct {v2}, Lcom/hp/vd/data/ContactNoteData;-><init>()V

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/hp/vd/data/ContactNoteData;->internalId:Ljava/lang/Integer;

    .line 44
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;->contactId:Ljava/lang/Integer;

    iput-object v0, v2, Lcom/hp/vd/data/ContactNoteData;->contactId:Ljava/lang/Integer;

    .line 46
    iput-object v1, v2, Lcom/hp/vd/data/ContactNoteData;->note:Ljava/lang/String;

    return-object v2
.end method

.method public prepare()Z
    .locals 8

    const-string v3, "contact_id = ? AND mimetype = ?"

    const/4 v0, 0x2

    .line 17
    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;->contactInternalId:Ljava/lang/Integer;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const-string v0, "vnd.android.cursor.item/note"

    const/4 v7, 0x1

    aput-object v0, v4, v7

    .line 22
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;->cursor:Landroid/database/Cursor;

    .line 30
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    return v7

    :cond_0
    return v6
.end method
