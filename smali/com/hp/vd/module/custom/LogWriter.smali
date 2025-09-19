.class public Lcom/hp/vd/module/custom/LogWriter;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "LogWriter.java"

# interfaces
.implements Lcom/hp/vd/agent/log/IWriter;


# static fields
.field protected static final ATTRIBUTE_MIN_LOG_LEVEL:Ljava/lang/String; = "min_log_level"

.field protected static final COMMAND_UPDATE_MIN_LOG_LEVEL:Ljava/lang/String; = "update_min_log_level"

.field protected static final PARAMETER_NEW_MIN_LOG_LEVEL:Ljava/lang/String; = "new_min_log_level"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/ClientLogData;",
            ">;"
        }
    .end annotation
.end field

.field protected clientLogDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ClientLogData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected minLogLevel:Ljava/lang/Integer;

.field protected running:Ljava/lang/Boolean;

.field protected writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/QueueConsumerDao<",
            "Lcom/hp/vd/data/ClientLogData;",
            ">;"
        }
    .end annotation
.end field

.field protected writerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/custom/LogWriter;->running:Ljava/lang/Boolean;

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->minLogLevel:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->clientLogDao:Lcom/j256/ormlite/dao/Dao;

    .line 49
    iput-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 50
    iput-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 51
    iput-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->writerThread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 13
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

    move-object v8, p0

    move-object v1, p2

    .line 178
    iget-object v2, v8, Lcom/hp/vd/module/custom/LogWriter;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "ModuleAbstract"

    const-string v4, "dispatch() called."

    .line 179
    invoke-interface {v2, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 181
    invoke-virtual {v8}, Lcom/hp/vd/module/custom/LogWriter;->isActivated()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 192
    :cond_0
    invoke-virtual {v8}, Lcom/hp/vd/module/custom/LogWriter;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getModules()Ljava/util/List;

    move-result-object v3

    .line 194
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 195
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hp/vd/module/IModule;

    .line 196
    invoke-interface {v5}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v7

    const-string v9, "type"

    invoke-virtual {v7, v9}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v9, "command-response-dispatcher"

    .line 198
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_2
    move-object v5, v6

    :goto_0
    const/4 v3, 0x3

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    const/4 v9, 0x6

    .line 207
    :try_start_0
    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v7

    const/4 v10, 0x2

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v3

    const/4 v10, 0x4

    const-class v11, Ljava/util/Date;

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-class v11, Ljava/util/Date;

    aput-object v11, v9, v10

    .line 216
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "dispatchResponse"

    .line 217
    invoke-virtual {v10, v11, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v9

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    const-string v10, "ModuleAbstract"

    const-string v11, "dispatch(): NoSuchMethodException caught when getting dispatchResponse()."

    .line 220
    invoke-interface {v2, v10, v11, v9}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_3
    :goto_1
    const-string v9, "update_min_log_level"

    move-object v10, p1

    .line 228
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, v7, :cond_6

    const-string v9, "new_min_log_level"

    .line 230
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v1, "ModuleAbstract"

    const-string v3, "dispatch(): No \'new_min_log_level\' parameter was specified but it is required for this command."

    .line 231
    invoke-interface {v2, v1, v3, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 237
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 243
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 245
    invoke-virtual {v9}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v1, v8

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, p3

    move-object v5, v7

    move-object v6, v10

    move-object v7, v11

    .line 239
    invoke-virtual/range {v1 .. v7}, Lcom/hp/vd/module/custom/LogWriter;->returnResponse(Lcom/hp/vd/module/IModule;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 248
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 258
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Lcom/hp/vd/module/custom/LogWriter;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const-string v11, "min_log_level"

    const-string v12, "new_min_log_level"

    .line 277
    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 280
    invoke-virtual {v8, v9}, Lcom/hp/vd/module/custom/LogWriter;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v11

    if-ne v7, v11, :cond_5

    const-string v1, "min_log_level"

    .line 281
    invoke-virtual {v9, v1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v8, Lcom/hp/vd/module/custom/LogWriter;->minLogLevel:Ljava/lang/Integer;

    .line 283
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_2
    move-object v9, v4

    goto :goto_3

    :cond_5
    const-string v7, "ModuleAbstract"

    .line 286
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There was an error updating the min_log_level in the database to "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "new_min_log_level"

    .line 288
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-interface {v2, v7, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_2

    .line 297
    :goto_3
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 299
    invoke-virtual {v9}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v1, v8

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, p3

    move-object v5, v7

    move-object v6, v10

    move-object v7, v11

    .line 293
    invoke-virtual/range {v1 .. v7}, Lcom/hp/vd/module/custom/LogWriter;->returnResponse(Lcom/hp/vd/module/IModule;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :catch_1
    move-exception v0

    const-string v1, "ModuleAbstract"

    const-string v3, "Could not load persisted module data"

    .line 261
    invoke-interface {v2, v1, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 263
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 269
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 271
    invoke-virtual {v9}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v1, v8

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, p3

    move-object v5, v7

    move-object v6, v10

    move-object v7, v11

    .line 265
    invoke-virtual/range {v1 .. v7}, Lcom/hp/vd/module/custom/LogWriter;->returnResponse(Lcom/hp/vd/module/IModule;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 274
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_6
    return v4
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

    .line 57
    const-class v0, Lcom/hp/vd/data/ClientLogData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 86
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 88
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 89
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/LogWriter;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x3

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v3.0"

    .line 93
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "log-writer"

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "min_log_level"

    const-string v2, "1"

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v1, Lcom/hp/vd/module/Constants;->INTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    const/4 v1, -0x2

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "LogWriter"

    return-object v0
.end method

.method public initialize()Z
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/LogWriter;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/custom/LogWriter;->clientLogDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 130
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/LogWriter;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    const-string v3, "min_log_level"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/custom/LogWriter;->minLogLevel:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->minLogLevel:Ljava/lang/Integer;

    .line 161
    :goto_0
    new-instance v0, Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v0}, Lcom/hp/vd/data/concurrency/BlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v2

    const-string v3, "ModuleAbstract"

    const-string v4, "initialize(): could not load persisted module data."

    .line 133
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_2
    move-exception v2

    const-string v3, "ModuleAbstract"

    const-string v4, "initialize(): could not instantiate clientData Dao"

    .line 124
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_3
    move-exception v2

    const-string v3, "ModuleAbstract"

    const-string v4, "initialize(): could not instantiate clientData Dao"

    .line 119
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/LogWriter;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "ModuleAbstract"

    const-string v2, "install() called."

    .line 64
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 70
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0xfa

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/custom/LogWriter;->setDataReadLimit(Ljava/lang/Integer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public isDispatchable()Z
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/LogWriter;->isActivated()Z

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

    .line 356
    iget-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->running:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->writerThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    return v1

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method protected localLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    .line 436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 438
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 439
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 440
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 443
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 446
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 447
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 449
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 450
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 452
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 453
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    :cond_5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_6

    .line 456
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return-void
.end method

.method protected returnResponse(Lcom/hp/vd/module/IModule;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 469
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/LogWriter;->getContext()Lcom/hp/vd/context/Context;

    move-result-object p4

    invoke-virtual {p4}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object p4

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "ModuleAbstract"

    const-string p2, "dispatch(): no commandResponseDispatcher found! No resposne will be ever returned."

    .line 472
    invoke-interface {p4, p1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "ModuleAbstract"

    const-string p2, "dispatch(): no methodDispatchResponse found! No resposne will be ever returned."

    .line 482
    invoke-interface {p4, p1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    :cond_1
    const/4 v2, 0x6

    .line 492
    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 494
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 p3, 0x2

    aput-object p5, v2, p3

    aput-object p6, v2, v0

    const/4 p3, 0x4

    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    aput-object p5, v2, p3

    const/4 p3, 0x5

    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    aput-object p5, v2, p3

    .line 501
    invoke-virtual {p2, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    const-string p2, "ModuleAbstract"

    const-string p3, "dispatch(): NullPointerException caught while returning response."

    .line 512
    invoke-interface {p4, p2, p3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "ModuleAbstract"

    const-string p3, "dispatch(): InvocationTargetException caught while returning response."

    .line 509
    invoke-interface {p4, p2, p3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_2
    move-exception p1

    const-string p2, "ModuleAbstract"

    const-string p3, "dispatch(): IllegalAccessException caught while returning response."

    .line 506
    invoke-interface {p4, p2, p3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return v1
.end method

.method public start()Z
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 313
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/LogWriter;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/custom/LogWriter;->writerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/hp/vd/module/custom/LogWriter;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 322
    :cond_1
    new-instance v1, Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    iget-object v2, p0, Lcom/hp/vd/module/custom/LogWriter;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v3, p0, Lcom/hp/vd/module/custom/LogWriter;->clientLogDao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v1, v2, v3, v0}, Lcom/hp/vd/data/concurrency/QueueConsumerDao;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/custom/LogWriter;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 324
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/hp/vd/module/custom/LogWriter;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const-string v2, "Writer-Queue-ClientLog"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->writerThread:Ljava/lang/Thread;

    .line 325
    iget-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 327
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/custom/LogWriter;->running:Ljava/lang/Boolean;

    return v0
.end method

.method public stop()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->writerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x0

    .line 341
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->running:Ljava/lang/Boolean;

    const/4 v0, 0x1

    return v0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 415
    invoke-virtual {p0, p1, p2, v0}, Lcom/hp/vd/module/custom/LogWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/hp/vd/module/custom/LogWriter;->minLogLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p3, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 392
    :cond_0
    new-instance v0, Lcom/hp/vd/data/ClientLogData;

    invoke-direct {v0}, Lcom/hp/vd/data/ClientLogData;-><init>()V

    .line 394
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/LogWriter;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getInstance()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ClientLogData;->instance:Ljava/lang/String;

    .line 395
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/LogWriter;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getSession()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ClientLogData;->session:Ljava/lang/String;

    .line 396
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ClientLogData;->threadId:Ljava/lang/Integer;

    .line 397
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ClientLogData;->threadName:Ljava/lang/String;

    .line 399
    iput-object p1, v0, Lcom/hp/vd/data/ClientLogData;->type:Ljava/lang/String;

    .line 400
    iput-object p2, v0, Lcom/hp/vd/data/ClientLogData;->content:Ljava/lang/String;

    .line 401
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/hp/vd/data/ClientLogData;->code:Ljava/lang/Integer;

    .line 403
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, v0, Lcom/hp/vd/data/ClientLogData;->createdAt:Ljava/util/Date;

    .line 409
    iget-object p1, p0, Lcom/hp/vd/module/custom/LogWriter;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {p1, v0}, Lcom/hp/vd/data/concurrency/BlockingQueue;->put(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 1

    const/4 v0, 0x4

    .line 427
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hp/vd/module/custom/LogWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)Z

    move-result p1

    return p1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)Z
    .locals 1

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/hp/vd/module/custom/LogWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
