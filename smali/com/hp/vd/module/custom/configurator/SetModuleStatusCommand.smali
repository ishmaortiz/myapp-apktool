.class public Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;
.super Lcom/hp/vd/module/custom/configurator/CommandAbstract;
.source "SetModuleStatusCommand.java"


# static fields
.field public static final COMMAND_NAME:Ljava/lang/String; = "set_module_status"

.field public static final PARAMETER_NEW_STATUS:Ljava/lang/String; = "new_status"

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

    .line 21
    invoke-direct {p0, p1}, Lcom/hp/vd/module/custom/configurator/CommandAbstract;-><init>(Lcom/hp/vd/context/Context;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->name:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->parameters:Ljava/util/Map;

    .line 17
    iput-object p1, p0, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->commandIdentifier:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->parameters:Ljava/util/Map;

    .line 24
    iput-object p3, p0, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->commandIdentifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->commandIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "set_module_status"

    return-object v0
.end method

.method public run()V
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->parameters:Ljava/util/Map;

    const-string v1, "package"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Parameter not found: new_status"

    .line 41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->parameters:Ljava/util/Map;

    const-string v3, "new_status"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Parameter not found: new_status"

    .line 47
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->parameters:Ljava/util/Map;

    const-string v3, "package"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    .line 56
    :try_start_0
    iget-object v3, p0, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->parameters:Ljava/util/Map;

    const-string v4, "new_status"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    iget-object v2, p0, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getModuleManager()Lcom/hp/vd/agent/ModuleManager;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v0, v3}, Lcom/hp/vd/agent/ModuleManager;->updateStatus(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatus() returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void

    :catch_0
    const-string v0, "NumberFormatException caught when parsing new_status"

    .line 59
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/hp/vd/module/custom/configurator/SetModuleStatusCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void
.end method
