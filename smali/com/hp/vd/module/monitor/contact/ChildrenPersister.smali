.class public Lcom/hp/vd/module/monitor/contact/ChildrenPersister;
.super Ljava/lang/Object;
.source "ChildrenPersister.java"


# instance fields
.field contactAddressDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactAddressData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field contactEmailDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactEmailData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field contactInstantMessengerDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactInstantMessengerData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field contactNoteDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactNoteData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field contactOrganizationDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactOrganizationData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field contactPhoneDao:Lcom/j256/ormlite/dao/Dao;
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
.method public constructor <init>(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactPhoneData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactEmailData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactNoteData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactInstantMessengerData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactAddressData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ContactOrganizationData;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactPhoneDao:Lcom/j256/ormlite/dao/Dao;

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactEmailDao:Lcom/j256/ormlite/dao/Dao;

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactNoteDao:Lcom/j256/ormlite/dao/Dao;

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactInstantMessengerDao:Lcom/j256/ormlite/dao/Dao;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactAddressDao:Lcom/j256/ormlite/dao/Dao;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactOrganizationDao:Lcom/j256/ormlite/dao/Dao;

    .line 33
    iput-object p1, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactPhoneDao:Lcom/j256/ormlite/dao/Dao;

    .line 34
    iput-object p2, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactEmailDao:Lcom/j256/ormlite/dao/Dao;

    .line 35
    iput-object p3, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactNoteDao:Lcom/j256/ormlite/dao/Dao;

    .line 36
    iput-object p4, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactInstantMessengerDao:Lcom/j256/ormlite/dao/Dao;

    .line 37
    iput-object p5, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactAddressDao:Lcom/j256/ormlite/dao/Dao;

    .line 38
    iput-object p6, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactOrganizationDao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method


# virtual methods
.method public readAndPersistRecords(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V

    .line 51
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->prepare()Z

    .line 52
    :goto_0
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->getData()Lcom/hp/vd/data/IData;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactPhoneDao:Lcom/j256/ormlite/dao/Dao;

    check-cast v1, Lcom/hp/vd/data/ContactPhoneData;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactPhoneReader;->close()V

    .line 63
    new-instance v0, Lcom/hp/vd/module/monitor/contact/ContactEmailReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/hp/vd/module/monitor/contact/ContactEmailReader;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V

    .line 66
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactEmailReader;->prepare()Z

    .line 67
    :goto_1
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactEmailReader;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactEmailReader;->getData()Lcom/hp/vd/data/IData;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactEmailDao:Lcom/j256/ormlite/dao/Dao;

    check-cast v1, Lcom/hp/vd/data/ContactEmailData;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactEmailReader;->close()V

    .line 78
    new-instance v0, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V

    .line 81
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;->prepare()Z

    .line 82
    :goto_2
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;->getData()Lcom/hp/vd/data/IData;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactNoteDao:Lcom/j256/ormlite/dao/Dao;

    check-cast v1, Lcom/hp/vd/data/ContactNoteData;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_2

    .line 87
    :cond_2
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactNoteReader;->close()V

    .line 93
    new-instance v0, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V

    .line 96
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->prepare()Z

    .line 97
    :goto_3
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->getData()Lcom/hp/vd/data/IData;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactInstantMessengerDao:Lcom/j256/ormlite/dao/Dao;

    check-cast v1, Lcom/hp/vd/data/ContactInstantMessengerData;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_3

    .line 102
    :cond_3
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactInstantMessengerReader;->close()V

    .line 108
    new-instance v0, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V

    .line 111
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->prepare()Z

    .line 112
    :goto_4
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->getData()Lcom/hp/vd/data/IData;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactAddressDao:Lcom/j256/ormlite/dao/Dao;

    check-cast v1, Lcom/hp/vd/data/ContactAddressData;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_4

    .line 117
    :cond_4
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactAddressReader;->close()V

    .line 123
    new-instance v0, Lcom/hp/vd/module/monitor/contact/ContactOrganizationReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/hp/vd/module/monitor/contact/ContactOrganizationReader;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Landroid/content/ContentResolver;)V

    .line 126
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactOrganizationReader;->prepare()Z

    .line 127
    :goto_5
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactOrganizationReader;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 128
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactOrganizationReader;->getData()Lcom/hp/vd/data/IData;

    move-result-object p1

    .line 130
    iget-object p2, p0, Lcom/hp/vd/module/monitor/contact/ChildrenPersister;->contactOrganizationDao:Lcom/j256/ormlite/dao/Dao;

    check-cast p1, Lcom/hp/vd/data/ContactOrganizationData;

    invoke-interface {p2, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_5

    .line 132
    :cond_5
    invoke-virtual {v0}, Lcom/hp/vd/module/monitor/contact/ContactOrganizationReader;->close()V

    return-void
.end method
