.class public Lcom/hp/vd/module/custom/configurator/RemoveModuleFromContextCommand;
.super Lcom/hp/vd/module/custom/configurator/CommandAbstract;
.source "RemoveModuleFromContextCommand.java"


# static fields
.field public static final COMMAND_NAME:Ljava/lang/String; = "remove_module_from_context"

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

    .line 19
    invoke-direct {p0, p1}, Lcom/hp/vd/module/custom/configurator/CommandAbstract;-><init>(Lcom/hp/vd/context/Context;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleFromContextCommand;->name:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleFromContextCommand;->parameters:Ljava/util/Map;

    .line 15
    iput-object p1, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleFromContextCommand;->commandIdentifier:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleFromContextCommand;->parameters:Ljava/util/Map;

    .line 22
    iput-object p3, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleFromContextCommand;->commandIdentifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleFromContextCommand;->commandIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "remove_module_from_context"

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleFromContextCommand;->parameters:Ljava/util/Map;

    const-string v1, "package"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    const-string v0, "Parameter not found: package"

    const/4 v2, 0x0

    .line 39
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/hp/vd/module/custom/configurator/RemoveModuleFromContextCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleFromContextCommand;->parameters:Ljava/util/Map;

    const-string v2, "package"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/hp/vd/module/custom/configurator/RemoveModuleFromContextCommand;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2, v0}, Lcom/hp/vd/context/Context;->removeModule(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeModule() returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/hp/vd/module/custom/configurator/RemoveModuleFromContextCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void
.end method
