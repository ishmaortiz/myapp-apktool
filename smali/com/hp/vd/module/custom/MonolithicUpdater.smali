.class public Lcom/hp/vd/module/custom/MonolithicUpdater;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "MonolithicUpdater.java"


# static fields
.field public static final ATTRIBUTE_ENFORCE_UPDATE:Ljava/lang/String; = "enforce_update"

.field public static final ATTRIBUTE_UPDATE_INTERVAL:Ljava/lang/String; = "update_interval"

.field public static final COMMAND_DONT_ENFORCE_UPDATE:Ljava/lang/String; = "dont_enforce_update"

.field public static final COMMAND_ENFORCE_UPDATE:Ljava/lang/String; = "enforce_update"

.field public static final TAG:Ljava/lang/String; = "Updater"


# instance fields
.field protected lastUpdate:Ljava/lang/Long;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected monolithicUpdateLogDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/MonolithicUpdateLog;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected updateThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->monolithicUpdateLogDao:Lcom/j256/ormlite/dao/Dao;

    .line 35
    iput-object v0, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 36
    iput-object v0, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->lastUpdate:Ljava/lang/Long;

    .line 37
    iput-object v0, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->updateThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
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

    .line 137
    iget-object p2, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object p2

    .line 139
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicUpdater;->isActivated()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    const-string p3, "enforce_update"

    .line 143
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    .line 144
    iget-object p1, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string p3, "enforce_update"

    const-string v0, "true"

    invoke-virtual {p1, p3, v0}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Updater"

    const-string p3, "dispatch(): update enforced."

    .line 145
    invoke-interface {p2, p1, p3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v1

    :cond_1
    const-string p3, "dont_enforce_update"

    .line 150
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 151
    iget-object p1, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string p3, "enforce_update"

    const-string v0, "false"

    invoke-virtual {p1, p3, v0}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Updater"

    const-string p3, "dispatch(): dont-enforce-update was executed."

    .line 152
    invoke-interface {p2, p1, p3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v1

    :cond_2
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

    .line 43
    const-class v0, Lcom/hp/vd/data/MonolithicUpdateLog;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 48
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 50
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    const/4 v1, 0x1

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicUpdater;->getModuleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v1.0"

    .line 55
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "update_interval"

    const-string v2, "259200"

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "enforce_update"

    const-string v2, "false"

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    sget-object v1, Lcom/hp/vd/module/Constants;->INTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "MonolithicUpdater"

    return-object v0
.end method

.method protected hasUpdateIntervalExpired()Z
    .locals 10

    .line 235
    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->lastUpdate:Ljava/lang/Long;

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 240
    iget-object v3, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "update_interval"

    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "Updater"

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start(): now = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", syncInterval = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", lastSynchronization = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v8, v4, v6

    int-to-long v3, v3

    cmp-long v1, v8, v3

    if-gez v1, :cond_0

    const-string v1, "Updater"

    const-string v2, "start(): received heartbeat before the updater interval has expired."

    .line 245
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0

    .line 249
    :cond_0
    iput-object v2, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->lastUpdate:Ljava/lang/Long;

    const/4 v0, 0x1

    return v0
.end method

.method public initialize()Z
    .locals 5

    .line 88
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicUpdater;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicUpdater;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->monolithicUpdateLogDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicUpdater;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "Updater"

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(): persisted module data loaded, update_interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "update_interval"

    .line 109
    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Updater"

    const-string v3, "initialize(): cannot initialize()"

    .line 113
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 119
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicUpdater;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v2

    const-string v3, "Updater"

    const-string v4, "NullPointerException caught while initializing"

    .line 99
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_2
    move-exception v2

    const-string v3, "Updater"

    const-string v4, "Could not create Dao."

    .line 94
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicUpdater;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "Updater"

    const-string v2, "install() called."

    .line 74
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0xa

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/custom/MonolithicUpdater;->setDataReadLimit(Ljava/lang/Integer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public isDispatchable()Z
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicUpdater;->isActivated()Z

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

    .line 263
    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->updateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public start()Z
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "Updater"

    const-string v2, "start() called."

    .line 170
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 175
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicUpdater;->updateEnforced()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/MonolithicUpdater;->hasUpdateIntervalExpired()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 192
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->updateThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Updater"

    const-string v3, "start(): a update thread is already running. Skipping cycle."

    .line 193
    invoke-interface {v0, v1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 202
    :cond_1
    new-instance v1, Lcom/hp/vd/module/custom/update/UpdateRunnable;

    iget-object v3, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->context:Lcom/hp/vd/context/Context;

    iget-object v4, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->monolithicUpdateLogDao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v1, v3, v4, v0}, Lcom/hp/vd/module/custom/update/UpdateRunnable;-><init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    .line 208
    new-instance v3, Ljava/lang/Thread;

    const-string v4, "Updater-start()"

    invoke-direct {v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->updateThread:Ljava/lang/Thread;

    .line 209
    iget-object v1, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 212
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v3, "Updater"

    const-string v4, "start()\'s main try-catch"

    .line 214
    invoke-interface {v0, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return v2
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

.method protected updateEnforced()Z
    .locals 5

    .line 222
    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "Updater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEnforced(): enforce_update = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "enforce_update"

    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 224
    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "enforce_update"

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/hp/vd/module/custom/MonolithicUpdater;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v2, "Updater"

    const-string v3, "updateEnforced(): enforce_update is true."

    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
