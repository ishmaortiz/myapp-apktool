.class public Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;
.super Lcom/hp/vd/module/custom/configurator/CommandAbstract;
.source "RemoveModuleCommand.java"


# static fields
.field public static final COMMAND_NAME:Ljava/lang/String; = "remove_module"

.field public static final PARAMETER_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field protected commandIdentifier:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/hp/vd/module/custom/configurator/CommandAbstract;-><init>(Lcom/hp/vd/context/Context;)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->name:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->parameters:Ljava/util/Map;

    .line 16
    iput-object p1, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->commandIdentifier:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->parameters:Ljava/util/Map;

    .line 23
    iput-object p3, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->commandIdentifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->commandIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "remove_module"

    return-object v0
.end method

.method public run()V
    .locals 7

    .line 42
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->parameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-nez v0, :cond_0

    const-string v0, "parameters.size = 0. Expecting atleast one parameter."

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->parameters:Ljava/util/Map;

    const-string v3, "package"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Parameter not found: package"

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->parameters:Ljava/util/Map;

    const-string v3, "package"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    iget-object v3, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v3, v0}, Lcom/hp/vd/context/Context;->getModule(Ljava/lang/String;)Lcom/hp/vd/module/IModule;

    move-result-object v3

    if-nez v3, :cond_2

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find module: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' in the context."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void

    .line 63
    :cond_2
    invoke-interface {v3}, Lcom/hp/vd/module/IModule;->deactivate()Z

    .line 65
    invoke-interface {v3}, Lcom/hp/vd/module/IModule;->stop()Z

    move-result v4

    if-nez v4, :cond_3

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot stop() module: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void

    .line 71
    :cond_3
    invoke-interface {v3}, Lcom/hp/vd/module/IModule;->uninstall()Z

    move-result v4

    if-nez v4, :cond_4

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot uninstall() module: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void

    .line 77
    :cond_4
    iget-object v1, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v4, "CommandAbstract"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uninstall successful for module: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v1, v4, v5, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 87
    iget-object v1, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1, v3}, Lcom/hp/vd/context/Context;->removeModule(Lcom/hp/vd/module/IModule;)Z

    .line 93
    iget-object v1, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getModuleManager()Lcom/hp/vd/agent/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/agent/ModuleManager;->getRemoteMonolithicSchema()Ljava/util/List;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully uninstalled/removed from context this module: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/hp/vd/module/custom/configurator/RemoveModuleCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void
.end method
