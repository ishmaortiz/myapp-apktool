.class public interface abstract Lcom/hp/vd/connection/transport/ITransport;
.super Ljava/lang/Object;
.source "ITransport.java"


# virtual methods
.method public abstract addEntity(Ljava/lang/String;Ljava/lang/Object;)Z
.end method

.method public abstract getResponseBody()Ljava/lang/String;
.end method

.method public abstract getResponseCode()Ljava/lang/Integer;
.end method

.method public abstract isEndpointReachable(Ljava/net/URI;)Z
.end method

.method public abstract send()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setContext(Lcom/hp/vd/context/Context;)V
.end method

.method public abstract setDeviceIdentifier(Ljava/lang/String;)V
.end method

.method public abstract setEndpoint(Ljava/net/URI;)V
.end method

.method public abstract setFormatter(Lcom/hp/vd/connection/formatter/IFormatter;)V
.end method

.method public abstract setRequestType(Ljava/lang/String;)V
.end method

.method public abstract setTimeout(Ljava/lang/Integer;)V
.end method
