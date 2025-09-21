.class public Lcom/hp/vd/agent/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/vd/agent/ModuleManager$Configuration;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "ModuleManager"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    return-void
.end method


# virtual methods
.method public generateMap(Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/hp/vd/agent/ModuleManager$Configuration;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 415
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    .line 417
    :try_start_0
    iget-object v2, v1, Lcom/hp/vd/agent/ModuleManager$Configuration;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hp/vd/module/IModule;

    .line 419
    invoke-interface {v2}, Lcom/hp/vd/module/IModule;->getModuleName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/hp/vd/agent/ModuleManager$Configuration;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 422
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getApplicationDefault()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/hp/vd/agent/ModuleManager$Configuration;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/custom/HeartbeatDispatcher;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/custom/MonolithicUpdater;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/custom/MonolithicSchemeUpdater;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/PlayProtectMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/BootNotificationMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/DeviceAdminChangeMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/KeylogStateMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/custom/FcmTokenSynchronizer;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/custom/Ping;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/custom/Cleaner;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/DeviceInformationMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/CallMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/SmsMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/ContactMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/LocationMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/ApplicationMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/VideoMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/ImageMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/synchronizer/TextSynchronizer;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/synchronizer/FileSynchronizer;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/StateInfoMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/AudioMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/BrowserHistoryMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/BrowserBookmarkMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/FacebookMessageMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/KikMessageMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/TelegramMessageMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/LineChatMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/ViberCallProvider;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/ViberMessageProvider;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/custom/ViberCollector;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/SkypeCallProvider;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/SkypeMessageProvider;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/SkypeContactProvider;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/custom/SkypeCollector;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/TinderMatchProvider;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/TinderMessageProvider;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/custom/TinderCollector;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/WhatsAppMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/WhatsAppCallProvider;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/KeylogMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/EventCalendarMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/AccountMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/EmailMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/WifiNetworkMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/DocumentMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/FacebookMessageLiteMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v1, Lcom/hp/vd/agent/ModuleManager$Configuration;

    const-class v2, Lcom/hp/vd/module/monitor/ClipboardMonitor;

    sget-object v3, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/hp/vd/agent/ModuleManager$Configuration;-><init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getRemoteConfiguration()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/hp/vd/agent/ModuleManager$Configuration;",
            ">;"
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/hp/vd/agent/ModuleManager;->getApplicationDefault()Ljava/util/ArrayList;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Lcom/hp/vd/agent/ModuleManager;->getRemoteMonolithicSchema()Ljava/util/List;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    if-eqz v1, :cond_5

    .line 237
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :cond_5

    .line 242
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hp/vd/agent/ModuleManager;->generateMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v2

    .line 243
    invoke-virtual {p0, v1, v2}, Lcom/hp/vd/agent/ModuleManager;->lookupMetaModules(Ljava/util/List;Ljava/util/Map;)V

    .line 245
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hp/vd/agent/ModuleManager$Configuration;

    .line 246
    iget-boolean v4, v3, Lcom/hp/vd/agent/ModuleManager$Configuration;->configurable:Z

    if-nez v4, :cond_2

    goto :goto_0

    .line 250
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hp/vd/module/MetaModule;

    .line 251
    iget-object v6, v3, Lcom/hp/vd/agent/ModuleManager$Configuration;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/hp/vd/module/MetaModule;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 252
    iget-object v5, v5, Lcom/hp/vd/module/MetaModule;->status:Ljava/lang/Integer;

    iput-object v5, v3, Lcom/hp/vd/agent/ModuleManager$Configuration;->status:Ljava/lang/Integer;

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public getRemoteMonolithicSchema()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hp/vd/module/MetaModule;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    new-instance v2, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v2}, Lcom/hp/vd/agent/Configuration;-><init>()V

    .line 273
    iget-object v3, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-static {v3}, Lcom/hp/vd/agent/Factory;->createConnectionManager(Lcom/hp/vd/context/Context;)Lcom/hp/vd/connection/IManager;

    move-result-object v3

    const-string v4, "data"

    .line 274
    invoke-interface {v3, v4}, Lcom/hp/vd/connection/IManager;->setRequestType(Ljava/lang/String;)V

    .line 280
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 283
    :try_start_0
    iget-object v5, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v5}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v5

    .line 284
    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 302
    new-instance v6, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v7, "monolithic_scheme"

    invoke-direct {v6, v7}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 308
    new-instance v7, Lcom/hp/vd/data/CustomData;

    const-string v8, "monolithic_scheme"

    const-string v9, "2"

    invoke-direct {v7, v8, v9, v6}, Lcom/hp/vd/data/CustomData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/hp/vd/data/presentation/NodeAbstract;)V

    .line 310
    new-instance v8, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v9, "list"

    invoke-direct {v8, v9}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 311
    new-instance v9, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v10, "version"

    invoke-virtual {v2}, Lcom/hp/vd/agent/Configuration;->getVersion()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v9, v10, v2}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-virtual {v6, v9}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 312
    invoke-virtual {v6, v8}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 314
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hp/vd/data/ModuleData;

    .line 315
    new-instance v6, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v9, "package"

    invoke-direct {v6, v9}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 319
    new-instance v9, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v10, "name"

    iget-object v11, v5, Lcom/hp/vd/data/ModuleData;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 320
    new-instance v9, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v10, "status"

    iget-object v5, v5, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v10, v5}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 322
    invoke-virtual {v8, v6}, Lcom/hp/vd/data/presentation/KeyValueNode;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    goto :goto_0

    .line 325
    :cond_0
    new-instance v2, Lcom/hp/vd/data/container/EntityContainer;

    invoke-direct {v2}, Lcom/hp/vd/data/container/EntityContainer;-><init>()V

    .line 326
    invoke-virtual {v2, v7}, Lcom/hp/vd/data/container/EntityContainer;->add(Lcom/hp/vd/data/IData;)V

    .line 328
    invoke-virtual {v2}, Lcom/hp/vd/data/container/EntityContainer;->iterator()Lcom/hp/vd/data/container/iterator/EntityIterator;

    move-result-object v2

    .line 329
    new-instance v5, Lcom/hp/vd/data/reader/InputStreamWithRootElement;

    invoke-direct {v5, v2}, Lcom/hp/vd/data/reader/InputStreamWithRootElement;-><init>(Ljava/util/Iterator;)V

    const-string v2, "data"

    .line 331
    invoke-interface {v3, v2, v5}, Lcom/hp/vd/connection/IManager;->addPart(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 332
    invoke-interface {v3}, Lcom/hp/vd/connection/IManager;->send()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v4

    .line 341
    :cond_1
    :try_start_1
    invoke-interface {v3}, Lcom/hp/vd/connection/IManager;->getResponse()Ljava/lang/String;

    move-result-object v2

    .line 342
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    .line 344
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_2

    const-string v1, "ModuleManager"

    const-string v2, "The \'data\' cannot be found in the decodedResponse."

    .line 345
    invoke-interface {v0, v1, v2, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v4

    :cond_2
    const-string v2, "data"

    .line 350
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 352
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_3

    const-string v1, "ModuleManager"

    const-string v2, "The \'data\' array is empty."

    .line 353
    invoke-interface {v0, v1, v2, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v4

    :cond_3
    const/4 v3, 0x0

    .line 362
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 364
    instance-of v6, v2, Lorg/json/JSONArray;

    if-nez v6, :cond_4

    const-string v1, "ModuleManager"

    const-string v2, "The \'data\' is not an array!."

    const/4 v3, 0x2

    .line 365
    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return-object v4

    .line 370
    :cond_4
    check-cast v2, Lorg/json/JSONArray;

    .line 372
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_7

    .line 373
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "name"

    .line 376
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "status"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    .line 382
    :cond_5
    new-instance v7, Lcom/hp/vd/module/MetaModule;

    invoke-direct {v7}, Lcom/hp/vd/module/MetaModule;-><init>()V

    const-string v8, "name"

    .line 384
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/hp/vd/module/MetaModule;->name:Ljava/lang/String;

    const-string v8, "status"

    .line 385
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v7, Lcom/hp/vd/module/MetaModule;->status:Ljava/lang/Integer;

    .line 387
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    :goto_2
    const-string v6, "ModuleManager"

    const-string v7, "No \'name\' or \'status\' fields was/were found for this module."

    .line 377
    invoke-interface {v0, v6, v7, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 398
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hp/vd/module/MetaModule;

    const-string v4, "ModuleManager"

    .line 399
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "metaModule found on remote: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/hp/vd/module/MetaModule;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/hp/vd/module/MetaModule;->status:Ljava/lang/Integer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :cond_8
    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "ModuleManager"

    const-string v3, "Error processing server response."

    .line 392
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 393
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v4

    :catch_1
    move-exception v1

    .line 287
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "ModuleManager"

    const-string v3, "ModuleManager::checkForUpdate(): FAILED selecting installed modules before making the update request."

    .line 289
    invoke-interface {v0, v2, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-object v4
.end method

.method public initializeModule(Lcom/hp/vd/data/ModuleData;)Z
    .locals 6

    .line 569
    iget-object v0, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 571
    iget-object v1, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    iget-object v2, p1, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/hp/vd/context/Context;->getModule(Ljava/lang/String;)Lcom/hp/vd/module/IModule;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v1, :cond_0

    const-string v1, "ModuleManager"

    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startModule() cannot find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in the context."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 582
    :cond_0
    iget-object v4, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-interface {v1, v4}, Lcom/hp/vd/module/IModule;->setContext(Lcom/hp/vd/context/Context;)V

    .line 584
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->initialize()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ModuleManager"

    .line 585
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startModule(): cannot initialize() module: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public listInstalledModules()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hp/vd/data/ModuleData;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 534
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-string v3, "priority_load"

    const/4 v4, 0x1

    .line 535
    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 536
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    .line 537
    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v1

    .line 538
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 540
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 541
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hp/vd/data/ModuleData;

    const-string v4, "ModuleManager"

    .line 543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "listInstalledModules(): read from database: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", v="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public listInstalledModules(Ljava/lang/Integer;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Lcom/hp/vd/data/ModuleData;",
            ">;"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 501
    invoke-virtual {p0}, Lcom/hp/vd/agent/ModuleManager;->listInstalledModules()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 507
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 509
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 510
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hp/vd/data/ModuleData;

    .line 512
    iget-object v4, v3, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    if-eq v4, p1, :cond_1

    const-string v4, "ModuleManager"

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "listInstalledModules(): removing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", v="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " because in state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/hp/vd/data/ModuleData;->status:Ljava/lang/Integer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (wanted to be in "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v0, v4, v3, v5}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 520
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public lookupMetaModules(Ljava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hp/vd/module/MetaModule;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 434
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hp/vd/module/MetaModule;

    .line 435
    iget-object v1, v0, Lcom/hp/vd/module/MetaModule;->name:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, v0, Lcom/hp/vd/module/MetaModule;->name:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/hp/vd/module/MetaModule;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public mergeModuleData(Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/data/ModuleData;)V
    .locals 1

    .line 473
    iget-object v0, p2, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    iput-object v0, p1, Lcom/hp/vd/data/ModuleData;->version:Ljava/lang/Integer;

    .line 474
    iget-object v0, p2, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    iput-object v0, p1, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    .line 480
    iget-object v0, p1, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-static {v0}, Lcom/hp/vd/data/helper/CustomField;->parse(Ljava/lang/String;)Lcom/hp/vd/data/helper/CustomField;

    move-result-object v0

    .line 481
    iget-object p2, p2, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-static {p2}, Lcom/hp/vd/data/helper/CustomField;->parse(Ljava/lang/String;)Lcom/hp/vd/data/helper/CustomField;

    move-result-object p2

    .line 483
    invoke-virtual {v0, p2}, Lcom/hp/vd/data/helper/CustomField;->mergeWith(Lcom/hp/vd/data/helper/CustomField;)V

    .line 485
    invoke-virtual {v0}, Lcom/hp/vd/data/helper/CustomField;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    return-void
.end method

.method public startModule(Lcom/hp/vd/data/ModuleData;)Z
    .locals 5

    .line 607
    iget-object v0, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 609
    iget-object v1, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1, p1}, Lcom/hp/vd/context/Context;->isModuleStarted(Lcom/hp/vd/data/ModuleData;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "ModuleManager"

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startModule() will not start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",v="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hp/vd/data/ModuleData;->versionCodename:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because it is already started."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-interface {v0, v1, p1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 620
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    iget-object v3, p1, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/hp/vd/context/Context;->getModule(Ljava/lang/String;)Lcom/hp/vd/module/IModule;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "ModuleManager"

    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startModule() cannot find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in the context."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    invoke-interface {v0, v1, p1, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    return v2

    .line 631
    :cond_1
    invoke-interface {v1}, Lcom/hp/vd/module/IModule;->start()Z

    move-result p1

    return p1
.end method

.method public startModules()V
    .locals 6

    .line 644
    iget-object v0, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 645
    iget-object v1, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getModules()Ljava/util/List;

    move-result-object v1

    .line 647
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 648
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hp/vd/module/IModule;

    .line 650
    invoke-interface {v2}, Lcom/hp/vd/module/IModule;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ModuleManager"

    .line 651
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startModules(): Not starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-interface {v2}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iget-object v2, v2, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because it is already started."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 651
    invoke-interface {v0, v3, v2, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 660
    :cond_1
    invoke-interface {v2}, Lcom/hp/vd/module/IModule;->start()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ModuleManager"

    .line 661
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-interface {v2}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object v2

    iget-object v2, v2, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    .line 661
    invoke-interface {v0, v3, v2, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public updateStatus(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 5

    .line 673
    iget-object v0, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v0

    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/agent/ModuleManager;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 677
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v1

    const-string v2, "status"

    .line 680
    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 681
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 688
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    move-result v1

    const-string v2, "ModuleManager"

    .line 690
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStatus("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") updated rows: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (new status: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {v0, v2, p1, p2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "ModuleManager"

    const-string v1, "Cannot update module status."

    .line 697
    invoke-interface {v0, p2, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    return p1
.end method
