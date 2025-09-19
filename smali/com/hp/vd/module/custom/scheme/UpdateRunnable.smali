.class public Lcom/hp/vd/module/custom/scheme/UpdateRunnable;
.super Ljava/lang/Object;
.source "UpdateRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/vd/module/custom/scheme/UpdateRunnable$Executor;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "SchemeUp::UpdateRunnable"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected moduleManager:Lcom/hp/vd/agent/ModuleManager;


# direct methods
.method public constructor <init>(Lcom/hp/vd/agent/ModuleManager;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/context/Context;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->moduleManager:Lcom/hp/vd/agent/ModuleManager;

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 27
    iput-object v0, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    .line 28
    iput-object v0, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 32
    iput-object p1, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->moduleManager:Lcom/hp/vd/agent/ModuleManager;

    .line 33
    iput-object p2, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 34
    iput-object p3, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    .line 35
    iput-object p4, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected _run()V
    .locals 6

    .line 56
    iget-object v0, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getModuleManager()Lcom/hp/vd/agent/ModuleManager;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/hp/vd/agent/ModuleManager;->getRemoteMonolithicSchema()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 59
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "SchemeUp::UpdateRunnable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start(): server responded with modules count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    iget-object v2, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getModuleManager()Lcom/hp/vd/agent/ModuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/agent/ModuleManager;->getApplicationDefault()Ljava/util/ArrayList;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Lcom/hp/vd/agent/ModuleManager;->generateMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/agent/ModuleManager;->lookupMetaModules(Ljava/util/List;Ljava/util/Map;)V

    .line 99
    iget-object v0, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getModuleManager()Lcom/hp/vd/agent/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/agent/ModuleManager;->listInstalledModules()Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hp/vd/module/MetaModule;

    .line 102
    invoke-virtual {p0, v2, v0}, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->process(Lcom/hp/vd/module/MetaModule;Ljava/util/List;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->refreshLog()V

    .line 115
    iget-object v0, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getModuleManager()Lcom/hp/vd/agent/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/agent/ModuleManager;->getRemoteMonolithicSchema()Ljava/util/List;

    return-void

    .line 60
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SchemeUp::UpdateRunnable"

    const-string v2, "start(): no new modules for configuration."

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method protected find(Ljava/util/List;Ljava/lang/String;)Lcom/hp/vd/data/ModuleData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hp/vd/data/ModuleData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/hp/vd/data/ModuleData;"
        }
    .end annotation

    .line 279
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/vd/data/ModuleData;

    .line 280
    iget-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected process(Lcom/hp/vd/module/MetaModule;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/module/MetaModule;",
            "Ljava/util/List<",
            "Lcom/hp/vd/data/ModuleData;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getModuleManager()Lcom/hp/vd/agent/ModuleManager;

    move-result-object v0

    .line 121
    iget-object v1, p1, Lcom/hp/vd/module/MetaModule;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, v1}, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->find(Ljava/util/List;Ljava/lang/String;)Lcom/hp/vd/data/ModuleData;

    move-result-object p2

    .line 122
    iget-object v1, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    iget-object v2, p1, Lcom/hp/vd/module/MetaModule;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hp/vd/context/Context;->hasModuleByName(Ljava/lang/String;)Z

    move-result v1

    .line 124
    iget-object v2, p1, Lcom/hp/vd/module/MetaModule;->name:Ljava/lang/String;

    const/4 v3, 0x3

    if-eqz v2, :cond_9

    iget-object v2, p1, Lcom/hp/vd/module/MetaModule;->packageName:Ljava/lang/String;

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 134
    :cond_0
    iget-object v2, p1, Lcom/hp/vd/module/MetaModule;->status:Ljava/lang/Integer;

    sget-object v4, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    if-ne v2, v4, :cond_4

    if-nez p2, :cond_2

    const/4 p2, 0x1

    if-ne v1, p2, :cond_1

    .line 147
    iget-object p2, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "SchemeUp::UpdateRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found a module in the context which is not install()ed. Module is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hp/vd/module/MetaModule;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 157
    :cond_1
    :try_start_0
    iget-object p2, p1, Lcom/hp/vd/module/MetaModule;->packageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 159
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/vd/module/IModule;

    .line 161
    iget-object v1, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-interface {v0, v1}, Lcom/hp/vd/module/IModule;->setContext(Lcom/hp/vd/context/Context;)V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "built-in://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/hp/vd/module/IModule;->install(Ljava/lang/String;)Z

    .line 164
    iget-object p2, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p2, v0}, Lcom/hp/vd/context/Context;->addModule(Lcom/hp/vd/module/IModule;)Z

    .line 166
    invoke-interface {v0}, Lcom/hp/vd/module/IModule;->initialize()Z

    .line 167
    invoke-interface {v0}, Lcom/hp/vd/module/IModule;->start()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 199
    :catch_0
    iget-object p2, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "SchemeUp::UpdateRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught while active()ing module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/hp/vd/module/MetaModule;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hp/vd/module/MetaModule;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 204
    iget-object p2, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "SchemeUp::UpdateRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already in context. Skipping activation for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hp/vd/module/MetaModule;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 213
    :cond_3
    :try_start_1
    iget-object p2, p1, Lcom/hp/vd/module/MetaModule;->packageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 215
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hp/vd/module/IModule;

    .line 217
    iget-object v1, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-interface {p2, v1}, Lcom/hp/vd/module/IModule;->setContext(Lcom/hp/vd/context/Context;)V

    .line 218
    iget-object v1, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1, p2}, Lcom/hp/vd/context/Context;->addModule(Lcom/hp/vd/module/IModule;)Z

    .line 220
    invoke-interface {p2}, Lcom/hp/vd/module/IModule;->initialize()Z

    .line 222
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 223
    new-instance v2, Lcom/hp/vd/module/custom/scheme/UpdateRunnable$Executor;

    invoke-direct {v2, p0, p2}, Lcom/hp/vd/module/custom/scheme/UpdateRunnable$Executor;-><init>(Lcom/hp/vd/module/custom/scheme/UpdateRunnable;Lcom/hp/vd/module/IModule;)V

    .line 224
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    iget-object p2, p1, Lcom/hp/vd/module/MetaModule;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-virtual {v0, p2, v1}, Lcom/hp/vd/agent/ModuleManager;->updateStatus(Ljava/lang/String;Ljava/lang/Integer;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception p2

    .line 236
    iget-object v0, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SchemeUp::UpdateRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught while active()ing module: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hp/vd/module/MetaModule;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 240
    :cond_4
    iget-object v2, p1, Lcom/hp/vd/module/MetaModule;->status:Ljava/lang/Integer;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    if-ne v2, v3, :cond_8

    if-nez p2, :cond_5

    .line 251
    iget-object p2, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "SchemeUp::UpdateRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Module to be deActivate()d but such module was not even installed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hp/vd/module/MetaModule;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 256
    :cond_5
    iget-object p2, p2, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    sget-object v2, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    if-ne p2, v2, :cond_6

    .line 257
    iget-object p2, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "SchemeUp::UpdateRunnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Module already inactive()d. Skipping it. Module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hp/vd/module/MetaModule;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_6
    if-eqz v1, :cond_7

    .line 263
    iget-object p2, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    iget-object v1, p1, Lcom/hp/vd/module/MetaModule;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/hp/vd/context/Context;->getModule(Ljava/lang/String;)Lcom/hp/vd/module/IModule;

    move-result-object p2

    .line 265
    invoke-interface {p2}, Lcom/hp/vd/module/IModule;->stop()Z

    .line 266
    invoke-interface {p2}, Lcom/hp/vd/module/IModule;->deinitialize()Z

    .line 268
    iget-object v1, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1, p2}, Lcom/hp/vd/context/Context;->removeModule(Lcom/hp/vd/module/IModule;)Z

    .line 272
    :cond_7
    iget-object p1, p1, Lcom/hp/vd/module/MetaModule;->packageName:Ljava/lang/String;

    sget-object p2, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-virtual {v0, p1, p2}, Lcom/hp/vd/agent/ModuleManager;->updateStatus(Ljava/lang/String;Ljava/lang/Integer;)Z

    :cond_8
    :goto_0
    return-void

    .line 125
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "SchemeUp::UpdateRunnable"

    const-string v0, "In-app mapping failed: metaModule.[name|packageName] is null. Server is providing modules unavailable at the client?"

    invoke-interface {p1, p2, v0, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public run()V
    .locals 1

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/scheme/UpdateRunnable;->_run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
