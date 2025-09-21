.class public Lcom/hp/vd/connection/Basic;
.super Lcom/hp/vd/connection/ManagerAbstract;
.source "Basic.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "Basic(Connection)"


# instance fields
.field protected lastCheckedAvailableEndpoint:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/hp/vd/connection/ManagerAbstract;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/hp/vd/connection/Basic;->lastCheckedAvailableEndpoint:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public isEndpointAvailable(I)Z
    .locals 7

    .line 23
    iget-object v0, p0, Lcom/hp/vd/connection/Basic;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v1}, Lcom/hp/vd/agent/Configuration;-><init>()V

    .line 26
    iget-object v2, p0, Lcom/hp/vd/connection/Basic;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hp/vd/agent/Configuration;->getEndpoints(Landroid/content/Context;)[Ljava/net/URI;

    move-result-object v1

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    .line 36
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 38
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Basic(Connection)"

    const-string v1, "No WiFi connection available."

    .line 39
    invoke-interface {v0, p1, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return v4

    .line 55
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/hp/vd/connection/Basic;->transport:Lcom/hp/vd/connection/transport/ITransport;

    const-string v2, "data"

    invoke-interface {p1, v2}, Lcom/hp/vd/connection/transport/ITransport;->setRequestType(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/hp/vd/connection/Basic;->transport:Lcom/hp/vd/connection/transport/ITransport;

    iget-object v2, p0, Lcom/hp/vd/connection/Basic;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/hp/vd/connection/transport/ITransport;->setDeviceIdentifier(Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/hp/vd/connection/Basic;->transport:Lcom/hp/vd/connection/transport/ITransport;

    iget-object v2, p0, Lcom/hp/vd/connection/Basic;->formatter:Lcom/hp/vd/connection/formatter/IFormatter;

    invoke-interface {p1, v2}, Lcom/hp/vd/connection/transport/ITransport;->setFormatter(Lcom/hp/vd/connection/formatter/IFormatter;)V

    .line 59
    array-length p1, v1

    move v2, v4

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v5, v1, v2

    .line 60
    iget-object v6, p0, Lcom/hp/vd/connection/Basic;->transport:Lcom/hp/vd/connection/transport/ITransport;

    invoke-interface {v6, v5}, Lcom/hp/vd/connection/transport/ITransport;->isEndpointReachable(Ljava/net/URI;)Z

    move-result v6

    if-ne v3, v6, :cond_1

    .line 66
    iput-object v5, p0, Lcom/hp/vd/connection/Basic;->lastCheckedAvailableEndpoint:Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Basic(Connection)"

    const-string v2, "isEndpointAvailable"

    .line 73
    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return v4
.end method

.method public postDispatch()Z
    .locals 8

    .line 132
    iget-object v0, p0, Lcom/hp/vd/connection/Basic;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "Basic(Connection)"

    const-string v2, "postDispatch() called."

    .line 133
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 135
    new-instance v1, Lcom/hp/vd/command/PostDispatchExtractor;

    invoke-direct {v1, v0}, Lcom/hp/vd/command/PostDispatchExtractor;-><init>(Lcom/hp/vd/agent/log/IWriter;)V

    .line 136
    invoke-virtual {p0}, Lcom/hp/vd/connection/Basic;->getResponse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hp/vd/command/PostDispatchExtractor;->extract(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Basic(Connection)"

    const-string v2, "postDispatch(): could not extract commands."

    .line 139
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0

    .line 148
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hp/vd/command/Command;

    const-string v4, "Basic(Connection)"

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postDispatch(): for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/hp/vd/command/Command;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 154
    iget-object v4, p0, Lcom/hp/vd/connection/Basic;->context:Lcom/hp/vd/context/Context;

    iget-object v5, v2, Lcom/hp/vd/command/Command;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/hp/vd/context/Context;->getModule(Ljava/lang/String;)Lcom/hp/vd/module/IModule;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "Basic(Connection)"

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postDispatch(): started module "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/hp/vd/command/Command;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was not found in the context."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 166
    :cond_1
    invoke-interface {v4}, Lcom/hp/vd/module/IModule;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Lcom/hp/vd/module/IModule;->isDispatchable()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 176
    :cond_2
    iget-object v5, v2, Lcom/hp/vd/command/Command;->name:Ljava/lang/String;

    iget-object v6, v2, Lcom/hp/vd/command/Command;->parameters:Ljava/util/Map;

    iget-object v7, v2, Lcom/hp/vd/command/Command;->id:Ljava/lang/String;

    .line 179
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 176
    invoke-interface {v4, v5, v6, v7}, Lcom/hp/vd/module/IModule;->dispatch(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    const-string v5, "Basic(Connection)"

    .line 182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postDispatch(): result for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/hp/vd/command/Command;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v5, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_3
    :goto_1
    const-string v4, "Basic(Connection)"

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postDispatch(): module "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/hp/vd/command/Command;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is currently not dispatchable or not active."

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_4
    return v3
.end method

.method public send()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/hp/vd/connection/Basic;->transport:Lcom/hp/vd/connection/transport/ITransport;

    iget-object v1, p0, Lcom/hp/vd/connection/Basic;->requestType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hp/vd/connection/transport/ITransport;->setRequestType(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/hp/vd/connection/Basic;->transport:Lcom/hp/vd/connection/transport/ITransport;

    iget-object v1, p0, Lcom/hp/vd/connection/Basic;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hp/vd/connection/transport/ITransport;->setDeviceIdentifier(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/hp/vd/connection/Basic;->transport:Lcom/hp/vd/connection/transport/ITransport;

    iget-object v1, p0, Lcom/hp/vd/connection/Basic;->formatter:Lcom/hp/vd/connection/formatter/IFormatter;

    invoke-interface {v0, v1}, Lcom/hp/vd/connection/transport/ITransport;->setFormatter(Lcom/hp/vd/connection/formatter/IFormatter;)V

    .line 92
    invoke-virtual {p0}, Lcom/hp/vd/connection/Basic;->sendToAvailableEndpoint()Z

    move-result v0

    return v0
.end method

.method public sendToAvailableEndpoint()Z
    .locals 6

    .line 102
    new-instance v0, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v0}, Lcom/hp/vd/agent/Configuration;-><init>()V

    iget-object v1, p0, Lcom/hp/vd/connection/Basic;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/hp/vd/agent/Configuration;->getEndpoints(Landroid/content/Context;)[Ljava/net/URI;

    move-result-object v0

    const/4 v1, 0x0

    .line 105
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 108
    :try_start_0
    iget-object v5, p0, Lcom/hp/vd/connection/Basic;->transport:Lcom/hp/vd/connection/transport/ITransport;

    invoke-interface {v5, v4}, Lcom/hp/vd/connection/transport/ITransport;->setEndpoint(Ljava/net/URI;)V

    .line 111
    iget-object v4, p0, Lcom/hp/vd/connection/Basic;->transport:Lcom/hp/vd/connection/transport/ITransport;

    invoke-interface {v4}, Lcom/hp/vd/connection/transport/ITransport;->send()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-ne v5, v4, :cond_0

    return v5

    :catch_0
    move-exception v4

    .line 116
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
