.class public Lcom/hp/vd/agent/DeviceAdminHandler$LogicalSender;
.super Lcom/hp/vd/agent/common/Sender;
.source "DeviceAdminHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/vd/agent/DeviceAdminHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LogicalSender"
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected deviceAdminChange:Lcom/hp/vd/data/DeviceAdminChangeData;

.field final synthetic this$0:Lcom/hp/vd/agent/DeviceAdminHandler;


# direct methods
.method public constructor <init>(Lcom/hp/vd/agent/DeviceAdminHandler;Ljava/lang/String;Lcom/hp/vd/data/DeviceAdminChangeData;Landroid/content/Context;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/hp/vd/agent/DeviceAdminHandler$LogicalSender;->this$0:Lcom/hp/vd/agent/DeviceAdminHandler;

    .line 120
    invoke-direct {p0, p2, p3}, Lcom/hp/vd/agent/common/Sender;-><init>(Ljava/lang/String;Lcom/hp/vd/data/DataAbstract;)V

    .line 122
    iput-object p4, p0, Lcom/hp/vd/agent/DeviceAdminHandler$LogicalSender;->context:Landroid/content/Context;

    .line 123
    iput-object p3, p0, Lcom/hp/vd/agent/DeviceAdminHandler$LogicalSender;->deviceAdminChange:Lcom/hp/vd/data/DeviceAdminChangeData;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 129
    invoke-super {p0}, Lcom/hp/vd/agent/common/Sender;->_run()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/hp/vd/agent/DeviceAdminHandler$LogicalSender;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/hp/vd/agent/DeviceAdminHandler$LogicalSender;->deviceAdminChange:Lcom/hp/vd/data/DeviceAdminChangeData;

    iget-object v1, v1, Lcom/hp/vd/data/DeviceAdminChangeData;->status:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/agent/DeviceAdminHandler$LogicalSender;->sendDacBroadcast(Landroid/content/Context;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method protected sendDacBroadcast(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 2

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.hp.vb.intent.device_admin.change"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "status"

    .line 138
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
