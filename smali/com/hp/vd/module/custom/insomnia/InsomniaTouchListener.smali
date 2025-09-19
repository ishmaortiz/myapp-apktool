.class Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;
.super Ljava/lang/Object;
.source "InsomniaTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private initTouchX:I

.field private initTouchY:I

.field private initX:I

.field private initY:I

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mWindowManager:Landroid/view/WindowManager;

.field private params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->params:Landroid/view/WindowManager$LayoutParams;

    .line 21
    iput-object p2, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->mWindowManager:Landroid/view/WindowManager;

    .line 22
    iput-object p3, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->mFrameLayout:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 43
    :pswitch_0
    iget-object p2, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->params:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->initX:I

    iget v3, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->initTouchX:I

    sub-int/2addr p1, v3

    add-int/2addr v2, p1

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 44
    iget-object p1, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->params:Landroid/view/WindowManager$LayoutParams;

    iget p2, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->initY:I

    iget v2, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->initTouchY:I

    sub-int/2addr v0, v2

    add-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 47
    iget-object p1, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v1

    :pswitch_1
    return v1

    .line 33
    :pswitch_2
    iget-object p2, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->params:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->initX:I

    .line 34
    iget-object p2, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->params:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->initY:I

    .line 35
    iput p1, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->initTouchX:I

    .line 36
    iput v0, p0, Lcom/hp/vd/module/custom/insomnia/InsomniaTouchListener;->initTouchY:I

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
