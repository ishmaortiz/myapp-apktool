.class public Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HeartbeatDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/vd/module/custom/HeartbeatDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HeartbeatBroadcastReceiver"
.end annotation


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field final synthetic this$0:Lcom/hp/vd/module/custom/HeartbeatDispatcher;


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/custom/HeartbeatDispatcher;Lcom/hp/vd/context/Context;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;->this$0:Lcom/hp/vd/module/custom/HeartbeatDispatcher;

    .line 140
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;->context:Lcom/hp/vd/context/Context;

    .line 143
    invoke-virtual {p2}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 149
    iget-object p1, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v0, "ModuleAbstract"

    const-string v1, "onReceive() called."

    invoke-interface {p1, v0, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const-string p1, "com.hp.vb.intent.heartbeat.beat"

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 158
    iget-object p1, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    if-eqz p1, :cond_1

    .line 159
    iget-object p1, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "ModuleAbstract"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() intent received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", instead: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "com.hp.vb.intent.heartbeat.beat"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 159
    invoke-interface {p1, v1, p2, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    return-void

    .line 174
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getModules()Ljava/util/List;

    move-result-object p1

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 177
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hp/vd/module/IModule;

    if-nez p2, :cond_4

    goto :goto_0

    .line 192
    :cond_4
    invoke-interface {p2}, Lcom/hp/vd/module/IModule;->startOnHeartbeat()Z

    move-result v1

    if-ne v1, v0, :cond_3

    .line 193
    invoke-interface {p2}, Lcom/hp/vd/module/IModule;->start()Z

    move-result v1

    if-nez v1, :cond_3

    .line 195
    iget-object v1, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/hp/vd/module/custom/HeartbeatDispatcher$HeartbeatBroadcastReceiver;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "ModuleAbstract"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-interface {p2}, Lcom/hp/vd/module/IModule;->getModuleData()Lcom/hp/vd/data/ModuleData;

    move-result-object p2

    iget-object p2, p2, Lcom/hp/vd/data/ModuleData;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "::start() returned false."

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x3

    .line 196
    invoke-interface {v1, v2, p2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    return-void

    :catch_0
    return-void
.end method
