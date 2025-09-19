.class public Lcom/hp/vd/module/custom/Configurator;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "Configurator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Configurator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 4
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

    .line 115
    iget-object v0, p0, Lcom/hp/vd/module/custom/Configurator;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/Configurator;->isActivated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    const-string v3, "update_preferences"

    .line 123
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    new-instance v1, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;

    invoke-virtual {p0}, Lcom/hp/vd/module/custom/Configurator;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-direct {v1, v3, p2, p3}, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;-><init>(Lcom/hp/vd/context/Context;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "remove_module"

    .line 126
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    new-instance v1, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;

    invoke-virtual {p0}, Lcom/hp/vd/module/custom/Configurator;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-direct {v1, v3, p2, p3}, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;-><init>(Lcom/hp/vd/context/Context;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "set_module_status"

    .line 129
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    new-instance v1, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;

    invoke-virtual {p0}, Lcom/hp/vd/module/custom/Configurator;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-direct {v1, v3, p2, p3}, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;-><init>(Lcom/hp/vd/context/Context;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "remove_module_from_context"

    .line 132
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 133
    new-instance v1, Lcom/hp/vd/module/custom/configurator/RemoveModuleFromContextCommand;

    invoke-virtual {p0}, Lcom/hp/vd/module/custom/Configurator;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-direct {v1, v3, p2, p3}, Lcom/hp/vd/module/custom/configurator/RemoveModuleFromContextCommand;-><init>(Lcom/hp/vd/context/Context;Ljava/util/Map;Ljava/lang/String;)V

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 137
    invoke-interface {v1}, Lcom/hp/vd/module/custom/configurator/CommandInterface;->initialize()V

    .line 139
    new-instance p1, Ljava/lang/Thread;

    invoke-interface {v1}, Lcom/hp/vd/module/custom/configurator/CommandInterface;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1

    :cond_5
    const-string p2, "Configurator"

    .line 145
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatch() unsupported command specified: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x3

    invoke-interface {v0, p2, p1, p3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 2

    .line 35
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "custom"

    .line 37
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 38
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/Configurator;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x3

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v3.0"

    .line 42
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, ""

    .line 44
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    .line 45
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "Configurator"

    return-object v0
.end method

.method public isDispatchable()Z
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/Configurator;->isActivated()Z

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

    const/4 v0, 0x1

    return v0
.end method

.method public start()Z
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/Configurator;->isActivated()Z

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

    const/4 v0, 0x1

    return v0
.end method
