.class public Lcom/hp/vd/agent/DeviceAdminHandler;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "DeviceAdminHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/vd/agent/DeviceAdminHandler$LogicalSender;
    }
.end annotation


# static fields
.field public static final STATUS_DISABLED:I = 0x0

.field public static final STATUS_ENABLED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected generateNote(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "during-operation"

    .line 73
    invoke-static {p1}, Lcom/hp/vd/agent/InstallHelper;->isInstalledCompletely(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string v0, "during-installation"

    :cond_0
    return-object v0
.end method

.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 57
    invoke-virtual {p0, p1}, Lcom/hp/vd/agent/DeviceAdminHandler;->generateNote(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, p1, v0, p2}, Lcom/hp/vd/agent/DeviceAdminHandler;->upload(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 43
    invoke-virtual {p0, p1}, Lcom/hp/vd/agent/DeviceAdminHandler;->generateNote(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, p1, v0, p2}, Lcom/hp/vd/agent/DeviceAdminHandler;->upload(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method protected upload(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .line 83
    :try_start_0
    new-instance v0, Lcom/hp/vd/data/DeviceAdminChangeData;

    invoke-direct {v0}, Lcom/hp/vd/data/DeviceAdminChangeData;-><init>()V

    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lcom/hp/vd/data/DeviceAdminChangeData;->status:Ljava/lang/Integer;

    .line 86
    iput-object p3, v0, Lcom/hp/vd/data/DeviceAdminChangeData;->note:Ljava/lang/String;

    .line 87
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    iput-object p2, v0, Lcom/hp/vd/data/DeviceAdminChangeData;->createdAt:Ljava/util/Date;

    .line 89
    new-instance p2, Lcom/hp/vd/context/Context;

    invoke-direct {p2}, Lcom/hp/vd/context/Context;-><init>()V

    .line 90
    invoke-virtual {p2, p1}, Lcom/hp/vd/context/Context;->setApplicationContext(Landroid/content/Context;)V

    .line 91
    new-instance p3, Lcom/hp/vd/agent/Utility;

    invoke-direct {p3, p2}, Lcom/hp/vd/agent/Utility;-><init>(Lcom/hp/vd/context/Context;)V

    const-string p2, "system"

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v1, "email"

    const/4 v2, 0x0

    .line 98
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 100
    new-instance v1, Lcom/hp/vd/agent/DeviceAdminHandler$LogicalSender;

    .line 101
    invoke-virtual {p3, p2}, Lcom/hp/vd/agent/Utility;->getUniqueIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/hp/vd/agent/DeviceAdminHandler$LogicalSender;-><init>(Lcom/hp/vd/agent/DeviceAdminHandler;Ljava/lang/String;Lcom/hp/vd/data/DeviceAdminChangeData;Landroid/content/Context;)V

    .line 106
    new-instance p1, Ljava/lang/Thread;

    const-string p2, "DAHLogicalSender"

    invoke-direct {p1, v1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
