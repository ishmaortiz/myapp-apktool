.class Lcom/hp/vd/connection/transport/Http$2;
.super Lorg/apache/http/entity/mime/content/InputStreamBody;
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
.method constructor <init>(Lcom/hp/vd/connection/transport/Http;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/hp/vd/connection/transport/Http$2;->this$0:Lcom/hp/vd/connection/transport/Http;

    invoke-direct {p0, p2, p3}, Lorg/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
