.class public Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;
.super Lcom/hp/vd/module/monitor/contact/ReaderAbstract;
.source "ContactInstantMessengerReader.java"


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/hp/vd/module/monitor/contact/ReaderAbstract;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public getData()Lcom/hp/vd/data/IData;
    .locals 6

    .line 39
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->cursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->cursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->cursor:Landroid/database/Cursor;

    const-string v3, "data1"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->cursor:Landroid/database/Cursor;

    const-string v4, "data2"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 42
    iget-object v3, p0, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->cursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->cursor:Landroid/database/Cursor;

    const-string v5, "data5"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    new-instance v4, Lcom/hp/vd/data/ContactInstantMessengerData;

    invoke-direct {v4}, Lcom/hp/vd/data/ContactInstantMessengerData;-><init>()V

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/hp/vd/data/ContactInstantMessengerData;->internalId:Ljava/lang/Integer;

    .line 47
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->contactId:Ljava/lang/Integer;

    iput-object v0, v4, Lcom/hp/vd/data/ContactInstantMessengerData;->contactId:Ljava/lang/Integer;

    .line 49
    iput-object v1, v4, Lcom/hp/vd/data/ContactInstantMessengerData;->name:Ljava/lang/String;

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/hp/vd/data/ContactInstantMessengerData;->type:Ljava/lang/Integer;

    .line 51
    iput-object v3, v4, Lcom/hp/vd/data/ContactInstantMessengerData;->protocol:Ljava/lang/String;

    return-object v4
.end method

.method public prepare()Z
    .locals 8

    const-string v3, "contact_id = ? AND mimetype = ?"

    const/4 v0, 0x2

    .line 18
    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->contactInternalId:Ljava/lang/Integer;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const-string v0, "vnd.android.cursor.item/im"

    const/4 v7, 0x1

    aput-object v0, v4, v7

    .line 23
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->cursor:Landroid/database/Cursor;

    .line 31
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    return v7

    :cond_0
    return v6
.end method
