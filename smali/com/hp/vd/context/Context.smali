.class public Lcom/hp/vd/context/Context;
.super Ljava/lang/Object;
.source "Context.java"


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected helper:Lcom/hp/vd/data/persistency/DatabaseHelper;

.field protected instance:Ljava/lang/String;

.field protected logWriterReference:Lcom/hp/vd/agent/log/SingleDispatchWriter;

.field protected moduleManager:Lcom/hp/vd/agent/ModuleManager;

.field protected modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hp/vd/module/IModule;",
            ">;"
        }
    .end annotation
.end field

.field protected name:Ljava/lang/String;

.field protected namePlain:Ljava/lang/String;

.field protected session:Ljava/lang/String;

.field protected utility:Lcom/hp/vd/agent/Utility;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context"

    .line 35
    iput-object v0, p0, Lcom/hp/vd/context/Context;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hp/vd/context/Context;->modules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addModule(Lcom/hp/vd/module/IModule;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 163
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "instance is NULL. You cannot insert NULL object into the list of modules."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_0
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v0

    iget-object v0, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/hp/vd/context/Context;->modules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hp/vd/module/IModule;

    .line 177
    invoke-interface {v2}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iget-object v2, v2, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/hp/vd/context/Context;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/hp/vd/context/Context;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/hp/vd/context/Context;->helper:Lcom/hp/vd/data/persistency/DatabaseHelper;

    return-object v0
.end method

.method public getInstance()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/hp/vd/context/Context;->instance:Ljava/lang/String;

    return-object v0
.end method

.method public getLog()Lcom/hp/vd/agent/log/IWriter;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/hp/vd/context/Context;->logWriterReference:Lcom/hp/vd/agent/log/SingleDispatchWriter;

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/hp/vd/context/Context;->refreshLog()V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/context/Context;->logWriterReference:Lcom/hp/vd/agent/log/SingleDispatchWriter;

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Lcom/hp/vd/module/IModule;
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/hp/vd/context/Context;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/module/IModule;

    .line 274
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iget-object v2, v2, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getModuleManager()Lcom/hp/vd/agent/ModuleManager;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/hp/vd/context/Context;->moduleManager:Lcom/hp/vd/agent/ModuleManager;

    return-object v0
.end method

.method public getModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hp/vd/module/IModule;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/hp/vd/context/Context;->modules:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/hp/vd/context/Context;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamePlain()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/hp/vd/context/Context;->namePlain:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/hp/vd/context/Context;->session:Ljava/lang/String;

    return-object v0
.end method

.method public getUtility()Lcom/hp/vd/agent/Utility;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/hp/vd/context/Context;->utility:Lcom/hp/vd/agent/Utility;

    return-object v0
.end method

.method public hasModule(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 234
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "packageName cannot be null"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/context/Context;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/module/IModule;

    .line 240
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iget-object v1, v1, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public hasModuleByName(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 251
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "name cannot be null"

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/context/Context;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/module/IModule;

    .line 257
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iget-object v1, v1, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isModuleStarted(Lcom/hp/vd/data/ModuleData;)Z
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/hp/vd/context/Context;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/module/IModule;

    .line 137
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iget-object v2, v2, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->isStarted()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public refreshLog()V
    .locals 6

    .line 303
    iget-object v0, p0, Lcom/hp/vd/context/Context;->logWriterReference:Lcom/hp/vd/agent/log/SingleDispatchWriter;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcom/hp/vd/agent/log/SingleDispatchWriter;

    invoke-direct {v0}, Lcom/hp/vd/agent/log/SingleDispatchWriter;-><init>()V

    iput-object v0, p0, Lcom/hp/vd/context/Context;->logWriterReference:Lcom/hp/vd/agent/log/SingleDispatchWriter;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/context/Context;->logWriterReference:Lcom/hp/vd/agent/log/SingleDispatchWriter;

    invoke-virtual {v0}, Lcom/hp/vd/agent/log/SingleDispatchWriter;->size()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/hp/vd/context/Context;->logWriterReference:Lcom/hp/vd/agent/log/SingleDispatchWriter;

    new-instance v1, Lcom/hp/vd/agent/log/LogCatWriter;

    invoke-direct {v1}, Lcom/hp/vd/agent/log/LogCatWriter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/hp/vd/agent/log/SingleDispatchWriter;->addLog(Lcom/hp/vd/agent/log/IWriter;)V

    .line 310
    iget-object v0, p0, Lcom/hp/vd/context/Context;->logWriterReference:Lcom/hp/vd/agent/log/SingleDispatchWriter;

    const-string v1, "Context"

    const-string v2, "refreshLog(): No LogWriter was found in SingleDispatchWriter. Using the built-in LogCatWriter logger."

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/SingleDispatchWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/context/Context;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 318
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/module/IModule;

    .line 319
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "log-writer"

    .line 321
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    iget-object v2, p0, Lcom/hp/vd/context/Context;->logWriterReference:Lcom/hp/vd/agent/log/SingleDispatchWriter;

    const-string v3, "Context"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshLog(): Setting as IWriter instance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v5

    iget-object v5, v5, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 322
    invoke-virtual {v2, v3, v4, v5}, Lcom/hp/vd/agent/log/SingleDispatchWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 328
    iget-object v2, p0, Lcom/hp/vd/context/Context;->logWriterReference:Lcom/hp/vd/agent/log/SingleDispatchWriter;

    check-cast v1, Lcom/hp/vd/agent/log/IWriter;

    invoke-virtual {v2, v1}, Lcom/hp/vd/agent/log/SingleDispatchWriter;->addLog(Lcom/hp/vd/agent/log/IWriter;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeModule(Lcom/hp/vd/module/IModule;)Z
    .locals 0

    .line 205
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object p1

    iget-object p1, p1, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hp/vd/context/Context;->removeModule(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeModule(Ljava/lang/String;)Z
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/hp/vd/context/Context;->modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 212
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/module/IModule;

    .line 215
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v1

    iget-object v1, v1, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/hp/vd/context/Context;->context:Landroid/content/Context;

    return-void
.end method

.method public setHelper(Lcom/hp/vd/data/persistency/DatabaseHelper;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/hp/vd/context/Context;->helper:Lcom/hp/vd/data/persistency/DatabaseHelper;

    return-void
.end method

.method public setInstance(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/hp/vd/context/Context;->instance:Ljava/lang/String;

    return-void
.end method

.method public setModuleManager(Lcom/hp/vd/agent/ModuleManager;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/hp/vd/context/Context;->moduleManager:Lcom/hp/vd/agent/ModuleManager;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/hp/vd/context/Context;->name:Ljava/lang/String;

    return-void
.end method

.method public setNamePlain(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/hp/vd/context/Context;->namePlain:Ljava/lang/String;

    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/hp/vd/context/Context;->session:Ljava/lang/String;

    return-void
.end method

.method public setUtility(Lcom/hp/vd/agent/Utility;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/hp/vd/context/Context;->utility:Lcom/hp/vd/agent/Utility;

    return-void
.end method
