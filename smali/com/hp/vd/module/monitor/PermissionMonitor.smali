.class public Lcom/hp/vd/module/monitor/PermissionMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "PermissionMonitor.java"


# static fields
.field public static final PARAMETER_LATEST_PERMISSIONS_STATE:Ljava/lang/String; = "latest_state"

.field protected static final TAG:Ljava/lang/String; = "PermissionMonitor"


# instance fields
.field protected extractorThread:Ljava/lang/Thread;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected permissionDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/PermissionStatusData;",
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

    .line 30
    iput-object v0, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->permissionDao:Lcom/j256/ormlite/dao/Dao;

    .line 32
    iput-object v0, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 33
    iput-object v0, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->extractorThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->permissionDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->permissionDao:Lcom/j256/ormlite/dao/Dao;

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

    .line 39
    const-class v0, Lcom/hp/vd/data/PermissionStatusData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 56
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 58
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 59
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/PermissionMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v1.0"

    .line 63
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "latest_state"

    const-string v2, "-1"

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 75
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "PermissionMonitor"

    return-object v0
.end method

.method public initialize()Z
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/PermissionMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->permissionDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/PermissionMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "PermissionMonitor"

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(): latest_state set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "latest_state"

    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PermissionMonitor"

    const-string v3, "initialize(): could not load persisted module data."

    .line 105
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v2

    const-string v3, "PermissionMonitor"

    const-string v4, "Exception caught while initializing"

    .line 94
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_2
    move-exception v2

    const-string v3, "PermissionMonitor"

    const-string v4, "Could not create Dao<PermissionData>."

    .line 89
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public install(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x5

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/PermissionMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    .line 51
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->extractorThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 6

    .line 130
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/PermissionMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "PermissionMonitor"

    const-string v2, "start() called."

    .line 131
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/PermissionMonitor;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "PermissionMonitor"

    const-string v3, "start(): This module is currently DEactivated."

    .line 134
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->extractorThread:Ljava/lang/Thread;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PermissionMonitor"

    const-string v4, "start(): Extractor thread is currently running. Exiting..."

    .line 140
    invoke-interface {v0, v1, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 145
    :cond_1
    new-instance v1, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;

    .line 146
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/PermissionMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->permissionDao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    .line 152
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "Permission-Extractor-Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->extractorThread:Ljava/lang/Thread;

    .line 153
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v3
.end method

.method public stop()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->extractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/hp/vd/module/monitor/PermissionMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
