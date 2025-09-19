.class public Lcom/hp/vd/data/persistency/ContactDao;
.super Lcom/j256/ormlite/dao/BaseDaoImpl;
.source "ContactDao.java"

# interfaces
.implements Lcom/hp/vd/data/persistency/ContextAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/vd/data/persistency/ContactDao$IteratorProxyDecorator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/j256/ormlite/dao/BaseDaoImpl<",
        "Lcom/hp/vd/data/ContactData;",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/hp/vd/data/persistency/ContextAware;"
    }
.end annotation


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

.field protected contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

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


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 40
    const-class v0, Lcom/hp/vd/data/ContactData;

    invoke-direct {p0, p1, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected hydrateContactData(Lcom/hp/vd/data/ContactData;)V
    .locals 3

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactPhoneDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v0}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 102
    iget-object v1, p1, Lcom/hp/vd/data/ContactData;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    .line 104
    iget-object v1, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactPhoneDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "contactId"

    .line 105
    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 107
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/hp/vd/data/ContactData;->phones:Ljava/util/List;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactEmailDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v0}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 114
    iget-object v1, p1, Lcom/hp/vd/data/ContactData;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    .line 116
    iget-object v1, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactEmailDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "contactId"

    .line 117
    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 119
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/hp/vd/data/ContactData;->emails:Ljava/util/List;

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactNoteDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_2

    .line 125
    new-instance v0, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v0}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 126
    iget-object v1, p1, Lcom/hp/vd/data/ContactData;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactNoteDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "contactId"

    .line 129
    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 131
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/hp/vd/data/ContactData;->notes:Ljava/util/List;

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactInstantMessengerDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_3

    .line 137
    new-instance v0, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v0}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 138
    iget-object v1, p1, Lcom/hp/vd/data/ContactData;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactInstantMessengerDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "contactId"

    .line 141
    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 143
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/hp/vd/data/ContactData;->instantMessengers:Ljava/util/List;

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactAddressDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_4

    .line 149
    new-instance v0, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v0}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 150
    iget-object v1, p1, Lcom/hp/vd/data/ContactData;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactAddressDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "contactId"

    .line 153
    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 155
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/hp/vd/data/ContactData;->addresses:Ljava/util/List;

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactOrganizationDao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_5

    .line 161
    new-instance v0, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v0}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    .line 162
    iget-object v1, p1, Lcom/hp/vd/data/ContactData;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/SelectArg;->setValue(Ljava/lang/Object;)V

    .line 164
    iget-object v1, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactOrganizationDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "contactId"

    .line 165
    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 167
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/hp/vd/data/ContactData;->organizations:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected initializeDaos()V
    .locals 1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    if-eqz v0, :cond_5

    .line 54
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactPhoneDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContactPhoneDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactPhoneDao:Lcom/j256/ormlite/dao/Dao;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactEmailDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContactEmailDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactEmailDao:Lcom/j256/ormlite/dao/Dao;

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactNoteDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContactNoteDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactNoteDao:Lcom/j256/ormlite/dao/Dao;

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactInstantMessengerDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_3

    .line 67
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContactInstantMessengerDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactInstantMessengerDao:Lcom/j256/ormlite/dao/Dao;

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactAddressDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_4

    .line 71
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContactAddressDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactAddressDao:Lcom/j256/ormlite/dao/Dao;

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactOrganizationDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_5

    .line 75
    iget-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/ContactMonitor;->getContactOrganizationDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactOrganizationDao:Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator<",
            "Lcom/hp/vd/data/ContactData;",
            ">;"
        }
    .end annotation

    .line 252
    invoke-super {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    .line 254
    const-class v1, Lcom/j256/ormlite/dao/CloseableIterator;

    .line 256
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/j256/ormlite/dao/CloseableIterator;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/hp/vd/data/persistency/ContactDao$IteratorProxyDecorator;

    invoke-direct {v3, p0, v0}, Lcom/hp/vd/data/persistency/ContactDao$IteratorProxyDecorator;-><init>(Lcom/hp/vd/data/persistency/ContactDao;Ljava/lang/Object;)V

    .line 255
    invoke-static {v1, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/CloseableIterator;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/hp/vd/data/persistency/ContactDao;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public queryForAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hp/vd/data/ContactData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 276
    invoke-super {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->queryForAll()Ljava/util/List;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Lcom/hp/vd/data/persistency/ContactDao;->initializeDaos()V

    .line 284
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hp/vd/data/ContactData;

    .line 285
    invoke-virtual {p0, v2}, Lcom/hp/vd/data/persistency/ContactDao;->hydrateContactData(Lcom/hp/vd/data/ContactData;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setContext(Lcom/hp/vd/module/IModule;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/hp/vd/module/monitor/ContactMonitor;

    iput-object p1, p0, Lcom/hp/vd/data/persistency/ContactDao;->contactMonitor:Lcom/hp/vd/module/monitor/ContactMonitor;

    return-void
.end method
