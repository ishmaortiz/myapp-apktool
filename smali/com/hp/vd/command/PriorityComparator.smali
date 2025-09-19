.class public Lcom/hp/vd/command/PriorityComparator;
.super Ljava/lang/Object;
.source "PriorityComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/hp/vd/command/Command;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hp/vd/command/Command;Lcom/hp/vd/command/Command;)I
    .locals 0

    .line 10
    iget-object p1, p1, Lcom/hp/vd/command/Command;->dispatchPriority:Ljava/lang/Integer;

    iget-object p2, p2, Lcom/hp/vd/command/Command;->dispatchPriority:Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/command/PriorityComparator;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method protected compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 5
    check-cast p1, Lcom/hp/vd/command/Command;

    check-cast p2, Lcom/hp/vd/command/Command;

    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/command/PriorityComparator;->compare(Lcom/hp/vd/command/Command;Lcom/hp/vd/command/Command;)I

    move-result p1

    return p1
.end method
