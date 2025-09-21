.class public Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;
.super Ljava/lang/Object;
.source "SynchronizationRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "FileSynchronizationRunnable"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected fileSynchronizer:Lcom/hp/vd/module/synchronizer/FileSynchronizer;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/synchronizer/FileSynchronizer;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/context/Context;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->fileSynchronizer:Lcom/hp/vd/module/synchronizer/FileSynchronizer;

    .line 43
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 44
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    .line 45
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 49
    iput-object p1, p0, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->fileSynchronizer:Lcom/hp/vd/module/synchronizer/FileSynchronizer;

    .line 50
    iput-object p2, p0, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 51
    iput-object p3, p0, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    .line 52
    iput-object p4, p0, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method

.method private reopenDao(Lcom/hp/vd/module/IModule;)Lcom/j256/ormlite/dao/Dao;
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    const-class v3, Lcom/hp/vd/data/persistency/DatabaseHelper;

    invoke-static {v2, v3}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v2

    check-cast v2, Lcom/hp/vd/data/persistency/DatabaseHelper;

    iget-object v3, p0, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v3, v2}, Lcom/hp/vd/context/Context;->setHelper(Lcom/hp/vd/data/persistency/DatabaseHelper;)V

    :cond_1
    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    :cond_2
    instance-of v2, p1, Lcom/hp/vd/module/ModuleAbstract;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/hp/vd/module/ModuleAbstract;

    invoke-virtual {v2}, Lcom/hp/vd/module/ModuleAbstract;->resetDao()V

    :cond_3
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "FileSynchronizationRunnable"

    const-string v4, "reopenDao(): failed to re-establish database helper."

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    .line 57
    iget-object v2, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-static {v2}, Lcom/hp/vd/agent/Factory;->createConnectionManager(Lcom/hp/vd/context/Context;)Lcom/hp/vd/connection/IManager;

    move-result-object v2

    .line 68
    iget-object v3, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "allow_upload_on_mobile_internet"

    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 72
    :goto_0
    invoke-interface {v2, v3}, Lcom/hp/vd/connection/IManager;->isEndpointAvailable(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 73
    iget-object v2, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "FileSynchronizationRunnable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No endpoint available. Skipping File synchronization cycle for channel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_1
    const-string v6, "data"

    .line 81
    invoke-interface {v2, v6}, Lcom/hp/vd/connection/IManager;->setRequestType(Ljava/lang/String;)V

    .line 90
    :try_start_0
    iget-object v6, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v6}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v6
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_b

    .line 125
    :try_start_1
    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v7

    const-string v8, "priority_synchronization"

    .line 127
    invoke-virtual {v7, v8, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 128
    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    .line 130
    new-instance v9, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v9}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 131
    new-instance v10, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v10}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    const-string v11, "type"

    .line 134
    invoke-virtual {v8, v11, v9}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 135
    invoke-virtual {v8}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    const-string v11, "custom"

    .line 136
    invoke-virtual {v8, v11, v10}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 143
    invoke-virtual {v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v7

    const-string v8, "monitor"

    .line 146
    invoke-virtual {v9, v8}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    const-string v8, "%data=file%"

    .line 147
    invoke-virtual {v10, v8}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    .line 151
    invoke-interface {v6, v7}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v6
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9

    const/4 v7, 0x3

    if-nez v6, :cond_2

    .line 177
    iget-object v2, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "FileSynchronizationRunnable"

    const-string v4, "CRITICAL ERROR: modules is NULL. Skipping synchronization cycle."

    invoke-interface {v2, v3, v4, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 186
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_3

    .line 187
    iget-object v2, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "FileSynchronizationRunnable"

    const-string v4, "No monitoring modules (custom=file) were found."

    invoke-interface {v2, v3, v4, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 200
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/hp/vd/data/ModuleData;

    .line 201
    iget-object v9, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v10, "FileSynchronizationRunnable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Handling module: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 207
    iget-object v9, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    iget-object v10, v8, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/hp/vd/context/Context;->hasModule(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 208
    iget-object v9, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v10, "FileSynchronizationRunnable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The module: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " could not be found in the context. Skipping it."

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v10, v8, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 217
    :cond_4
    iget-object v9, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->context:Lcom/hp/vd/context/Context;

    iget-object v10, v8, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/hp/vd/context/Context;->getModule(Ljava/lang/String;)Lcom/hp/vd/module/IModule;

    move-result-object v9

    if-nez v9, :cond_5

    .line 220
    iget-object v9, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v10, "FileSynchronizationRunnable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The module: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " pulled from the context is NULL. Skipping it."

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v10, v8, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 236
    :cond_5
    move-object/from16 v18, v9

    :try_start_2
    invoke-interface {v9}, Lcom/hp/vd/module/IModule;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v9
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_8

    .line 253
    :try_start_3
    iget-object v10, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v11, "FileSynchronizationRunnable"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Records for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_c

    :catch_c
    move-exception v0

    iget-object v10, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v11, "FileSynchronizationRunnable"

    const-string v12, "run(): DAO access failed because the database was closed. Re-opening."

    invoke-interface {v10, v11, v12, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-object/from16 v10, v18

    invoke-direct {v1, v10}, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->reopenDao(Lcom/hp/vd/module/IModule;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v9

    if-nez v9, :cond_5_recount

    iget-object v10, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v11, "FileSynchronizationRunnable"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not reopen DAO for module: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ". Skipping it."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_6

    :cond_5_recount
    :try_start_recount
    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->countOf()J

    move-result-wide v13

    iget-object v10, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v11, "FileSynchronizationRunnable"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Records for "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v8, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " ="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " (reopened)"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_recount
    .catch Ljava/lang/Throwable; {:try_start_recount .. :try_end_recount} :catch_d

    goto :cond_5_success

    :catch_d
    move-exception v0

    iget-object v10, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v11, "FileSynchronizationRunnable"

    const-string v12, "run(): Retrying after reopening helper failed. Skipping module."

    invoke-interface {v10, v11, v12, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_6

    :cond_5_success

    .line 266
    :try_start_4
    invoke-interface {v9}, Lcom/j256/ormlite/dao/Dao;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hp/vd/data/IData;

    .line 272
    new-instance v11, Ljava/io/File;

    invoke-interface {v10}, Lcom/hp/vd/data/IData;->getUrl()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v12

    if-nez v12, :cond_6

    .line 275
    iget-object v11, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v12, "FileSynchronizationRunnable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The file at: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-interface {v10}, Lcom/hp/vd/data/IData;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is not a file. Skipping this record."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 275
    invoke-interface {v11, v12, v13, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_5

    .line 282
    :try_start_5
    invoke-interface {v9, v10}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2

    :catch_0
    move-exception v0

    .line 285
    :try_start_6
    iget-object v10, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v11, "FileSynchronizationRunnable"

    const-string v12, "Could not delete a file (which is not a file) from DAO"

    invoke-interface {v10, v11, v12, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_2

    .line 291
    :cond_6
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_7

    .line 292
    iget-object v11, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v12, "FileSynchronizationRunnable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The file at: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-interface {v10}, Lcom/hp/vd/data/IData;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is does not exist. Skipping this record."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 292
    invoke-interface {v11, v12, v13, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 299
    :try_start_7
    invoke-interface {v9, v10}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    :catch_1
    move-exception v0

    .line 302
    :try_start_8
    iget-object v10, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v11, "FileSynchronizationRunnable"

    const-string v12, "Could not delete a file (which does not exist) from DAO"

    invoke-interface {v10, v11, v12, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto/16 :goto_2

    .line 308
    :cond_7
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-nez v16, :cond_8

    .line 309
    iget-object v11, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v12, "FileSynchronizationRunnable"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The file at: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-interface {v10}, Lcom/hp/vd/data/IData;->getUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is long 0L bytes. Probably a non-existing file, device or pipe. Skipping this record."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 309
    invoke-interface {v11, v12, v13, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_5

    .line 316
    :try_start_9
    invoke-interface {v9, v10}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_2

    :catch_2
    move-exception v0

    .line 319
    :try_start_a
    iget-object v10, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v11, "FileSynchronizationRunnable"

    const-string v12, "Could not delete a file (which is 0L bytes long) from DAO"

    invoke-interface {v10, v11, v12, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto/16 :goto_2

    .line 325
    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    iget-object v14, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v15, "max_file_upload_size"

    invoke-virtual {v14, v15}, Lcom/hp/vd/data/ModuleData;->customGetLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-lez v16, :cond_9

    .line 326
    iget-object v12, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v13, "FileSynchronizationRunnable"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "The file at: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-interface {v10}, Lcom/hp/vd/data/IData;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v15

    const-wide/16 v17, 0x400

    div-long v15, v15, v17

    move-object/from16 v19, v8

    div-long v7, v15, v17

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "MB.) is bigger than "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "max_file_upload_size"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Skipping this record."

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 326
    invoke-interface {v12, v13, v7, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_5

    .line 334
    :try_start_b
    invoke-interface {v9, v10}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_5

    :goto_3
    move-object/from16 v8, v19

    const/4 v7, 0x3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    .line 337
    :try_start_c
    iget-object v7, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v8, "FileSynchronizationRunnable"

    const-string v10, "Could not delete a file (which is bigger than the maximum size allowed) from DAO"

    invoke-interface {v7, v8, v10, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_3

    :cond_9
    move-object/from16 v19, v8

    const-string v7, "data"

    .line 343
    invoke-interface {v2, v7}, Lcom/hp/vd/connection/IManager;->setRequestType(Ljava/lang/String;)V

    .line 350
    new-instance v7, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v8, "file"

    invoke-direct {v7, v8}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 352
    new-instance v8, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v11, "fieldname"

    const-string v12, "filefield"

    invoke-direct {v8, v11, v12}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 353
    new-instance v8, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v11, "md5sum"

    const-string v12, "md5sum"

    invoke-direct {v8, v11, v12}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 354
    invoke-interface {v10}, Lcom/hp/vd/data/IData;->dump()Lcom/hp/vd/data/presentation/NodeAbstract;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 357
    new-instance v8, Lcom/hp/vd/data/CustomData;

    const-string v11, "file"

    const-string v12, "1"

    invoke-direct {v8, v11, v12, v7}, Lcom/hp/vd/data/CustomData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/hp/vd/data/presentation/NodeAbstract;)V

    .line 360
    new-instance v7, Lcom/hp/vd/data/container/EntityContainer;

    invoke-direct {v7}, Lcom/hp/vd/data/container/EntityContainer;-><init>()V

    .line 361
    invoke-virtual {v7, v8}, Lcom/hp/vd/data/container/EntityContainer;->add(Lcom/hp/vd/data/IData;)V

    .line 363
    invoke-virtual {v7}, Lcom/hp/vd/data/container/EntityContainer;->iterator()Lcom/hp/vd/data/container/iterator/EntityIterator;

    move-result-object v7

    .line 369
    new-instance v8, Lcom/hp/vd/data/reader/InputStreamWithRootElement;

    invoke-direct {v8, v7}, Lcom/hp/vd/data/reader/InputStreamWithRootElement;-><init>(Ljava/util/Iterator;)V

    const-string v7, "data"

    .line 371
    invoke-interface {v2, v7, v8}, Lcom/hp/vd/connection/IManager;->addPart(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v7, "filefield"

    .line 372
    new-instance v8, Ljava/io/File;

    invoke-interface {v10}, Lcom/hp/vd/data/IData;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v7, v8}, Lcom/hp/vd/connection/IManager;->addPart(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 379
    invoke-interface {v2, v3}, Lcom/hp/vd/connection/IManager;->isEndpointAvailable(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 380
    iget-object v7, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v8, "FileSynchronizationRunnable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "run(): No endpoint available (File transport). Skipping File synchronization cycle for channel: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v10, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 389
    :cond_a
    invoke-interface {v2}, Lcom/hp/vd/connection/IManager;->send()Z

    move-result v7
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_5

    if-ne v4, v7, :cond_b

    .line 394
    :try_start_d
    invoke-interface {v9, v10}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_4

    :catch_4
    move-exception v0

    .line 397
    :try_start_e
    iget-object v8, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v11, "FileSynchronizationRunnable"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "run(): could not delete file at: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-interface {v10}, Lcom/hp/vd/data/IData;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 397
    invoke-interface {v8, v11, v10, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 404
    :goto_4
    invoke-interface {v2}, Lcom/hp/vd/connection/IManager;->postDispatch()Z

    move-result v8

    .line 405
    iget-object v10, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v11, "FileSynchronizationRunnable"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start(): postDispatch() returned: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v11, v8}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 408
    :cond_b
    iget-object v8, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v11, "FileSynchronizationRunnable"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not upload file.url: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-interface {v10}, Lcom/hp/vd/data/IData;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 408
    invoke-interface {v8, v11, v10, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 436
    :goto_5
    iget-object v8, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v10, "FileSynchronizationRunnable"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v10, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_3

    :cond_c
    const/4 v7, 0x3

    goto/16 :goto_1

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 446
    iget-object v3, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "FileSynchronizationRunnable"

    const-string v5, "Exception caught while looping thru the files."

    invoke-interface {v3, v4, v5, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 441
    iget-object v3, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "FileSynchronizationRunnable"

    const-string v5, "Exception caught while looping thru the files."

    invoke-interface {v3, v4, v5, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    .line 256
    :catch_7
    iget-object v7, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v9, "FileSynchronizationRunnable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not get records count for module: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". Skipping it."

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    invoke-interface {v7, v9, v8, v10}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_6

    .line 239
    :catch_8
    iget-object v7, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v9, "FileSynchronizationRunnable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not get Dao for module: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v8, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". Skipping it."

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    invoke-interface {v7, v9, v8, v10}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_6
    move v7, v10

    goto/16 :goto_1

    .line 459
    :cond_d
    iget-object v2, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->fileSynchronizer:Lcom/hp/vd/module/synchronizer/FileSynchronizer;

    invoke-virtual {v2}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->synchronizationCompleted()V

    return-void

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 167
    iget-object v3, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "FileSynchronizationRunnable"

    const-string v5, "run(): Throwable caught during modules selection. Skipping File synchronization cycle."

    invoke-interface {v3, v4, v5, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_a
    move-exception v0

    move-object v2, v0

    .line 154
    iget-object v3, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "FileSynchronizationRunnable"

    const-string v5, "run(): SQLException caught during modules selection. Skipping File synchronization cycle."

    invoke-interface {v3, v4, v5, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 93
    iget-object v3, v1, Lcom/hp/vd/module/synchronizer/file/SynchronizationRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "FileSynchronizationRunnable"

    const-string v5, "Could not get moduleDao. Skipping File synchronization cycle."

    invoke-interface {v3, v4, v5, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
