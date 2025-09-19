.class public Lcom/hp/vd/module/custom/insomnia/HeadLayer;
.super Landroid/view/View;
.source "HeadLayer.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/hp/vd/module/custom/insomnia/HeadLayer;->mContext:Landroid/content/Context;

    .line 31
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/hp/vd/module/custom/insomnia/HeadLayer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hp/vd/module/custom/insomnia/HeadLayer;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 33
    invoke-direct {p0}, Lcom/hp/vd/module/custom/insomnia/HeadLayer;->addToWindowManager()V

    return-void
.end method

.method private addToWindowManager()V
    .locals 7

    .line 41
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x7d2

    const/16 v4, 0x8

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v0, 0x3

    .line 48
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 50
    iget-object v0, p0, Lcom/hp/vd/module/custom/insomnia/HeadLayer;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/hp/vd/module/custom/insomnia/HeadLayer;->mWindowManager:Landroid/view/WindowManager;

    .line 51
    iget-object v0, p0, Lcom/hp/vd/module/custom/insomnia/HeadLayer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hp/vd/module/custom/insomnia/HeadLayer;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    iget-object v0, p0, Lcom/hp/vd/module/custom/insomnia/HeadLayer;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    iget-object v1, p0, Lcom/hp/vd/module/custom/insomnia/HeadLayer;->mFrameLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f080006

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/hp/vd/module/custom/insomnia/HeadLayer;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/hp/vd/module/custom/insomnia/HeadLayer;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method
