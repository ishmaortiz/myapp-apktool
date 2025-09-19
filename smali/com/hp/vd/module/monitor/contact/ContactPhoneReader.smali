.class public Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;
.super Lcom/hp/vd/module/monitor/contact/ReaderAbstract;
.source "ContactPhoneReader.java"


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

    .line 32
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->cursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->cursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->cursor:Landroid/database/Cursor;

    const-string v3, "data1"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->cursor:Landroid/database/Cursor;

    const-string v4, "data1"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->cursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->cursor:Landroid/database/Cursor;

    const-string v5, "data2"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 38
    new-instance v4, Lcom/hp/vd/data/ContactPhoneData;

    invoke-direct {v4}, Lcom/hp/vd/data/ContactPhoneData;-><init>()V

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/hp/vd/data/ContactPhoneData;->internalId:Ljava/lang/Integer;

    .line 41
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->contactId:Ljava/lang/Integer;

    iput-object v0, v4, Lcom/hp/vd/data/ContactPhoneData;->contactId:Ljava/lang/Integer;

    .line 43
    iput-object v1, v4, Lcom/hp/vd/data/ContactPhoneData;->number:Ljava/lang/String;

    .line 44
    iput-object v2, v4, Lcom/hp/vd/data/ContactPhoneData;->numberNormalized:Ljava/lang/String;

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v4, Lcom/hp/vd/data/ContactPhoneData;->type:Ljava/lang/Integer;

    return-object v4
.end method

.method public prepare()Z
    .locals 8

    .line 17
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id = ?"

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->contactInternalId:Ljava/lang/Integer;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v4, v7

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 17
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->cursor:Landroid/database/Cursor;

    .line 24
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    return v6

    :cond_0
    return v7
.end method
