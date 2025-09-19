.class public Lcom/hp/vd/module/custom/scheme/UpdateRunnable$Executor;
.super Ljava/lang/Object;
.source "UpdateRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/vd/module/custom/scheme/UpdateRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Executor"
.end annotation


# instance fields
.field protected module:Lcom/hp/vd/module/IModule;

.field final synthetic this$0:Lcom/hp/vd/module/custom/scheme/UpdateRunnable;


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/custom/scheme/UpdateRunnable;Lcom/hp/vd/module/IModule;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable$Executor;->this$0:Lcom/hp/vd/module/custom/scheme/UpdateRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p2, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable$Executor;->module:Lcom/hp/vd/module/IModule;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/hp/vd/module/custom/scheme/UpdateRunnable$Executor;->module:Lcom/hp/vd/module/IModule;

    invoke-interface {v0}, Lcom/hp/vd/module/IModule;->start()Z

    return-void
.end method
