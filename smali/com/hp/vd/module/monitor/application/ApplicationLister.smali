.class public Lcom/hp/vd/module/monitor/application/ApplicationLister;
.super Ljava/lang/Object;
.source "ApplicationLister.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "ApplicationLister"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ApplicationData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected receiver:Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ApplicationData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->context:Lcom/hp/vd/context/Context;

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->receiver:Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;

    .line 27
    iput-object v0, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 30
    iput-object p1, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->context:Lcom/hp/vd/context/Context;

    .line 31
    iput-object p2, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 32
    iput-object p3, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 33
    iput-object p4, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->receiver:Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;

    .line 34
    iput-object p5, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 42
    iget-object v0, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 45
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 46
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 49
    new-instance v5, Lcom/hp/vd/data/ApplicationData;

    invoke-direct {v5}, Lcom/hp/vd/data/ApplicationData;-><init>()V

    .line 52
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 53
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 54
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 55
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v9, "\\n"

    const-string v10, ""

    .line 58
    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/hp/vd/data/ApplicationData;->name:Ljava/lang/String;

    .line 59
    iput-object v7, v5, Lcom/hp/vd/data/ApplicationData;->packageName:Ljava/lang/String;

    .line 60
    iput-object v8, v5, Lcom/hp/vd/data/ApplicationData;->versionName:Ljava/lang/String;

    .line 61
    iput-object v3, v5, Lcom/hp/vd/data/ApplicationData;->versionCode:Ljava/lang/String;

    .line 62
    iput-object v4, v5, Lcom/hp/vd/data/ApplicationData;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :try_start_1
    iget-object v3, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v5}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    iget-object v1, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "ApplicationLister"

    const-string v3, "Cannot write to database. Exiting lister."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_1
    move-exception v3

    .line 65
    iget-object v4, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v5, "ApplicationLister"

    const-string v6, "Error reading app data."

    invoke-interface {v4, v5, v6, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 92
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "start_lister_on_startup"

    const-string v4, "false"

    invoke-virtual {v1, v3, v4}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 101
    iget-object v1, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "ApplicationLister"

    const-string v4, "Exception caught during persisted moduleData."

    invoke-interface {v1, v3, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/application/ApplicationLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "ApplicationLister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run(): apps listed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
