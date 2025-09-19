.class Lcom/hp/vd/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hp/vd/RegisterActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 359
    iput-object p1, p0, Lcom/hp/vd/RegisterActivity$2;->this$0:Lcom/hp/vd/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 362
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity$2;->this$0:Lcom/hp/vd/RegisterActivity;

    invoke-virtual {p1}, Lcom/hp/vd/RegisterActivity;->finish()V

    return-void
.end method
