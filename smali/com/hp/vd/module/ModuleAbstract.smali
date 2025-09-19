.class public abstract Lcom/hp/vd/module/ModuleAbstract;
.super Ljava/lang/Object;
.source "ModuleAbstract.java"

# interfaces
.implements Lcom/hp/vd/module/IModule;


# static fields
.field protected static final TAG:Ljava/lang/String; = "ModuleAbstract"


# instance fields
.field protected active:Z

.field protected context:Lcom/hp/vd/context/Context;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "+",
            "Lcom/hp/vd/data/IData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected startOnHeartBeat:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/hp/vd/module/ModuleAbstract;->dao:Lcom/j256/ormlite/dao/Dao;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/hp/vd/module/ModuleAbstract;->active:Z

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/hp/vd/module/ModuleAbstract;->startOnHeartBeat:Z

    return-void
.end method


# virtual methods
.method public activate()Z
    .locals 1

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/hp/vd/module/ModuleAbstract;->active:Z

    return v0
.end method

.method public deactivate()Z
    .locals 1

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/hp/vd/module/ModuleAbstract;->active:Z

    const/4 v0, 0x1

    return v0
.end method

.method public deinitialize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

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

    .line 108
    iget-boolean p1, p0, Lcom/hp/vd/module/ModuleAbstract;->active:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    return p2
.end method

.method protected getContext()Lcom/hp/vd/context/Context;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/hp/vd/module/ModuleAbstract;->context:Lcom/hp/vd/context/Context;

    return-object v0
.end method

.method public getDao()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "+",
            "Lcom/hp/vd/data/IData;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    .line 223
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/ModuleAbstract;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/hp/vd/module/ModuleAbstract;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/ModuleAbstract;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/ModuleAbstract;->dao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersistedModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/hp/vd/module/ModuleAbstract;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iget-object v1, v1, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lcom/hp/vd/module/ModuleAbstract;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    .line 177
    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 178
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 179
    new-instance v5, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v5}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    const-string v6, "packageName"

    .line 182
    invoke-virtual {v4, v6, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 185
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v3

    .line 188
    invoke-virtual {v5, v1}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    .line 190
    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v1

    .line 193
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "ModuleAbstract"

    const-string v2, "getPersistedModuleData() but no ModuleData was found in the database."

    const/4 v3, 0x2

    .line 195
    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 204
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/vd/data/ModuleData;

    return-object v0
.end method

.method public initialize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public install(Ljava/lang/String;)Z
    .locals 4

    .line 127
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getDataClass()Ljava/lang/Class;

    move-result-object v1

    .line 132
    instance-of v1, v1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    .line 134
    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    const-string v1, "ModuleAbstract"

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): table created."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string v1, "ModuleAbstract"

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): no data class found so not creating table."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    .line 153
    iput-object p1, v2, Lcom/hp/vd/data/ModuleData;->packagePath:Ljava/lang/String;

    .line 154
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v2, Lcom/hp/vd/data/ModuleData;->installedOn:Ljava/util/Date;

    .line 156
    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    const-string v1, "ModuleAbstract"

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): module registered."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "ModuleAbstract"

    const-string v2, "install(): Base installation failed."

    .line 163
    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public isActivated()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/hp/vd/module/ModuleAbstract;->active:Z

    return v0
.end method

.method public isDispatchable()Z
    .locals 2

    .line 63
    iget-boolean v0, p0, Lcom/hp/vd/module/ModuleAbstract;->active:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    return v1
.end method

.method public setContext(Lcom/hp/vd/context/Context;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/hp/vd/module/ModuleAbstract;->context:Lcom/hp/vd/context/Context;

    return-void
.end method

.method public setDataReadLimit(Ljava/lang/Integer;)Z
    .locals 3

    .line 364
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/ModuleAbstract;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "system"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 374
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read_limit_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 376
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 381
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public startOnHeartbeat()Z
    .locals 2

    .line 53
    iget-boolean v0, p0, Lcom/hp/vd/module/ModuleAbstract;->active:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    return v1
.end method

.method public uninstall()Z
    .locals 9

    .line 243
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->isStarted()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->stop()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ModuleAbstract"

    const-string v4, "uninstall(): Module was started but could not be stopped. Aborting."

    .line 252
    invoke-interface {v0, v2, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    :cond_0
    const-string v2, "ModuleAbstract"

    const-string v4, "uninstall(): Module was started and stop() return true."

    .line 257
    invoke-interface {v0, v2, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->deinitialize()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "ModuleAbstract"

    const-string v4, "uninstall(): deinitialize() return false. Aborting."

    .line 261
    invoke-interface {v0, v2, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    .line 270
    :cond_2
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    .line 271
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v4

    .line 273
    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    .line 274
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    .line 275
    new-instance v7, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v7}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    const-string v8, "packageName"

    .line 278
    invoke-virtual {v6, v8, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 281
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v5

    .line 284
    iget-object v6, v4, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    .line 286
    invoke-interface {v2, v5}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v5

    .line 288
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const-string v2, "ModuleAbstract"

    .line 289
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Module count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for packageName = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    .line 294
    :cond_3
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    const-string v2, "ModuleAbstract"

    const-string v3, "uninstall(): The module was deleted from the module table."

    .line 296
    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getDataClass()Ljava/lang/Class;

    move-result-object v2

    .line 303
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_4

    .line 305
    iget-object v3, p0, Lcom/hp/vd/module/ModuleAbstract;->context:Lcom/hp/vd/context/Context;

    .line 306
    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v3

    .line 305
    invoke-static {v3, v2, v7}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    const-string v2, "ModuleAbstract"

    const-string v3, "uninstall(): module table was dropped"

    .line 311
    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    const-string v2, "ModuleAbstract"

    const-string v3, "uninstall(): no data class found so not dropping a table."

    .line 314
    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v7

    :catch_0
    move-exception v2

    const-string v3, "ModuleAbstract"

    const-string v4, "uninstall()"

    .line 319
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public update(Lcom/hp/vd/module/IModule;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected updateModuleData(Lcom/hp/vd/data/ModuleData;)Z
    .locals 1

    .line 340
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/ModuleAbstract;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 342
    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 350
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
