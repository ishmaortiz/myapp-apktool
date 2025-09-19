.class public Lcom/hp/vd/module/monitor/line/Junk22;
.super Ljava/lang/Object;
.source "Junk22.java"


# instance fields
.field protected instance:Lcom/hp/vd/module/monitor/line/Junk12;


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/monitor/line/Junk12;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/hp/vd/module/monitor/line/Junk22;->instance:Lcom/hp/vd/module/monitor/line/Junk12;

    return-void
.end method


# virtual methods
.method protected internalMethod01(Z)Z
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/line/Junk22;->internalMethod03(Z)Z

    move-result p1

    return p1
.end method

.method protected internalMethod02(Z)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/hp/vd/module/monitor/line/Junk22;->instance:Lcom/hp/vd/module/monitor/line/Junk12;

    invoke-virtual {v0, p1}, Lcom/hp/vd/module/monitor/line/Junk12;->method01(Z)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method protected internalMethod03(Z)Z
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/line/Junk22;->internalMethod02(Z)Z

    move-result p1

    return p1
.end method

.method public method01(Z)Z
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/line/Junk22;->internalMethod01(Z)Z

    move-result p1

    return p1
.end method

.method public method02(Z)Z
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/hp/vd/module/monitor/line/Junk22;->internalMethod02(Z)Z

    move-result p1

    return p1
.end method
