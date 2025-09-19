.class public interface abstract Lcom/hp/vd/connection/IManager;
.super Ljava/lang/Object;
.source "IManager.java"


# virtual methods
.method public abstract addPart(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract getResponse()Ljava/lang/String;
.end method

.method public abstract getTransport()Lcom/hp/vd/connection/transport/ITransport;
.end method

.method public abstract isEndpointAvailable(I)Z
.end method

.method public abstract postDispatch()Z
.end method

.method public abstract send()Z
.end method

.method public abstract setContext(Lcom/hp/vd/context/Context;)V
.end method

.method public abstract setFormatter(Lcom/hp/vd/connection/formatter/IFormatter;)V
.end method

.method public abstract setRequestType(Ljava/lang/String;)V
.end method

.method public abstract setTransport(Lcom/hp/vd/connection/transport/ITransport;)V
.end method
