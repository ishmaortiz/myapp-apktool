.class public Lcom/hp/vd/module/monitor/WifiNetworkMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "WifiNetworkMonitor.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "WifiNetworkMonitor"


# instance fields
.field protected extractorThread:Ljava/lang/Thread;

.field protected wifiNetworkBaseDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/wifi/WifiNetworkBaseData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected wifiNetworkDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/WifiNetworkData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->wifiNetworkDao:Lcom/j256/ormlite/dao/Dao;

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->wifiNetworkBaseDao:Lcom/j256/ormlite/dao/Dao;

    .line 28
    iput-object v0, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->extractorThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->wifiNetworkDao:Lcom/j256/ormlite/dao/Dao;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 134
    iput-object v1, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->wifiNetworkDao:Lcom/j256/ormlite/dao/Dao;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->wifiNetworkBaseDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_1

    .line 138
    iput-object v1, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->wifiNetworkBaseDao:Lcom/j256/ormlite/dao/Dao;

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

    .line 34
    const-class v0, Lcom/hp/vd/data/WifiNetworkData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 77
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 79
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 80
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v1.0"

    .line 84
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 94
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "WifiNetworkMonitor"

    return-object v0
.end method

.method public initialize()Z
    .locals 5

    .line 102
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->wifiNetworkDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    const-class v3, Lcom/hp/vd/data/wifi/WifiNetworkBaseData;

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->wifiNetworkBaseDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    const-string v3, "WifiNetworkMonitor"

    const-string v4, "Could not create Dao<AccountBaseData>."

    .line 122
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_1
    move-exception v2

    const-string v3, "WifiNetworkMonitor"

    const-string v4, "Exception caught while initializing"

    .line 113
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_2
    move-exception v2

    const-string v3, "WifiNetworkMonitor"

    const-string v4, "Could not create Dao<AccountData>."

    .line 108
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/16 v1, 0x32

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    .line 51
    const-class v2, Lcom/hp/vd/data/wifi/WifiNetworkBaseData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "WifiNetworkMonitor"

    const-string v2, "install(): exception caught during creating-second level tables"

    .line 59
    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->extractorThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 6

    .line 147
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "WifiNetworkMonitor"

    const-string v2, "start() called."

    .line 148
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "WifiNetworkMonitor"

    const-string v3, "start(): This module is currently DEactivated."

    .line 151
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->extractorThread:Ljava/lang/Thread;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiNetworkMonitor"

    const-string v4, "start(): Extractor thread is currently running. Exiting..."

    .line 157
    invoke-interface {v0, v1, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 162
    :cond_1
    new-instance v1, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;

    .line 163
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->wifiNetworkBaseDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->wifiNetworkDao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;-><init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    .line 169
    new-instance v0, Ljava/lang/Thread;

    const-string v2, "WifiNetwork-Extractor-Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->extractorThread:Ljava/lang/Thread;

    .line 170
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v3
.end method

.method public stop()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->extractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
