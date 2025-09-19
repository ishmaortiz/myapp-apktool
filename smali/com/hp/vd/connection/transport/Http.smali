.class public Lcom/hp/vd/connection/transport/Http;
.super Lcom/hp/vd/connection/transport/TransportAbstract;
.source "Http.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "Http(Transport)"


# instance fields
.field protected response:Lorg/apache/http/HttpResponse;

.field protected responseBody:Ljava/lang/String;

.field protected timeoutMillis:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/hp/vd/connection/transport/TransportAbstract;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/hp/vd/connection/transport/Http;->response:Lorg/apache/http/HttpResponse;

    .line 37
    iput-object v0, p0, Lcom/hp/vd/connection/transport/Http;->responseBody:Ljava/lang/String;

    const/16 v0, 0x7530

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/connection/transport/Http;->timeoutMillis:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getResponseBody()Ljava/lang/String;
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/hp/vd/connection/transport/Http;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/connection/transport/Http;->responseBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hp/vd/connection/transport/Http;->responseBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/connection/transport/Http;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 174
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/connection/transport/Http;->responseBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/connection/transport/Http;->responseBody:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v1

    .line 179
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "Http(Transport)"

    const-string v3, "getResponseBody()"

    .line 180
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const-string v1, "Http(Transport)"

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResponseBody() is about to return OLD VALUE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/connection/transport/Http;->responseBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 183
    iget-object v0, p0, Lcom/hp/vd/connection/transport/Http;->responseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()Ljava/lang/Integer;
    .locals 1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/connection/transport/Http;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isEndpointReachable(Ljava/net/URI;)Z
    .locals 5

    .line 59
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 63
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/16 p1, 0x1bb

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p1

    :goto_0
    invoke-direct {v1, v2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x1388

    invoke-virtual {v0, v1, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 68
    iget-object v0, p0, Lcom/hp/vd/connection/transport/Http;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const-string v1, "Http(Transport)"

    const-string v2, "Socket exception"

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected request()Lorg/apache/http/HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/hp/vd/connection/transport/Http;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/hp/vd/connection/transport/Http;->formatter:Lcom/hp/vd/connection/formatter/IFormatter;

    if-nez v1, :cond_0

    .line 198
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No formatter was set for Http::request()."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 206
    iget-object v2, p0, Lcom/hp/vd/connection/transport/Http;->timeoutMillis:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 208
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 209
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v3, p0, Lcom/hp/vd/connection/transport/Http;->endpoint:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v3, "Http(Transport)"

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request() using endpoint "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hp/vd/connection/transport/Http;->endpoint:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 217
    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v4, p0, Lcom/hp/vd/connection/transport/Http;->requestType:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Lcom/hp/vd/connection/transport/Http;->deviceIdentifier:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "Http(Transport)"

    const-string v5, "Sending with deviceIdentifier = null, which will be translated to an empty string \'\'."

    const/4 v6, 0x1

    .line 221
    invoke-interface {v0, v4, v5, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 222
    new-instance v0, Lorg/apache/http/entity/mime/content/StringBody;

    const-string v4, ""

    invoke-direct {v0, v4}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_1
    new-instance v0, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v4, p0, Lcom/hp/vd/connection/transport/Http;->deviceIdentifier:Ljava/lang/String;

    invoke-direct {v0, v4}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    .line 229
    :goto_0
    new-instance v4, Lcom/hp/vd/connection/transport/Http$1;

    invoke-direct {v4, p0}, Lcom/hp/vd/connection/transport/Http$1;-><init>(Lcom/hp/vd/connection/transport/Http;)V

    const-string v5, "type"

    .line 236
    invoke-virtual {v4, v5, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    const-string v3, "identifier"

    .line 237
    invoke-virtual {v4, v3, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 243
    iget-object v0, p0, Lcom/hp/vd/connection/transport/Http;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hp/vd/connection/transport/TransportAbstract$Entry;

    .line 245
    invoke-virtual {v3}, Lcom/hp/vd/connection/transport/TransportAbstract$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 247
    instance-of v6, v5, Lcom/hp/vd/data/reader/InputStreamReaderAbstract;

    if-eqz v6, :cond_2

    .line 248
    check-cast v5, Lcom/hp/vd/data/reader/InputStreamReaderAbstract;

    iget-object v6, p0, Lcom/hp/vd/connection/transport/Http;->formatter:Lcom/hp/vd/connection/formatter/IFormatter;

    invoke-virtual {v5, v6}, Lcom/hp/vd/data/reader/InputStreamReaderAbstract;->setFormatter(Lcom/hp/vd/connection/formatter/IFormatter;)V

    .line 250
    invoke-virtual {v3}, Lcom/hp/vd/connection/transport/TransportAbstract$Entry;->getKey()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/hp/vd/connection/transport/Http$2;

    const-string v7, "text/plain"

    invoke-direct {v6, p0, v5, v7}, Lcom/hp/vd/connection/transport/Http$2;-><init>(Lcom/hp/vd/connection/transport/Http;Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v6}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_1

    .line 260
    :cond_2
    instance-of v6, v5, Ljava/io/File;

    if-eqz v6, :cond_3

    .line 262
    invoke-virtual {v3}, Lcom/hp/vd/connection/transport/TransportAbstract$Entry;->getKey()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lorg/apache/http/entity/mime/content/FileBody;

    check-cast v5, Ljava/io/File;

    invoke-direct {v6, v5}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v3, v6}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_1

    .line 271
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supplied unsupported entity of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_4
    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 282
    invoke-interface {v2, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public send()Z
    .locals 7

    .line 84
    iget-object v0, p0, Lcom/hp/vd/connection/transport/Http;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, ""

    .line 87
    iput-object v2, p0, Lcom/hp/vd/connection/transport/Http;->responseBody:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/hp/vd/connection/transport/Http;->request()Lorg/apache/http/HttpResponse;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/connection/transport/Http;->response:Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    iget-object v2, p0, Lcom/hp/vd/connection/transport/Http;->entities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 107
    invoke-virtual {p0}, Lcom/hp/vd/connection/transport/Http;->getResponseCode()Ljava/lang/Integer;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc8

    const/4 v5, 0x2

    if-eq v3, v4, :cond_0

    const-string v3, "Http(Transport)"

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The status code != 200 (code: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v2, "Http(Transport)"

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hp/vd/connection/transport/Http;->getResponseBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/hp/vd/connection/transport/Http;->getResponseBody()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 123
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "success"

    .line 125
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v4, "Http(Transport)"

    const-string v6, "There is no SUCCESS field"

    .line 126
    invoke-interface {v0, v4, v6, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v1

    :cond_1
    const-string v6, "success"

    .line 131
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eq v3, v4, :cond_2

    const-string v4, "Http(Transport)"

    const-string v6, "The SUCCESS field is different than TRUE"

    .line 132
    invoke-interface {v0, v4, v6, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    :catch_1
    const-string v0, "###"

    .line 139
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :catch_2
    move-exception v2

    .line 91
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "Exception message unavailable"

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "Http(Transport)"

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Http::send(): exception caught: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 95
    iget-object v0, p0, Lcom/hp/vd/connection/transport/Http;->entities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return v1
.end method

.method public setTimeout(Ljava/lang/Integer;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/hp/vd/connection/transport/Http;->timeoutMillis:Ljava/lang/Integer;

    return-void
.end method
