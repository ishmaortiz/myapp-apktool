.class public Lcom/hp/vd/command/Command;
.super Ljava/lang/Object;
.source "Command.java"


# instance fields
.field public dispatchPriority:Ljava/lang/Integer;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/hp/vd/command/Command;->id:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/hp/vd/command/Command;->dispatchPriority:Ljava/lang/Integer;

    .line 28
    iput-object p3, p0, Lcom/hp/vd/command/Command;->packageName:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/hp/vd/command/Command;->name:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/hp/vd/command/Command;->parameters:Ljava/util/Map;

    return-void
.end method
