.class public Lcom/hp/vd/module/custom/update/UpdateRunnable;
.super Ljava/lang/Object;
.source "UpdateRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "SchemeUp::UpdateRunnable"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/MonolithicUpdateLog;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected log:Lcom/hp/vd/agent/log/IWriter;


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/MonolithicUpdateLog;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    .line 46
    iput-object v0, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 50
    iput-object p1, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    .line 51
    iput-object p2, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 52
    iput-object p3, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public byteToHex([B)Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected checkForUpdate()Lcom/hp/vd/module/custom/update/MetaVersion;
    .locals 8

    .line 186
    new-instance v0, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v0}, Lcom/hp/vd/agent/Configuration;-><init>()V

    .line 188
    iget-object v1, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-static {v1}, Lcom/hp/vd/agent/Factory;->createConnectionManager(Lcom/hp/vd/context/Context;)Lcom/hp/vd/connection/IManager;

    move-result-object v1

    const-string v2, "data"

    .line 189
    invoke-interface {v1, v2}, Lcom/hp/vd/connection/IManager;->setRequestType(Ljava/lang/String;)V

    .line 191
    new-instance v2, Lcom/hp/vd/data/MonolithicUpdate;

    invoke-direct {v2}, Lcom/hp/vd/data/MonolithicUpdate;-><init>()V

    .line 192
    invoke-virtual {v0}, Lcom/hp/vd/agent/Configuration;->getVersion()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/MonolithicUpdate;->version:Ljava/lang/Double;

    .line 194
    new-instance v3, Lcom/hp/vd/data/container/EntityContainer;

    invoke-direct {v3}, Lcom/hp/vd/data/container/EntityContainer;-><init>()V

    .line 195
    invoke-virtual {v3, v2}, Lcom/hp/vd/data/container/EntityContainer;->add(Lcom/hp/vd/data/IData;)V

    .line 197
    invoke-virtual {v3}, Lcom/hp/vd/data/container/EntityContainer;->iterator()Lcom/hp/vd/data/container/iterator/EntityIterator;

    move-result-object v2

    .line 198
    new-instance v3, Lcom/hp/vd/data/reader/InputStreamWithRootElement;

    invoke-direct {v3, v2}, Lcom/hp/vd/data/reader/InputStreamWithRootElement;-><init>(Ljava/util/Iterator;)V

    const-string v2, "data"

    .line 200
    invoke-interface {v1, v2, v3}, Lcom/hp/vd/connection/IManager;->addPart(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 201
    invoke-interface {v1}, Lcom/hp/vd/connection/IManager;->send()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 202
    iget-object v0, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SchemeUp::UpdateRunnable"

    const-string v2, "Cannot connect to check for an update"

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v3

    .line 212
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/hp/vd/connection/IManager;->getResponse()Ljava/lang/String;

    move-result-object v1

    .line 213
    iget-object v2, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "SchemeUp::UpdateRunnable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Update Response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 215
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    .line 217
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SchemeUp::UpdateRunnable"

    const-string v2, "The \'data\' cannot be found in the decodedResponse."

    invoke-interface {v0, v1, v2, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v3

    :cond_1
    const-string v1, "data"

    .line 223
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 226
    iget-object v0, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SchemeUp::UpdateRunnable"

    const-string v2, "The \'data\' array is empty."

    invoke-interface {v0, v1, v2, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v3

    :cond_2
    const/4 v2, 0x0

    .line 231
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 234
    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_3

    .line 235
    iget-object v0, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SchemeUp::UpdateRunnable"

    const-string v2, "The \'data\' is not an object! Most probably nothing to update."

    const/4 v4, 0x2

    invoke-interface {v0, v1, v2, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v3

    .line 245
    :cond_3
    :try_start_1
    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "url"

    .line 247
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x3

    if-eqz v2, :cond_6

    const-string v2, "version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "md5sum"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 253
    :cond_4
    new-instance v2, Lcom/hp/vd/module/custom/update/MetaVersion;

    invoke-direct {v2}, Lcom/hp/vd/module/custom/update/MetaVersion;-><init>()V

    const-string v5, "version"

    .line 255
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/hp/vd/module/custom/update/MetaVersion;->version:D

    const-string v5, "url"

    .line 256
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/hp/vd/module/custom/update/MetaVersion;->url:Ljava/lang/String;

    const-string v5, "md5sum"

    .line 257
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/hp/vd/module/custom/update/MetaVersion;->md5sum:Ljava/lang/String;

    .line 259
    iget-wide v5, v2, Lcom/hp/vd/module/custom/update/MetaVersion;->version:D

    invoke-virtual {v0}, Lcom/hp/vd/agent/Configuration;->getVersion()D

    move-result-wide v0

    cmpg-double v7, v5, v0

    if-gtz v7, :cond_5

    .line 260
    iget-object v0, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SchemeUp::UpdateRunnable"

    const-string v2, "Server supplied a version which is <= current. Most probably a bug."

    invoke-interface {v0, v1, v2, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v3

    :cond_5
    return-object v2

    .line 248
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "SchemeUp::UpdateRunnable"

    const-string v2, "Returned new version does not have .url or .version"

    invoke-interface {v0, v1, v2, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 268
    :try_start_2
    iget-object v1, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SchemeUp::UpdateRunnable"

    const-string v4, "Exception caught while parsing .data section of the response"

    invoke-interface {v1, v2, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 272
    iget-object v1, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SchemeUp::UpdateRunnable"

    const-string v4, "Exception caught processing the update response."

    invoke-interface {v1, v2, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_1
    return-object v3
.end method

.method protected download(Lcom/hp/vd/module/custom/update/MetaVersion;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    .line 281
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/update/UpdateRunnable;->generateLocalPath()Ljava/lang/String;

    move-result-object v1

    .line 283
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    invoke-virtual {p0, v1}, Lcom/hp/vd/module/custom/update/UpdateRunnable;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 285
    iget-object v3, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "SchemeUp::UpdateRunnable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calculated md5sum: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", remote md5sum: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/hp/vd/module/custom/update/MetaVersion;->md5sum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 287
    iget-object v3, p1, Lcom/hp/vd/module/custom/update/MetaVersion;->md5sum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    iget-object p1, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SchemeUp::UpdateRunnable"

    const-string v3, "Downloaded file has the correct md5sum. Using it instead of downloading new."

    invoke-interface {p1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v1

    .line 294
    :cond_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p1, Lcom/hp/vd/module/custom/update/MetaVersion;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 297
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 302
    iget-object v3, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "SchemeUp::UpdateRunnable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Downloading update to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 305
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 306
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x400

    .line 308
    new-array v4, v4, [B

    .line 311
    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x0

    .line 312
    invoke-virtual {v2, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 316
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 317
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 319
    invoke-virtual {p0, v1}, Lcom/hp/vd/module/custom/update/UpdateRunnable;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    iget-object p1, p1, Lcom/hp/vd/module/custom/update/MetaVersion;->md5sum:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    .line 321
    iget-object p1, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SchemeUp::UpdateRunnable"

    const-string v3, "Newly downloadeded file\'s md5sum does not match the remote md5sum."

    const/4 v4, 0x3

    invoke-interface {p1, v2, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 323
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_2
    return-object v1

    :catch_0
    move-exception p1

    .line 331
    iget-object v1, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SchemeUp::UpdateRunnable"

    const-string v3, "Exception caught while trying to download update"

    invoke-interface {v1, v2, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method protected generateLocalPath()Ljava/lang/String;
    .locals 2

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/aa.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/custom/update/UpdateRunnable;->md5sum(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/module/custom/update/UpdateRunnable;->byteToHex([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected intentInstall(Ljava/lang/String;)V
    .locals 2

    .line 344
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.android.package-archive"

    .line 347
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 349
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 351
    iget-object p1, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected isSignatureMarked(Ljava/lang/Double;)Z
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "system"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mark_version_signature_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected markSignature(Ljava/lang/Double;)Z
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "system"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mark_version_signature_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method

.method public md5sum(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x400

    .line 156
    new-array p1, p1, [B

    const-string v1, "MD5"

    .line 157
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 161
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 164
    invoke-virtual {v1, p1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 170
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    return-object p1
.end method

.method public process()V
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/update/UpdateRunnable;->updateVersionSignature()V

    .line 73
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/update/UpdateRunnable;->checkForUpdate()Lcom/hp/vd/module/custom/update/MetaVersion;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/custom/update/UpdateRunnable;->download(Lcom/hp/vd/module/custom/update/MetaVersion;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 93
    :cond_1
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/custom/update/UpdateRunnable;->intentInstall(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 4

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/update/UpdateRunnable;->process()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    iget-object v1, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SchemeUp::UpdateRunnable"

    const-string v3, "Exception caught while processing monolithic update"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method protected updateVersionSignature()V
    .locals 4

    .line 105
    :try_start_0
    new-instance v0, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v0}, Lcom/hp/vd/agent/Configuration;-><init>()V

    .line 107
    invoke-virtual {v0}, Lcom/hp/vd/agent/Configuration;->getVersion()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hp/vd/module/custom/update/UpdateRunnable;->isSignatureMarked(Ljava/lang/Double;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SchemeUp::UpdateRunnable"

    const-string v3, "signature not marked. Writing a log record."

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    new-instance v1, Lcom/hp/vd/data/MonolithicUpdateLog;

    invoke-direct {v1}, Lcom/hp/vd/data/MonolithicUpdateLog;-><init>()V

    .line 115
    invoke-virtual {v0}, Lcom/hp/vd/agent/Configuration;->getVersion()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v1, Lcom/hp/vd/data/MonolithicUpdateLog;->version:Ljava/lang/Double;

    .line 116
    invoke-virtual {v0}, Lcom/hp/vd/agent/Configuration;->getVersionCodename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hp/vd/data/MonolithicUpdateLog;->versionCodename:Ljava/lang/String;

    .line 117
    iget-object v2, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getInstance()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/hp/vd/data/MonolithicUpdateLog;->instance:Ljava/lang/String;

    .line 118
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v1, Lcom/hp/vd/data/MonolithicUpdateLog;->createdAt:Ljava/util/Date;

    .line 120
    iget-object v2, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 122
    invoke-virtual {v0}, Lcom/hp/vd/agent/Configuration;->getVersion()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/vd/module/custom/update/UpdateRunnable;->markSignature(Ljava/lang/Double;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    iget-object v1, p0, Lcom/hp/vd/module/custom/update/UpdateRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "SchemeUp::UpdateRunnable"

    const-string v3, "Exception caught while writing monolithic update log record"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
