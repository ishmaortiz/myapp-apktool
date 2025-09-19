.class Lcom/hp/vd/RegisterActivity$ResponseCombo;
.super Ljava/lang/Object;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/vd/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseCombo"
.end annotation


# instance fields
.field public code:Ljava/lang/Integer;

.field public message:Ljava/lang/String;

.field public result:Z

.field final synthetic this$0:Lcom/hp/vd/RegisterActivity;


# direct methods
.method private constructor <init>(Lcom/hp/vd/RegisterActivity;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/hp/vd/RegisterActivity$ResponseCombo;->this$0:Lcom/hp/vd/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hp/vd/RegisterActivity;Lcom/hp/vd/RegisterActivity$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/hp/vd/RegisterActivity$ResponseCombo;-><init>(Lcom/hp/vd/RegisterActivity;)V

    return-void
.end method
