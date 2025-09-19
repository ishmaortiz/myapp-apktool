.class Lcom/hp/vd/RegisterActivity$3$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hp/vd/RegisterActivity$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hp/vd/RegisterActivity$3;


# direct methods
.method constructor <init>(Lcom/hp/vd/RegisterActivity$3;)V
    .locals 0

    .line 604
    iput-object p1, p0, Lcom/hp/vd/RegisterActivity$3$1;->this$1:Lcom/hp/vd/RegisterActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 607
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity$3$1;->this$1:Lcom/hp/vd/RegisterActivity$3;

    iget-object p1, p1, Lcom/hp/vd/RegisterActivity$3;->this$0:Lcom/hp/vd/RegisterActivity;

    invoke-virtual {p1}, Lcom/hp/vd/RegisterActivity;->finish()V

    .line 614
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x1

    .line 615
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
