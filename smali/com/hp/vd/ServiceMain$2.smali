.class Lcom/hp/vd/ServiceMain$2;
.super Ljava/lang/Object;
.source "ServiceMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hp/vd/ServiceMain;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hp/vd/ServiceMain;


# direct methods
.method constructor <init>(Lcom/hp/vd/ServiceMain;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/hp/vd/ServiceMain$2;->this$0:Lcom/hp/vd/ServiceMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/hp/vd/ServiceMain$2;->this$0:Lcom/hp/vd/ServiceMain;

    iget-object v0, v0, Lcom/hp/vd/ServiceMain;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getModuleManager()Lcom/hp/vd/agent/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/agent/ModuleManager;->startModules()V

    return-void
.end method
