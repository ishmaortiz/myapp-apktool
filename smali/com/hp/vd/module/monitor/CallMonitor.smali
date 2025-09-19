.class public Lcom/hp/vd/module/monitor/CallMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "CallMonitor.java"


# static fields
.field public static final ATTRIBUTE_FIRST_RUN:Ljava/lang/String; = "first_run"

.field public static final ATTRIBUTE_GATHER_CALLS_ON_START:Ljava/lang/String; = "gather_calls_on_start"

.field public static final ATTRIBUTE_MAX_CALL_ID:Ljava/lang/String; = "max_call_id"

.field public static final COMMAND_ARGUMENT_NEW_MAX_CALL_ID:Ljava/lang/String; = "new_max_call_id"

.field public static final COMMAND_SET_MAX_CALL_ID:Ljava/lang/String; = "call_set_max_call_id"

.field protected static final TAG:Ljava/lang/String; = "CallMonitor"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/CallData;",
            ">;"
        }
    .end annotation
.end field

.field protected callBroadcastReceiver:Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

.field protected commandReceiver:Lcom/hp/vd/module/monitor/call/FcmCommandReceiver;

.field protected initialCallListerThread:Ljava/lang/Thread;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected monitoringStatus:Z

.field protected telephonyManager:Landroid/telephony/TelephonyManager;

.field protected writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/QueueConsumerDao<",
            "Lcom/hp/vd/data/CallData;",
            ">;"
        }
    .end annotation
.end field

.field protected writerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 57
    iput-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 59
    iput-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 60
    iput-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 62
    iput-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writerThread:Ljava/lang/Thread;

    .line 63
    iput-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->initialCallListerThread:Ljava/lang/Thread;

    .line 65
    iput-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/call/FcmCommandReceiver;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->monitoringStatus:Z

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 4

    .line 181
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/CallMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "CallMonitor"

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deinitialize() called [version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/CallMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3

    iget-object v3, v3, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    iget-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->callBroadcastReceiver:Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->callBroadcastReceiver:Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->callBroadcastReceiver:Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

    .line 189
    iput-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 191
    iput-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 192
    iput-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writerThread:Ljava/lang/Thread;

    .line 193
    iput-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

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

    .line 74
    const-class v0, Lcom/hp/vd/data/CallData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 79
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 81
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 82
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/CallMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x7

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v7.0"

    .line 86
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "max_call_id"

    const-string v2, "0"

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gather_calls_on_start"

    const-string v2, "true"

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "first_run"

    const-string v2, "true"

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 96
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "CallMonitor"

    return-object v0
.end method

.method public initialize()Z
    .locals 6

    .line 119
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/CallMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v1}, Lcom/hp/vd/data/concurrency/BlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/CallMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 143
    new-instance v2, Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/CallMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v2, v3, v1, v0}, Lcom/hp/vd/data/concurrency/QueueConsumerDao;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v2, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 144
    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    .line 151
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/CallMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/CallMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "CallMonitor"

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize(): maxCallId set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/CallMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v5, "max_call_id"

    .line 155
    invoke-virtual {v4, v5}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "CallMonitor"

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize(): gatherCallsOnStart = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/CallMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v5, "gather_calls_on_start"

    .line 160
    invoke-virtual {v4, v5}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception v2

    const-string v3, "CallMonitor"

    const-string v4, "initialize(): could not load the persisted module data."

    .line 164
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1

    :catch_1
    move-exception v1

    const-string v2, "CallMonitor"

    const-string v3, "initialize(): getDao() failed"

    .line 132
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 138
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/CallMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "CallMonitor"

    const-string v2, "install() called."

    .line 105
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x15e

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/CallMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public isDispatchable()Z
    .locals 1

    .line 201
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/CallMonitor;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->monitoringStatus:Z

    return v0
.end method

.method public persistModuleData(Lcom/hp/vd/data/ModuleData;)Z
    .locals 0

    .line 399
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/CallMonitor;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result p1

    return p1
.end method

