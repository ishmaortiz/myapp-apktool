.class public Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;
.super Ljava/lang/Object;
.source "SynchronizationCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "TextSynchronizationCallable"


# instance fields
.field protected connectionManager:Lcom/hp/vd/connection/IManager;

.field protected context:Lcom/hp/vd/context/Context;

.field protected textSynchronizer:Lcom/hp/vd/module/synchronizer/TextSynchronizer;

.field protected transactionId:I


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/synchronizer/TextSynchronizer;Lcom/hp/vd/context/Context;Lcom/hp/vd/connection/IManager;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;->textSynchronizer:Lcom/hp/vd/module/synchronizer/TextSynchronizer;

    .line 44
    iput-object p2, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;->context:Lcom/hp/vd/context/Context;

    .line 45
    iput-object p3, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;->connectionManager:Lcom/hp/vd/connection/IManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 67
    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "priority_synchronization"

    const/4 v5, 0x1

    .line 69
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 70
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 72
    new-instance v6, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v6}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 73
    new-instance v7, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v7}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    :try_start_1
    const-string v8, "type"

    .line 79
    invoke-virtual {v4, v8, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 80
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    const-string v8, "custom"

    .line 81
    invoke-virtual {v4, v8, v7}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 84
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v3

    const-string v4, "monitor"

    .line 87
    invoke-virtual {v6, v4}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    const-string v4, "%data=text%"

    .line 88
    invoke-virtual {v7, v4}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 99
    :try_start_2
    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v2
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 111
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    const-string v3, "TextSynchronizationCallable"

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No monitoring modules (custom=text) were found [size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v1

    .line 122
    :cond_0
    new-instance v3, Lcom/hp/vd/data/container/DaoContainer;

    invoke-direct {v3}, Lcom/hp/vd/data/container/DaoContainer;-><init>()V

    .line 124
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hp/vd/data/ModuleData;

    const-string v6, "TextSynchronizationCallable"

    .line 125
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Gathering data from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", v: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 132
    iget-object v6, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;->context:Lcom/hp/vd/context/Context;

    iget-object v7, v4, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/hp/vd/context/Context;->getModule(Ljava/lang/String;)Lcom/hp/vd/module/IModule;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "TextSynchronizationCallable"

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start(): cannot find instance of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in the started modules (from the context)"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 141
    :cond_1
    :try_start_3
    invoke-interface {v6}, Lcom/hp/vd/module/IModule;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v7, "TextSynchronizationCallable"

    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dao == NULL for module: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v7, v4, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v3, v7}, Lcom/hp/vd/data/container/DaoContainer;->add(Lcom/j256/ormlite/dao/Dao;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v7, "TextSynchronizationCallable"

    .line 152
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call(): could not get DAO for module: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-interface {v6}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v6

    iget-object v6, v6, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Skipping it."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    invoke-interface {v0, v7, v6, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    .line 168
    :cond_3
    invoke-virtual {v3}, Lcom/hp/vd/data/container/DaoContainer;->iterator()Lcom/hp/vd/data/container/iterator/DaoIterator;

    move-result-object v2

    .line 169
    iget-object v3, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/container/iterator/DaoIterator;->setContext(Lcom/hp/vd/context/Context;)V

    .line 171
    new-instance v3, Lcom/hp/vd/data/reader/InputStreamWithRootElement;

    invoke-direct {v3, v2}, Lcom/hp/vd/data/reader/InputStreamWithRootElement;-><init>(Ljava/util/Iterator;)V

    .line 172
    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;->connectionManager:Lcom/hp/vd/connection/IManager;

    const-string v4, "data"

    invoke-interface {v2, v4, v3}, Lcom/hp/vd/connection/IManager;->addPart(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 178
    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;->connectionManager:Lcom/hp/vd/connection/IManager;

    invoke-interface {v2}, Lcom/hp/vd/connection/IManager;->send()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "TextSynchronizationCallable"

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call(): result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 181
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 182
    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;->textSynchronizer:Lcom/hp/vd/module/synchronizer/TextSynchronizer;

    invoke-virtual {v2}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->synchronizationCompleted()V

    .line 184
    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/text/SynchronizationCallable;->connectionManager:Lcom/hp/vd/connection/IManager;

    invoke-interface {v2}, Lcom/hp/vd/connection/IManager;->postDispatch()Z

    move-result v2

    const-string v3, "TextSynchronizationCallable"

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call(): postDispatch() returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v1

    .line 188
    :cond_4
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "call(): Sending data failed."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v2

    const-string v3, "TextSynchronizationCallable"

    const-string v4, "call(): exception caught during module selection from the database."

    .line 102
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v1

    :catch_2
    move-exception v2

    const-string v3, "TextSynchronizationCallable"

    const-string v4, "call(): exception caught during preparing the SELECT clause."

    .line 91
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v1

    :catch_3
    move-exception v2

    const-string v3, "TextSynchronizationCallable"

    const-string v4, "call(): could not get moduleDao"

    .line 62
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v1
.end method
