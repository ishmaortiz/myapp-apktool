.class Lcom/hp/vd/connection/transport/Http$1;
.super Lorg/apache/http/entity/mime/MultipartEntity;
.source "Http.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hp/vd/connection/transport/Http;->request()Lorg/apache/http/HttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hp/vd/connection/transport/Http;


# direct methods
.method constructor <init>(Lcom/hp/vd/connection/transport/Http;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/hp/vd/connection/transport/Http$1;->this$0:Lcom/hp/vd/connection/transport/Http;

    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public isChunked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
