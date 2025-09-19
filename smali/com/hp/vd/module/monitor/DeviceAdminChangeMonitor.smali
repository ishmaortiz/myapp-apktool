.class public Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "DeviceAdminChangeMonitor.java"


# instance fields
.field protected deviceAdminChangeDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/DeviceAdminChangeData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected receiver:Lcom/hp/vd/module/monitor/dac/DeviceAdminChangeReceiver;

.field protected status:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->status:Z

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->receiver:Lcom/hp/vd/module/monitor/dac/DeviceAdminChangeReceiver;

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->deviceAdminChangeDao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->deviceAdminChangeDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->deviceAdminChangeDao:Lcom/j256/ormlite/dao/Dao;

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

    .line 50
    const-class v0, Lcom/hp/vd/data/DeviceAdminChangeData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 26
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 28
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 29
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v1.0"

    .line 33
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/hp/vd/module/Constants;->INTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    const/4 v1, -0x4

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "DeviceAdminChangeMonitor"

    return-object v0
.end method

.method public initialize()Z
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->deviceAdminChangeDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "ModuleAbstract"

    const-string v3, "Could not create Dao<DeviceAdminChangeData>."

    .line 74
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public install(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x32

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    .line 62
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->status:Z

    return v0
.end method

.method public start()Z
    .locals 5

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->status:Z

    .line 97
    iget-object v1, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->receiver:Lcom/hp/vd/module/monitor/dac/DeviceAdminChangeReceiver;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "ModuleAbstract"

    const-string v3, "start(): receiver != null. Did you forgot to call stop()?"

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v0

    .line 104
    :cond_0
    :try_start_0
    new-instance v1, Lcom/hp/vd/module/monitor/dac/DeviceAdminChangeReceiver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->deviceAdminChangeDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/module/monitor/dac/DeviceAdminChangeReceiver;-><init>(Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->receiver:Lcom/hp/vd/module/monitor/dac/DeviceAdminChangeReceiver;

    .line 105
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.hp.vb.intent.device_admin.change"

    .line 107
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->receiver:Lcom/hp/vd/module/monitor/dac/DeviceAdminChangeReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 112
    iget-object v2, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "ModuleAbstract"

    const-string v4, "Exception caught while registering receiver"

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return v0
.end method

.method public stop()Z
    .locals 5

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->status:Z

    .line 123
    iget-object v0, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->receiver:Lcom/hp/vd/module/monitor/dac/DeviceAdminChangeReceiver;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v2, "ModuleAbstract"

    const-string v3, "stop(): receiver == null. Did you forgot to call start()?"

    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v1

    .line 130
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->receiver:Lcom/hp/vd/module/monitor/dac/DeviceAdminChangeReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->receiver:Lcom/hp/vd/module/monitor/dac/DeviceAdminChangeReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    iget-object v2, p0, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "ModuleAbstract"

    const-string v4, "Exception caught in stop()"

    invoke-interface {v2, v3, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return v1
.end method
