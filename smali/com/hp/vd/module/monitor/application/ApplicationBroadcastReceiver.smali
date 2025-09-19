.class public Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;
.super Lcom/hp/vd/module/ActivatableBroadcastReceiverAbstract;
.source "ApplicationBroadcastReceiver.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "ApplicationBroadcastReceiver"


# instance fields
.field protected active:Z

.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/ApplicationData;",
            ">;"
        }
    .end annotation
.end field

.field protected log:Lcom/hp/vd/agent/log/IWriter;


# direct methods
.method public constructor <init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/ApplicationData;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lcom/hp/vd/module/ActivatableBroadcastReceiverAbstract;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;->active:Z

    .line 34
    iput-object p1, p0, Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 35
    iput-object p2, p0, Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 41
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object p1, p0, Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "ApplicationBroadcastReceiver"

    const-string v0, "onReceive() called but module is DEactivated."

    invoke-interface {p1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 59
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    aget-object p2, p2, v0

    const/16 v0, 0x80

    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 79
    new-instance v1, Lcom/hp/vd/data/ApplicationData;

    invoke-direct {v1}, Lcom/hp/vd/data/ApplicationData;-><init>()V

    const-string v2, "\\n"

    const-string v3, " "

    .line 81
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/hp/vd/data/ApplicationData;->name:Ljava/lang/String;

    .line 82
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object p1, v1, Lcom/hp/vd/data/ApplicationData;->packageName:Ljava/lang/String;

    .line 83
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, v1, Lcom/hp/vd/data/ApplicationData;->versionName:Ljava/lang/String;

    .line 84
    iget p1, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/hp/vd/data/ApplicationData;->versionCode:Ljava/lang/String;

    .line 85
    iget-object p1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object p1, v1, Lcom/hp/vd/data/ApplicationData;->url:Ljava/lang/String;

    .line 86
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v1, Lcom/hp/vd/data/ApplicationData;->installedAt:Ljava/util/Date;

    .line 88
    iget-object p1, p0, Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {p1, v1}, Lcom/hp/vd/data/concurrency/BlockingQueue;->put(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "ApplicationBroadcastReceiver"

    const-string v0, "BroadcastReceiver: cannot get applicationInformation."

    const/4 v1, 0x3

    invoke-interface {p1, p2, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    iget-object p2, p0, Lcom/hp/vd/module/monitor/application/ApplicationBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "ApplicationBroadcastReceiver"

    const-string v1, "Exception caught."

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method
