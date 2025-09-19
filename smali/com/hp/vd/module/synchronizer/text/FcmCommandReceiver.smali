.class public Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FcmCommandReceiver.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field protected instance:Lcom/hp/vd/module/synchronizer/TextSynchronizer;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/synchronizer/TextSynchronizer;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "TSCmdRecv"

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->instance:Lcom/hp/vd/module/synchronizer/TextSynchronizer;

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 27
    iput-object p1, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->instance:Lcom/hp/vd/module/synchronizer/TextSynchronizer;

    .line 28
    iput-object p2, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 29
    iput-object p3, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected changeSynchronizationInterval(Landroid/content/Context;Ljava/util/HashMap;)Z
    .locals 11
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

    .line 82
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TSCmdRecv"

    const-string v2, "dispatch(): dispatching ts_change_synchronization_interval"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v0, "_command_id"

    .line 88
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    const-string v0, "_command_token"

    .line 89
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    const-string v0, "new_synchronization_interval"

    .line 92
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object p2, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "TSCmdRecv"

    const-string v1, "new_synchronization_interval was not found in the fcm message."

    const/4 v2, 0x3

    invoke-interface {p2, v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v8, "-1"

    const-string p2, "new_synchronization_interval was not found in the fcm message."

    move-object v4, p0

    move-object v5, p1

    move-object v6, v9

    move-object v7, v10

    move-object v9, p2

    .line 99
    invoke-virtual/range {v4 .. v9}, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v0, "new_synchronization_interval"

    .line 104
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "synchronization_interval"

    invoke-virtual {v0, v1, p2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TSCmdRecv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatch(): synchronization_interval is now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", it is about to be persisted."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    invoke-interface {v0, v1, p2, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 113
    new-instance p2, Lcom/hp/vd/module/synchronizer/text/PersisterRunnable;

    iget-object v5, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->instance:Lcom/hp/vd/module/synchronizer/TextSynchronizer;

    iget-object v6, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v7, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    move-object v4, p2

    move-object v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/hp/vd/module/synchronizer/text/PersisterRunnable;-><init>(Lcom/hp/vd/module/synchronizer/TextSynchronizer;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    new-instance p1, Ljava/lang/Thread;

    const-string v0, "TSInterPersister-Thread"

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method protected changeWakeLockInterval(Landroid/content/Context;Ljava/util/HashMap;)Z
    .locals 11
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

    .line 121
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TSCmdRecv"

    const-string v2, "dispatch(): dispatching ts_change_wake_after_lock_acquisition"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v0, "_command_id"

    .line 127
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    const-string v0, "_command_token"

    .line 128
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    const-string v0, "new_wake_after_lock_interval"

    .line 131
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object p2, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "TSCmdRecv"

    const-string v1, "new_wake_after_lock_interval was not found in the fcm message."

    const/4 v2, 0x3

    invoke-interface {p2, v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v8, "-1"

    const-string p2, "new_wake_after_lock_interval was not found in the fcm message."

    move-object v4, p0

    move-object v5, p1

    move-object v6, v9

    move-object v7, v10

    move-object v9, p2

    .line 138
    invoke-virtual/range {v4 .. v9}, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v0, "new_wake_after_lock_interval"

    .line 143
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v1, "wake_after_lock_acquisition"

    invoke-virtual {v0, v1, p2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TSCmdRecv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatch(): wake_after_lock_acquisition is now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", it is about to be persisted."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    invoke-interface {v0, v1, p2, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 152
    new-instance p2, Lcom/hp/vd/module/synchronizer/text/PersisterRunnable;

    iget-object v5, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->instance:Lcom/hp/vd/module/synchronizer/TextSynchronizer;

    iget-object v6, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->moduleData:Lcom/hp/vd/data/ModuleData;

    iget-object v7, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    move-object v4, p2

    move-object v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/hp/vd/module/synchronizer/text/PersisterRunnable;-><init>(Lcom/hp/vd/module/synchronizer/TextSynchronizer;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance p1, Ljava/lang/Thread;

    const-string v0, "TSWakeLockPersister-Thread"

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method protected forceImmediateSynchronization(Landroid/content/Context;Ljava/util/HashMap;)Z
    .locals 7
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

    .line 160
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "TSCmdRecv"

    const-string v2, "dispatch(): dispatching ts_force_immediate_synchronization"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v0, "_command_id"

    .line 166
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "_command_token"

    .line 167
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    .line 169
    iget-object p2, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "TSCmdRecv"

    const-string v1, "dispatch(): ts_force_immediate_synchronization is now executing..."

    const/4 v2, 0x2

    invoke-interface {p2, v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 175
    iget-object p2, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->instance:Lcom/hp/vd/module/synchronizer/TextSynchronizer;

    invoke-virtual {p2}, Lcom/hp/vd/module/synchronizer/TextSynchronizer;->forceSynchronization()Z

    const-string v5, "1"

    const-string v6, "success"

    move-object v1, p0

    move-object v2, p1

    .line 177
    invoke-virtual/range {v1 .. v6}, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 36
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->process(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    iget-object p2, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "TSCmdRecv"

    const-string v1, "Exception caught in process()"

    invoke-interface {p2, v0, v1, p1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method protected process(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "com.hp.vb.FCM_COMMAND_RECEIVED"

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object p1, p0, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string p2, "TSCmdRecv"

    const-string v0, "fcm: onRecv skipping because what is recv is not a command"

    invoke-interface {p1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-string v0, "message"

    .line 52
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    const/4 v0, 0x3

    .line 54
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ts_change_synchronization_interval"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ts_change_wake_after_lock_acquisition"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ts_force_immediate_synchronization"

    aput-object v2, v0, v1

    if-eqz p2, :cond_5

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

    const-string v1, "ts_change_synchronization_interval"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->changeSynchronizationInterval(Landroid/content/Context;Ljava/util/HashMap;)Z

    :cond_2
    const-string v0, "_command"

    .line 71
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ts_change_wake_after_lock_acquisition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->changeWakeLockInterval(Landroid/content/Context;Ljava/util/HashMap;)Z

    :cond_3
    const-string v0, "_command"

    .line 75
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ts_force_immediate_synchronization"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/module/synchronizer/text/FcmCommandReceiver;->forceImmediateSynchronization(Landroid/content/Context;Ljava/util/HashMap;)Z

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method protected sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 184
    new-instance v0, Lcom/hp/vd/data/FcmCommandResponse;

    invoke-direct {v0}, Lcom/hp/vd/data/FcmCommandResponse;-><init>()V

    .line 186
    iput-object p2, v0, Lcom/hp/vd/data/FcmCommandResponse;->id:Ljava/lang/String;

    .line 187
    iput-object p3, v0, Lcom/hp/vd/data/FcmCommandResponse;->token:Ljava/lang/String;

    .line 189
    iput-object p4, v0, Lcom/hp/vd/data/FcmCommandResponse;->resultCode:Ljava/lang/String;

    .line 190
    iput-object p5, v0, Lcom/hp/vd/data/FcmCommandResponse;->resultBody:Ljava/lang/String;

    .line 192
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/hp/vd/fcm/Sender;

    invoke-direct {p3, p1, v0}, Lcom/hp/vd/fcm/Sender;-><init>(Landroid/content/Context;Lcom/hp/vd/data/FcmCommandResponse;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
