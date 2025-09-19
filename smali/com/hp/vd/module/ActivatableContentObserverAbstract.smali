.class public abstract Lcom/hp/vd/module/ActivatableContentObserverAbstract;
.super Landroid/database/ContentObserver;
.source "ActivatableContentObserverAbstract.java"

# interfaces
.implements Lcom/hp/vd/module/ActivatableInterface;


# instance fields
.field protected active:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/hp/vd/module/ActivatableContentObserverAbstract;->active:Z

    return-void
.end method


# virtual methods
.method public activate()Z
    .locals 1

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/hp/vd/module/ActivatableContentObserverAbstract;->active:Z

    return v0
.end method

.method public deactivate()Z
    .locals 1

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/hp/vd/module/ActivatableContentObserverAbstract;->active:Z

    const/4 v0, 0x1

    return v0
.end method

.method public isActivated()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/hp/vd/module/ActivatableContentObserverAbstract;->active:Z

    return v0
.end method
