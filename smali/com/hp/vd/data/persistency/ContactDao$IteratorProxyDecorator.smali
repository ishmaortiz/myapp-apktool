.class public Lcom/hp/vd/data/persistency/ContactDao$IteratorProxyDecorator;
.super Ljava/lang/Object;
.source "ContactDao.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/vd/data/persistency/ContactDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IteratorProxyDecorator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hp/vd/data/persistency/ContactDao;

.field private wrapped:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/hp/vd/data/persistency/ContactDao;Ljava/lang/Object;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/hp/vd/data/persistency/ContactDao$IteratorProxyDecorator;->this$0:Lcom/hp/vd/data/persistency/ContactDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lcom/hp/vd/data/persistency/ContactDao$IteratorProxyDecorator;->wrapped:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "next"

    .line 215
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/hp/vd/data/persistency/ContactDao$IteratorProxyDecorator;->wrapped:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hp/vd/data/ContactData;

    .line 227
    iget-object p2, p0, Lcom/hp/vd/data/persistency/ContactDao$IteratorProxyDecorator;->this$0:Lcom/hp/vd/data/persistency/ContactDao;

    invoke-virtual {p2}, Lcom/hp/vd/data/persistency/ContactDao;->initializeDaos()V

    .line 228
    iget-object p2, p0, Lcom/hp/vd/data/persistency/ContactDao$IteratorProxyDecorator;->this$0:Lcom/hp/vd/data/persistency/ContactDao;

    invoke-virtual {p2, p1}, Lcom/hp/vd/data/persistency/ContactDao;->hydrateContactData(Lcom/hp/vd/data/ContactData;)V

    return-object p1

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/hp/vd/data/persistency/ContactDao$IteratorProxyDecorator;->wrapped:Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
