.class public abstract Lcom/hp/vd/module/custom/configurator/CommandAbstract;
.super Ljava/lang/Object;
.source "CommandAbstract.java"

# interfaces
.implements Lcom/hp/vd/module/custom/configurator/CommandInterface;


# static fields
.field protected static final TAG:Ljava/lang/String; = "CommandAbstract"


# instance fields
.field protected commandResponseDispatcher:Lcom/hp/vd/module/IModule;

.field protected context:Lcom/hp/vd/context/Context;

.field protected methodDispatchResponse:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->context:Lcom/hp/vd/context/Context;

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->commandResponseDispatcher:Lcom/hp/vd/module/IModule;

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->methodDispatchResponse:Ljava/lang/reflect/Method;

    .line 24
    iput-object p1, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->context:Lcom/hp/vd/context/Context;

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 4

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->commandResponseDispatcher:Lcom/hp/vd/module/IModule;

    .line 34
    iput-object v0, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->methodDispatchResponse:Ljava/lang/reflect/Method;

    .line 36
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getModules()Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/module/IModule;

    .line 40
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "command-response-dispatcher"

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    iput-object v1, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->commandResponseDispatcher:Lcom/hp/vd/module/IModule;

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->commandResponseDispatcher:Lcom/hp/vd/module/IModule;

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    .line 51
    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Ljava/util/Date;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Ljava/util/Date;

    aput-object v2, v0, v1

    .line 60
    iget-object v1, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->commandResponseDispatcher:Lcom/hp/vd/module/IModule;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "dispatchResponse"

    .line 61
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->methodDispatchResponse:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    iget-object v1, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v1

    const-string v2, "CommandAbstract"

    const-string v3, "dispatch(): NoSuchMethodException caught when getting dispatchResponse()."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 8

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 131
    iget-object p1, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p1, p2, v7, p3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 133
    iget-object v2, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->commandResponseDispatcher:Lcom/hp/vd/module/IModule;

    iget-object v3, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->methodDispatchResponse:Ljava/lang/reflect/Method;

    .line 136
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    const-class p1, Lcom/hp/vd/module/custom/Configurator;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 133
    invoke-virtual/range {v1 .. v7}, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->returnResponse(Lcom/hp/vd/module/IModule;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected returnResponse(Lcom/hp/vd/module/IModule;Ljava/lang/reflect/Method;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/CommandAbstract;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string p1, "CommandAbstract"

    const-string p2, "dispatch(): no commandResponseDispatcher found! No resposne will be ever returned."

    .line 81
    invoke-interface {v0, p1, p2, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "CommandAbstract"

    const-string p2, "dispatch(): no methodDispatchResponse found! No resposne will be ever returned."

    .line 91
    invoke-interface {v0, p1, p2, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    :cond_1
    const/4 v3, 0x6

    .line 101
    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v2

    const/4 p3, 0x1

    aput-object p4, v3, p3

    const/4 p4, 0x2

    aput-object p5, v3, p4

    aput-object p6, v3, v1

    const/4 p4, 0x4

    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    aput-object p5, v3, p4

    const/4 p4, 0x5

    new-instance p5, Ljava/util/Date;

    invoke-direct {p5}, Ljava/util/Date;-><init>()V

    aput-object p5, v3, p4

    .line 110
    invoke-virtual {p2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :catch_0
    move-exception p1

    const-string p2, "CommandAbstract"

    const-string p3, "dispatch(): NullPointerException caught while returning response."

    .line 121
    invoke-interface {v0, p2, p3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "CommandAbstract"

    const-string p3, "dispatch(): InvocationTargetException caught while returning response."

    .line 118
    invoke-interface {v0, p2, p3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_2
    move-exception p1

    const-string p2, "CommandAbstract"

    const-string p3, "dispatch(): IllegalAccessException caught while returning response."

    .line 115
    invoke-interface {v0, p2, p3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return v2
.end method
