.class public Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FcmCommandReceiver.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field protected instance:Lcom/hp/vd/module/monitor/LocationMonitor;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/monitor/LocationMonitor;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "LocCmdRecv"

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->instance:Lcom/hp/vd/module/monitor/LocationMonitor;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 28
    iput-object p1, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->instance:Lcom/hp/vd/module/monitor/LocationMonitor;

    .line 29
    iput-object p2, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 30
    iput-object p3, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected changeProbeInterval(Landroid/content/Context;Ljava/util/HashMap;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "LocCmdRecv"

    const-string v2, "dispatch(): dispatching loc_change_probe_interval"

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "_command_id"

    .line 80
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const-string v0, "_command_token"

    .line 81
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const-string v0, "new_probe_interval"

    .line 84
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object p2, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "LocCmdRecv"

    const-string v1, "new_probe_interval was not found in the fcm message."

    const/4 v2, 0x3

    invoke-interface {p2, v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v5, "-1"

    const-string p2, "new_probe_interval was not found in the fcm message."

    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, v7

    move-object v6, p2

    .line 91
    invoke-virtual/range {v1 .. v6}, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "new_probe_interval"

    .line 96
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "probe_interval"

    invoke-virtual {v0, v1, p2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "LocCmdRecv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatch(): probe_interval is now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", it is about to be persisted."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    invoke-interface {v0, v1, p2, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 105
    new-instance p2, Lcom/hp/vd/module/monitor/location/PersisterRunnable;

    iget-object v2, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->instance:Lcom/hp/vd/module/monitor/LocationMonitor;

    iget-object v3, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v4, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    move-object v1, p2

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/hp/vd/module/monitor/location/PersisterRunnable;-><init>(Lcom/hp/vd/module/monitor/LocationMonitor;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance p1, Ljava/lang/Thread;

    const-string v0, "LocProbeIntPersister-Thread"

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method protected checkLocationProviders(Landroid/content/Context;Ljava/util/HashMap;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "LocCmdRecv"

    const-string v2, "dispatch(): dispatching check_location_providers"

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "_command_id"

    .line 115
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "_command_token"

    .line 116
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    const/4 p2, 0x3

    .line 118
    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "gps"

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "network"

    const/4 v7, 0x1

    aput-object v0, p2, v7

    const-string v0, "passive"

    const/4 v2, 0x2

    aput-object v0, p2, v2

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    array-length v5, p2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, p2, v1

    .line 127
    iget-object v8, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->instance:Lcom/hp/vd/module/monitor/LocationMonitor;

    invoke-virtual {v8, v6}, Lcom/hp/vd/module/monitor/LocationMonitor;->checkProviderStatus(Ljava/lang/String;)Z

    move-result v8

    .line 129
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-object p2, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "LocCmdRecv"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatch(): check_location_providers output: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-interface {p2, v1, v5, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v5, "1"

    .line 138
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v7
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 37
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->process(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    iget-object p2, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "LocCmdRecv"

    const-string v1, "Exception caught in process()"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method protected process(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "com.hp.vb.FCM_COMMAND_RECEIVED"

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object p1, p0, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "LocCmdRecv"

    const-string v0, "fcm: onRecv skipping because what is recv is not a command"

    invoke-interface {p1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "message"

    .line 53
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const/4 v0, 0x2

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "loc_change_probe_interval"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "check_location_providers"

    aput-object v2, v0, v1

    if-eqz p2, :cond_4

    .line 61
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "_command"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "_command"

    .line 67
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "loc_change_probe_interval"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->changeProbeInterval(Landroid/content/Context;Ljava/util/HashMap;)Z

    :cond_2
    const-string v0, "_command"

    .line 71
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "check_location_providers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/monitor/location/FcmCommandReceiver;->checkLocationProviders(Landroid/content/Context;Ljava/util/HashMap;)Z

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method protected sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 145
    new-instance v0, Lcom/hp/vd/data/FcmCommandResponse;

    invoke-direct {v0}, Lcom/hp/vd/data/FcmCommandResponse;-><init>()V

    .line 147
    iput-object p2, v0, Lcom/hp/vd/data/FcmCommandResponse;->id:Ljava/lang/String;

    .line 148
    iput-object p3, v0, Lcom/hp/vd/data/FcmCommandResponse;->token:Ljava/lang/String;

    .line 150
    iput-object p4, v0, Lcom/hp/vd/data/FcmCommandResponse;->resultCode:Ljava/lang/String;

    .line 151
    iput-object p5, v0, Lcom/hp/vd/data/FcmCommandResponse;->resultBody:Ljava/lang/String;

    .line 153
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/hp/vd/fcm/Sender;

    invoke-direct {p3, p1, v0}, Lcom/hp/vd/fcm/Sender;-><init>(Landroid/content/Context;Lcom/hp/vd/data/FcmCommandResponse;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
