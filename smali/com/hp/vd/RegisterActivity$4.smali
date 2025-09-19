.class Lcom/hp/vd/RegisterActivity$4;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hp/vd/RegisterActivity;->completeInstallationOnClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hp/vd/RegisterActivity;

.field final synthetic val$installationHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/hp/vd/RegisterActivity;Landroid/os/Handler;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/hp/vd/RegisterActivity$4;->this$0:Lcom/hp/vd/RegisterActivity;

    iput-object p2, p0, Lcom/hp/vd/RegisterActivity$4;->val$installationHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 627
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity$4;->val$installationHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity$4;->this$0:Lcom/hp/vd/RegisterActivity;

    iget-object v2, p0, Lcom/hp/vd/RegisterActivity$4;->this$0:Lcom/hp/vd/RegisterActivity;

    iget-object v2, v2, Lcom/hp/vd/RegisterActivity;->editTextEmailFirst:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hp/vd/RegisterActivity;->install(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 630
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 632
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity$4;->val$installationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
