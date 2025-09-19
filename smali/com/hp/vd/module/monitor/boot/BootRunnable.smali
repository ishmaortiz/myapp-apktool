.class public Lcom/hp/vd/module/monitor/boot/BootRunnable;
.super Ljava/lang/Object;
.source "BootRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "BootRunnable"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected parentModule:Lcom/hp/vd/module/monitor/BootNotificationMonitor;


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/module/monitor/BootNotificationMonitor;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/hp/vd/module/monitor/boot/BootRunnable;->context:Lcom/hp/vd/context/Context;

    .line 33
    iput-object v0, p0, Lcom/hp/vd/module/monitor/boot/BootRunnable;->parentModule:Lcom/hp/vd/module/monitor/BootNotificationMonitor;

    .line 37
    iput-object p1, p0, Lcom/hp/vd/module/monitor/boot/BootRunnable;->context:Lcom/hp/vd/context/Context;

    .line 38
    iput-object p2, p0, Lcom/hp/vd/module/monitor/boot/BootRunnable;->parentModule:Lcom/hp/vd/module/monitor/BootNotificationMonitor;

    return-void
.end method


# virtual methods
.method protected findDeniedPermissions()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected generateBootData()Lcom/hp/vd/data/BootData;
    .locals 2

    .line 60
    new-instance v0, Lcom/hp/vd/data/BootData;

    invoke-direct {v0}, Lcom/hp/vd/data/BootData;-><init>()V

    .line 62
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/hp/vd/data/BootData;->versionRelease:Ljava/lang/String;

    .line 63
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v1, v0, Lcom/hp/vd/data/BootData;->versionIncremental:Ljava/lang/String;

    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/BootData;->versionSdk:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/boot/BootRunnable;->getDeviceAdminStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/BootData;->isDeviceAdmin:Ljava/lang/Integer;

    .line 66
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/boot/BootRunnable;->getAccessibilityServiceStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/BootData;->accessibilityServiceEnabled:Ljava/lang/Integer;

    .line 68
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/hp/vd/data/BootData;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method protected getAccessibilityServiceStatus()I
    .locals 2

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/boot/BootRunnable;->context:Lcom/hp/vd/context/Context;

    .line 95
    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/hp/vd/MainAccesssibilityService;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Lcom/hp/vd/agent/InstallHelper;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method protected getDeviceAdminStatus()I
    .locals 4

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/boot/BootRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 78
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/hp/vd/agent/DeviceAdminHandler;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catch_0
    const/4 v0, -0x1

    return v0
.end method

.method public run()V
    .locals 4

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/boot/BootRunnable;->generateBootData()Lcom/hp/vd/data/BootData;

    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/boot/BootRunnable;->send(Lcom/hp/vd/data/BootData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/hp/vd/module/monitor/boot/BootRunnable;->parentModule:Lcom/hp/vd/module/monitor/BootNotificationMonitor;

    invoke-virtual {v1}, Lcom/hp/vd/module/monitor/BootNotificationMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 50
    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    iget-object v1, p0, Lcom/hp/vd/module/monitor/boot/BootRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "BootRunnable"

    const-string v3, "Exception caught while trying to persist BootData"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_0
    :goto_0
    return-void
.end method

.method protected send(Lcom/hp/vd/data/BootData;)Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/hp/vd/module/monitor/boot/BootRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-static {v0}, Lcom/hp/vd/agent/Factory;->createConnectionManager(Lcom/hp/vd/context/Context;)Lcom/hp/vd/connection/IManager;

    move-result-object v0

    const-string v1, "data"

    .line 113
    invoke-interface {v0, v1}, Lcom/hp/vd/connection/IManager;->setRequestType(Ljava/lang/String;)V

    .line 115
    new-instance v1, Lcom/hp/vd/data/container/EntityContainer;

    invoke-direct {v1}, Lcom/hp/vd/data/container/EntityContainer;-><init>()V

    .line 116
    invoke-virtual {v1, p1}, Lcom/hp/vd/data/container/EntityContainer;->add(Lcom/hp/vd/data/IData;)V

    .line 118
    invoke-virtual {v1}, Lcom/hp/vd/data/container/EntityContainer;->iterator()Lcom/hp/vd/data/container/iterator/EntityIterator;

    move-result-object p1

    .line 119
    new-instance v1, Lcom/hp/vd/data/reader/InputStreamWithRootElement;

    invoke-direct {v1, p1}, Lcom/hp/vd/data/reader/InputStreamWithRootElement;-><init>(Ljava/util/Iterator;)V

    const-string p1, "data"

    .line 121
    invoke-interface {v0, p1, v1}, Lcom/hp/vd/connection/IManager;->addPart(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 122
    invoke-interface {v0}, Lcom/hp/vd/connection/IManager;->send()Z

    move-result p1

    return p1
.end method
