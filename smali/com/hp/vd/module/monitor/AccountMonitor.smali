.class public Lcom/hp/vd/module/monitor/AccountMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "AccountMonitor.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "AccountMonitor"


# instance fields
.field protected accountBaseDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/AccountBaseData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected accountDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/AccountData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected extractorThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->accountDao:Lcom/j256/ormlite/dao/Dao;

    .line 51
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->accountBaseDao:Lcom/j256/ormlite/dao/Dao;

    .line 53
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->extractorThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->accountDao:Lcom/j256/ormlite/dao/Dao;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    iput-object v1, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->accountDao:Lcom/j256/ormlite/dao/Dao;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->accountBaseDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_1

    .line 163
    iput-object v1, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->accountBaseDao:Lcom/j256/ormlite/dao/Dao;

    :cond_1
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

    .line 59
    const-class v0, Lcom/hp/vd/data/AccountData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 102
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 104
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 105
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AccountMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x4

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v4.0"

    .line 109
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 119
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "AccountMonitor"

    return-object v0
.end method

.method public initialize()Z
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AccountMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->accountDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AccountMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    const-class v3, Lcom/hp/vd/data/AccountBaseData;

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->accountBaseDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    const-string v3, "AccountMonitor"

    const-string v4, "Could not create Dao<AccountBaseData>."

    .line 147
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_1
    move-exception v2

    const-string v3, "AccountMonitor"

    const-string v4, "Exception caught while initializing"

    .line 138
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_2
    move-exception v2

    const-string v3, "AccountMonitor"

    const-string v4, "Could not create Dao<AccountData>."

    .line 133
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/16 v1, 0x32

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hp/vd/module/monitor/AccountMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AccountMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    .line 76
    const-class v2, Lcom/hp/vd/data/AccountBaseData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "AccountMonitor"

    const-string v2, "install(): exception caught during creating-second level tables"

    .line 84
    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->extractorThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 6

    .line 172
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AccountMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "AccountMonitor"

    const-string v2, "start() called."

    .line 173
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 175
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AccountMonitor;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "AccountMonitor"

    const-string v3, "start(): This module is currently DEactivated."

    .line 176
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->extractorThread:Ljava/lang/Thread;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AccountMonitor"

    const-string v4, "start(): Extractor thread is currently running. Exiting..."

    .line 182
    invoke-interface {v0, v1, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 187
    :cond_1
    new-instance v1, Lcom/hp/vd/module/monitor/account/AccountExtractor;

    .line 188
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AccountMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->accountBaseDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->accountDao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/hp/vd/module/monitor/account/AccountExtractor;-><init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    .line 194
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "Account-Extractor-Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->extractorThread:Ljava/lang/Thread;

    .line 195
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v3
.end method

.method public stop()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->extractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AccountMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
