.class public Lcom/hp/vd/module/custom/Insomnia;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "Insomnia.java"


# instance fields
.field protected headLayer:Lcom/hp/vd/module/custom/insomnia/HeadLayer;

.field protected status:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/hp/vd/module/custom/Insomnia;->status:Z

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/hp/vd/module/custom/Insomnia;->headLayer:Lcom/hp/vd/module/custom/insomnia/HeadLayer;

    return-void
.end method


# virtual methods
.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 65
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "custom"

    .line 67
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 68
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    const-string v1, "Insomnia"

    .line 70
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v1.0"

    .line 72
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, ""

    .line 73
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 75
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    const/4 v1, -0x5

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "Insomnia"

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/hp/vd/module/custom/Insomnia;->status:Z

    return v0
.end method

.method public start()Z
    .locals 4

    .line 87
    :try_start_0
    new-instance v0, Lcom/hp/vd/module/custom/insomnia/HeadLayer;

    iget-object v1, p0, Lcom/hp/vd/module/custom/Insomnia;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/module/custom/insomnia/HeadLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hp/vd/module/custom/Insomnia;->headLayer:Lcom/hp/vd/module/custom/insomnia/HeadLayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 90
    iget-object v1, p0, Lcom/hp/vd/module/custom/Insomnia;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "ModuleAbstract"

    const-string v3, "start(): Exception caught"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public stop()Z
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/hp/vd/module/custom/Insomnia;->status:Z

    .line 103
    iget-object v0, p0, Lcom/hp/vd/module/custom/Insomnia;->headLayer:Lcom/hp/vd/module/custom/insomnia/HeadLayer;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/hp/vd/module/custom/Insomnia;->headLayer:Lcom/hp/vd/module/custom/insomnia/HeadLayer;

    invoke-virtual {v0}, Lcom/hp/vd/module/custom/insomnia/HeadLayer;->destroy()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
