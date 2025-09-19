.class public Lcom/hp/vd/module/custom/tinder/Junk12;
.super Ljava/lang/Object;
.source "Junk12.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected internalMethod01(Z)Z
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/custom/tinder/Junk12;->internalMethod03(Z)Z

    move-result p1

    return p1
.end method

.method protected internalMethod02(Z)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method protected internalMethod03(Z)Z
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/custom/tinder/Junk12;->internalMethod02(Z)Z

    move-result p1

    return p1
.end method

.method public method01(Z)Z
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/custom/tinder/Junk12;->internalMethod01(Z)Z

    move-result p1

    return p1
.end method

.method public method02(Z)Z
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/custom/tinder/Junk12;->internalMethod02(Z)Z

    move-result p1

    return p1
.end method
