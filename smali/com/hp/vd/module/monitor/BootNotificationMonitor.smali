.class public Lcom/hp/vd/module/monitor/BootNotificationMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "BootNotificationMonitor.java"


# instance fields
.field protected status:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/BootNotificationMonitor;->status:Z

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

    .line 42
    const-class v0, Lcom/hp/vd/data/BootData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 17
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 19
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 20
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/BootNotificationMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v1.0"

    .line 24
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v1, Lcom/hp/vd/module/Constants;->INTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    const/4 v1, -0x3

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "BootNotificationMonitor"

    return-object v0
.end method

.method public install(Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x32

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/BootNotificationMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    .line 54
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/BootNotificationMonitor;->status:Z

    return v0
.end method

.method public start()Z
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hp/vd/module/monitor/boot/BootRunnable;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/BootNotificationMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-direct {v1, v2, p0}, Lcom/hp/vd/module/monitor/boot/BootRunnable;-><init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/module/monitor/BootNotificationMonitor;)V

    const-string v2, "Boot-Notification-Runnable"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 1

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/BootNotificationMonitor;->status:Z

    const/4 v0, 0x1

    return v0
.end method
