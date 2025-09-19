.class public Lcom/hp/vd/module/custom/CommandResponseDispatcher;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "CommandResponseDispatcher.java"


# static fields
.field public static final TYPE_COMMAND_RESPONSE_DISPACTHER:Ljava/lang/String; = "command-response-dispatcher"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/CommandResponseData;",
            ">;"
        }
    .end annotation
.end field

.field protected commandResponseDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/CommandResponseData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected running:Ljava/lang/Boolean;

.field protected writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/QueueConsumerDao<",
            "Lcom/hp/vd/data/CommandResponseData;",
            ">;"
        }
    .end annotation
.end field

.field protected writerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->running:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->commandResponseDao:Lcom/j256/ormlite/dao/Dao;

    .line 35
    iput-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 36
    iput-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 37
    iput-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->writerThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 125
    iget-object p1, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object p1

    const-string p2, "ModuleAbstract"

    const-string p3, "dispatch() called."

    .line 126
    invoke-interface {p1, p2, p3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 128
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->isActivated()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    return p2
.end method

.method public dispatchResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Z
    .locals 1

    .line 208
    new-instance v0, Lcom/hp/vd/data/CommandResponseData;

    invoke-direct {v0}, Lcom/hp/vd/data/CommandResponseData;-><init>()V

    .line 210
    iput-object p1, v0, Lcom/hp/vd/data/CommandResponseData;->commandId:Ljava/lang/String;

    .line 212
    iput-object p2, v0, Lcom/hp/vd/data/CommandResponseData;->packageName:Ljava/lang/String;

    .line 213
    iput-object p3, v0, Lcom/hp/vd/data/CommandResponseData;->name:Ljava/lang/String;

    .line 215
    iput-object p4, v0, Lcom/hp/vd/data/CommandResponseData;->result:Ljava/lang/String;

    .line 217
    iput-object p5, v0, Lcom/hp/vd/data/CommandResponseData;->receivedAt:Ljava/util/Date;

    .line 218
    iput-object p6, v0, Lcom/hp/vd/data/CommandResponseData;->executedAt:Ljava/util/Date;

    .line 224
    iget-object p1, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->context:Lcom/hp/vd/context/Context;

    invoke-static {p1}, Lcom/hp/vd/agent/Factory;->createConnectionManager(Lcom/hp/vd/context/Context;)Lcom/hp/vd/connection/IManager;

    move-result-object p1

    const-string p2, "data"

    .line 225
    invoke-interface {p1, p2}, Lcom/hp/vd/connection/IManager;->setRequestType(Ljava/lang/String;)V

    .line 227
    new-instance p2, Lcom/hp/vd/data/container/EntityContainer;

    invoke-direct {p2}, Lcom/hp/vd/data/container/EntityContainer;-><init>()V

    .line 228
    invoke-virtual {p2, v0}, Lcom/hp/vd/data/container/EntityContainer;->add(Lcom/hp/vd/data/IData;)V

    .line 230
    invoke-virtual {p2}, Lcom/hp/vd/data/container/EntityContainer;->iterator()Lcom/hp/vd/data/container/iterator/EntityIterator;

    move-result-object p2

    .line 231
    new-instance p3, Lcom/hp/vd/data/reader/InputStreamWithRootElement;

    invoke-direct {p3, p2}, Lcom/hp/vd/data/reader/InputStreamWithRootElement;-><init>(Ljava/util/Iterator;)V

    const-string p2, "data"

    .line 233
    invoke-interface {p1, p2, p3}, Lcom/hp/vd/connection/IManager;->addPart(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 234
    invoke-interface {p1}, Lcom/hp/vd/connection/IManager;->send()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    return p2

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {p1, v0}, Lcom/hp/vd/data/concurrency/BlockingQueue;->put(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 43
    const-class v0, Lcom/hp/vd/data/CommandResponseData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 72
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 74
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 75
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v1.0"

    .line 79
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "type=command-response-dispatcher;data=text;"

    .line 80
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 82
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    const/4 v1, -0x1

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "CommandResponseDispatcher"

    return-object v0
.end method

.method public initialize()Z
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->commandResponseDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    new-instance v0, Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v0}, Lcom/hp/vd/data/concurrency/BlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "ModuleAbstract"

    const-string v3, "initialize(): could not instantiate CommandResponseData Dao"

    .line 99
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 49
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "ModuleAbstract"

    const-string v2, "install() called."

    .line 50
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x1f4

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->setDataReadLimit(Ljava/lang/Integer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public isDispatchable()Z
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->running:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->writerThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    return v1

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->writerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 149
    :cond_1
    new-instance v1, Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    iget-object v2, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v3, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->commandResponseDao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v1, v2, v3, v0}, Lcom/hp/vd/data/concurrency/QueueConsumerDao;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 151
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const-string v2, "Writer-Queue-CommandResponse"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->writerThread:Ljava/lang/Thread;

    .line 152
    iget-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 154
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->running:Ljava/lang/Boolean;

    return v0
.end method

.method public stop()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->writerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    .line 168
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/custom/CommandResponseDispatcher;->running:Ljava/lang/Boolean;

    const/4 v0, 0x1

    return v0
.end method
