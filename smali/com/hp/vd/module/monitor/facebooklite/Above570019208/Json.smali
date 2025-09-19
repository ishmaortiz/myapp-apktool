.class public Lcom/hp/vd/module/monitor/facebooklite/Above570019208/Json;
.super Ljava/lang/Object;
.source "Json.java"


# instance fields
.field public final NAME:Ljava/lang/String;

.field public final USER_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/Above570019208/Json;->NAME:Ljava/lang/String;

    const-string v0, "user_key"

    .line 9
    iput-object v0, p0, Lcom/hp/vd/module/monitor/facebooklite/Above570019208/Json;->USER_KEY:Ljava/lang/String;

    return-void
.end method
