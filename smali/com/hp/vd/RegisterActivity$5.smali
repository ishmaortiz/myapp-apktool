.class Lcom/hp/vd/RegisterActivity$5;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hp/vd/RegisterActivity;->enableKeyLogger(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hp/vd/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/hp/vd/RegisterActivity;)V
    .locals 0

    .line 685
    iput-object p1, p0, Lcom/hp/vd/RegisterActivity$5;->this$0:Lcom/hp/vd/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 687
    iget-object p2, p0, Lcom/hp/vd/RegisterActivity$5;->this$0:Lcom/hp/vd/RegisterActivity;

    iget-object p2, p2, Lcom/hp/vd/RegisterActivity;->checkboxEnableKeylogger:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/hp/vd/RegisterActivity$5;->this$0:Lcom/hp/vd/RegisterActivity;

    iget-object v0, v0, Lcom/hp/vd/RegisterActivity;->checkboxEnableKeylogger:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 688
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
