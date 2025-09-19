.class public Lcom/hp/vd/ServiceMain;
.super Landroid/app/Service;
.source "ServiceMain.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "ServiceMain"

.field public static lastForegroundPackageName:Ljava/lang/String;

.field protected static mainThread:Ljava/lang/Thread;


# instance fields
.field protected context:Lcom/hp/vd/context/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 54
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 56
    new-instance v0, Lcom/hp/vd/agent/ExceptionHandler;

    .line 58
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcom/hp/vd/ServiceMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hp/vd/agent/ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 56
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 63
    sget-object v0, Lcom/hp/vd/ServiceMain;->mainThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hp/vd/ServiceMain;->mainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hp/vd/ServiceMain$1;

    invoke-direct {v1, p0}, Lcom/hp/vd/ServiceMain$1;-><init>(Lcom/hp/vd/ServiceMain;)V

    const-string v2, "Service-Starting-Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/hp/vd/ServiceMain;->mainThread:Ljava/lang/Thread;

    .line 72
    sget-object v0, Lcom/hp/vd/ServiceMain;->mainThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 226
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "ServiceMain"

    const-string v2, "onDestroy(): stopping all running modules..."

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 239
    iget-object v0, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getModules()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 243
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/module/IModule;

    if-nez v1, :cond_1

    goto :goto_0

    .line 250
    :cond_1
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->deactivate()Z

    .line 252
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->stop()Z

    .line 253
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->deinitialize()Z

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 264
    invoke-static {}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->releaseHelper()V

    .line 265
    iget-object v0, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setHelper(Lcom/hp/vd/data/persistency/DatabaseHelper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public start()Z
    .locals 7

    .line 94
    invoke-virtual {p0}, Lcom/hp/vd/ServiceMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "system"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    const-string v1, "is_installed"

    .line 100
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "###"

    const-string v1, "Application is not installed. Service won\'t be started!"

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string v0, "###"

    const-string v1, "Exception caught during installation check!"

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    new-instance v0, Lcom/hp/vd/context/Context;

    invoke-direct {v0}, Lcom/hp/vd/context/Context;-><init>()V

    iput-object v0, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    .line 121
    iget-object v0, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p0}, Lcom/hp/vd/ServiceMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setApplicationContext(Landroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    const-class v1, Lcom/hp/vd/data/persistency/DatabaseHelper;

    invoke-static {p0, v1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/data/persistency/DatabaseHelper;

    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setHelper(Lcom/hp/vd/data/persistency/DatabaseHelper;)V

    .line 123
    iget-object v0, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    new-instance v1, Lcom/hp/vd/agent/ModuleManager;

    iget-object v3, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    invoke-direct {v1, v3}, Lcom/hp/vd/agent/ModuleManager;-><init>(Lcom/hp/vd/context/Context;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setModuleManager(Lcom/hp/vd/agent/ModuleManager;)V

    .line 129
    iget-object v0, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 136
    :try_start_1
    new-instance v0, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v0}, Lcom/hp/vd/agent/Configuration;-><init>()V

    .line 137
    invoke-virtual {v0, p0}, Lcom/hp/vd/agent/Configuration;->loadSystemData(Landroid/content/Context;)Lcom/hp/vd/data/SystemData;

    move-result-object v1

    .line 139
    new-instance v3, Lcom/hp/vd/agent/Utility;

    iget-object v4, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    invoke-direct {v3, v4}, Lcom/hp/vd/agent/Utility;-><init>(Lcom/hp/vd/context/Context;)V

    .line 141
    invoke-virtual {v3}, Lcom/hp/vd/agent/Utility;->generateSessionId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/hp/vd/data/SystemData;->session:Ljava/lang/String;

    .line 142
    invoke-virtual {v0, p0, v1}, Lcom/hp/vd/agent/Configuration;->saveSystemData(Landroid/content/Context;Lcom/hp/vd/data/SystemData;)Z

    .line 144
    iget-object v0, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    iget-object v3, v1, Lcom/hp/vd/data/SystemData;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/hp/vd/context/Context;->setName(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    iget-object v3, v1, Lcom/hp/vd/data/SystemData;->instance:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/hp/vd/context/Context;->setInstance(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    iget-object v1, v1, Lcom/hp/vd/data/SystemData;->session:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setSession(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 158
    iget-object v0, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getModuleManager()Lcom/hp/vd/agent/ModuleManager;

    move-result-object v0

    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/hp/vd/agent/ModuleManager;->listInstalledModules(Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v0

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/data/ModuleData;

    .line 164
    :try_start_2
    iget-object v1, v1, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 166
    const-class v2, Lcom/hp/vd/module/IModule;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/module/IModule;

    const/4 v2, 0x3

    if-nez v1, :cond_3

    .line 173
    iget-object v3, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v3

    const-string v4, "ServiceMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not load module: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iget-object v1, v1, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-interface {v3, v4, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 182
    :cond_3
    iget-object v3, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    invoke-interface {v1, v3}, Lcom/hp/vd/module/IModule;->setContext(Lcom/hp/vd/context/Context;)V

    .line 184
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->initialize()Z

    move-result v3

    if-nez v3, :cond_4

    .line 185
    iget-object v3, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v3

    const-string v4, "ServiceMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not initialize(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iget-object v1, v1, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-interface {v3, v4, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 194
    :cond_4
    iget-object v2, p0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2, v1}, Lcom/hp/vd/context/Context;->addModule(Lcom/hp/vd/module/IModule;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 197
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 207
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 209
    new-instance v1, Lcom/hp/vd/ServiceMain$2;

    invoke-direct {v1, p0}, Lcom/hp/vd/ServiceMain$2;-><init>(Lcom/hp/vd/ServiceMain;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :catch_2
    move-exception v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v2
.end method
