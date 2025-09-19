.class Lcom/hp/vd/ServiceMain$1;
.super Ljava/lang/Object;
.source "ServiceMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hp/vd/ServiceMain;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hp/vd/ServiceMain;


# direct methods
.method constructor <init>(Lcom/hp/vd/ServiceMain;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/hp/vd/ServiceMain$1;->this$0:Lcom/hp/vd/ServiceMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/hp/vd/ServiceMain$1;->this$0:Lcom/hp/vd/ServiceMain;

    invoke-virtual {v0}, Lcom/hp/vd/ServiceMain;->start()Z

    return-void
.end method