.method public start()Z
    .locals 9

    .line 211
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/CallMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "CallMonitor"

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start() called [version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/CallMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3

    iget-object v3, v3, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 218
    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/call/FcmCommandReceiver;

    if-nez v1, :cond_0

    .line 220
    :try_start_0
    new-instance v1, Lcom/hp/vd/module/monitor/call/FcmCommandReceiver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/CallMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/CallMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/hp/vd/module/monitor/call/FcmCommandReceiver;-><init>(Lcom/hp/vd/module/monitor/CallMonitor;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/call/FcmCommandReceiver;

    .line 221
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.hp.vb.FCM_COMMAND_RECEIVED"

    .line 223
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/hp/vd/module/monitor/CallMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hp/vd/module/monitor/CallMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/call/FcmCommandReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "CallMonitor"

    const-string v3, "fcm: commandReceiver was registered in callmon"

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 229
    iget-object v2, p0, Lcom/hp/vd/module/monitor/CallMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "CallMonitor"

    const-string v4, "fcm: Exception caught while registering receiver"

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 237
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/CallMonitor;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "CallMonitor"

    const-string v3, "This module is currently DEactivated."

    .line 238
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    if-nez v1, :cond_2

    goto/16 :goto_1

    .line 258
    :cond_2
    new-instance v1, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/CallMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/CallMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/CallMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->callBroadcastReceiver:Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

    .line 270
    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "gather_calls_on_start"

    invoke-virtual {v1, v2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    new-instance v8, Lcom/hp/vd/module/monitor/call/CallLister;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/CallMonitor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/CallMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/CallMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/CallMonitor;->callBroadcastReceiver:Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

    move-object v1, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/hp/vd/module/monitor/call/CallLister;-><init>(Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;Lcom/hp/vd/agent/log/IWriter;)V

    .line 288
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Initial-Call-Lister-Thread"

    invoke-direct {v1, v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->initialCallListerThread:Ljava/lang/Thread;

    .line 289
    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->initialCallListerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 301
    :cond_3
    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/CallMonitor;->callBroadcastReceiver:Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v1, "CallMonitor"

    const-string v2, "start(): CallBroadcastReceiver is now listening."

    .line 306
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 308
    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 309
    :cond_4
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const-string v3, "Writer-Queue-Call"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writerThread:Ljava/lang/Thread;

    .line 310
    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_5
    const-string v1, "CallMonitor"

    const-string v2, "start(): writerThread started."

    .line 312
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 314
    iput-boolean v7, p0, Lcom/hp/vd/module/monitor/CallMonitor;->monitoringStatus:Z

    return v7

    :cond_6
    :goto_1
    const-string v1, "CallMonitor"

    const-string v3, "start(): (telephonyManager || buffer) == NULL"

    .line 248
    invoke-interface {v0, v1, v3, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2
.end method

.method public stop()Z
    .locals 5

    .line 322
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/CallMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "CallMonitor"

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop() called [version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/CallMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3

    iget-object v3, v3, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/call/FcmCommandReceiver;

    if-eqz v1, :cond_0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hp/vd/module/monitor/CallMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/call/FcmCommandReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 332
    iput-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->commandReceiver:Lcom/hp/vd/module/monitor/call/FcmCommandReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 335
    iget-object v2, p0, Lcom/hp/vd/module/monitor/CallMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "CallMonitor"

    const-string v4, "fcm: Exception caught in stop()"

    invoke-interface {v2, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 343
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->callBroadcastReceiver:Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

    if-nez v1, :cond_1

    goto :goto_1

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/hp/vd/module/monitor/CallMonitor;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/CallMonitor;->callBroadcastReceiver:Lcom/hp/vd/module/monitor/call/CallBroadcastReceiver;

    invoke-virtual {v1, v4, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v1, "CallMonitor"

    const-string v4, "stop(): CallBroadcastReceiver is not listening anymore."

    .line 354
    invoke-interface {v0, v1, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 360
    iget-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    invoke-virtual {v0, v3}, Lcom/hp/vd/data/concurrency/QueueConsumerDao;->setIsStarted(Z)V

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->initialCallListerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    .line 369
    iget-object v0, p0, Lcom/hp/vd/module/monitor/CallMonitor;->initialCallListerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 376
    :cond_4
    iput-boolean v3, p0, Lcom/hp/vd/module/monitor/CallMonitor;->monitoringStatus:Z

    return v2

    :cond_5
    :goto_1
    const-string v1, "CallMonitor"

    const-string v4, "stop(): (telephonyManager || callBroadcastReceiver) == NULL"

    .line 344
    invoke-interface {v0, v1, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v3
.end method
