.class public abstract Lcom/hp/vd/module/ActivatableBroadcastReceiverAbstract;
.super Landroid/content/BroadcastReceiver;
.source "ActivatableBroadcastReceiverAbstract.java"

# interfaces
.implements Lcom/hp/vd/module/ActivatableInterface;


# instance fields
.field protected active:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/hp/vd/module/ActivatableBroadcastReceiverAbstract;->active:Z

    return-void
.end method


# virtual methods
.method public activate()Z
    .locals 1

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/hp/vd/module/ActivatableBroadcastReceiverAbstract;->active:Z

    return v0
.end method

.method public deactivate()Z
    .locals 1

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/hp/vd/module/ActivatableBroadcastReceiverAbstract;->active:Z

    const/4 v0, 0x1

    return v0
.end method

.method public isActivated()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/hp/vd/module/ActivatableBroadcastReceiverAbstract;->active:Z

    return v0
.end method
