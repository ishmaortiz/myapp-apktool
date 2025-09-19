.class public Lcom/hp/vd/module/monitor/contact/ContactAddressReader;
.super Lcom/hp/vd/module/monitor/contact/ReaderAbstract;
.source "ContactAddressReader.java"


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/hp/vd/module/monitor/contact/ReaderAbstract;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public getData()Lcom/hp/vd/data/IData;
    .locals 10

    .line 39
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    const-string v3, "data5"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    const-string v4, "data4"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    const-string v5, "data7"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 43
    iget-object v4, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    const-string v6, "data8"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 44
    iget-object v5, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    const-string v7, "data9"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 45
    iget-object v6, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    const-string v8, "data10"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 46
    iget-object v7, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    const-string v9, "data2"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 48
    new-instance v8, Lcom/hp/vd/data/ContactAddressData;

    invoke-direct {v8}, Lcom/hp/vd/data/ContactAddressData;-><init>()V

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/hp/vd/data/ContactAddressData;->internalId:Ljava/lang/Integer;

    .line 51
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->contactId:Ljava/lang/Integer;

    iput-object v0, v8, Lcom/hp/vd/data/ContactAddressData;->contactId:Ljava/lang/Integer;

    .line 53
    iput-object v1, v8, Lcom/hp/vd/data/ContactAddressData;->pobox:Ljava/lang/String;

    .line 54
    iput-object v2, v8, Lcom/hp/vd/data/ContactAddressData;->street:Ljava/lang/String;

    .line 55
    iput-object v3, v8, Lcom/hp/vd/data/ContactAddressData;->city:Ljava/lang/String;

    .line 56
    iput-object v4, v8, Lcom/hp/vd/data/ContactAddressData;->state:Ljava/lang/String;

    .line 57
    iput-object v5, v8, Lcom/hp/vd/data/ContactAddressData;->postalCode:Ljava/lang/String;

    .line 58
    iput-object v6, v8, Lcom/hp/vd/data/ContactAddressData;->country:Ljava/lang/String;

    .line 59
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v8, Lcom/hp/vd/data/ContactAddressData;->type:Ljava/lang/Integer;

    return-object v8
.end method

.method public prepare()Z
    .locals 8

    const-string v3, "contact_id = ? AND mimetype = ?"

    const/4 v0, 0x2

    .line 18
    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->contactInternalId:Ljava/lang/Integer;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    const/4 v7, 0x1

    aput-object v0, v4, v7

    .line 23
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    .line 31
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    return v7

    :cond_0
    return v6
.end method
