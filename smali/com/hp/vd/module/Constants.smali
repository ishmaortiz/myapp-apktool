.class public Lcom/hp/vd/module/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ATTRIBUTE_CUSTOM_DATA:Ljava/lang/String; = "data"

.field public static final ATTRIBUTE_CUSTOM_DATA_FILE:Ljava/lang/String; = "file"

.field public static final ATTRIBUTE_CUSTOM_DATA_TEXT:Ljava/lang/String; = "text"

.field public static final BUILT_IN_PATH:Ljava/lang/String; = "built-in://"

.field public static final DATA_LIMIT_PREFIX:Ljava/lang/String; = "read_limit_"

.field public static final DATA_LIMIT_UNLIMITED:Ljava/lang/Integer;

.field public static final EXTERNAL_MODULE:Ljava/lang/Integer;

.field public static final INTERNAL_MODULE:Ljava/lang/Integer;

.field public static final STATUS_ACTIVE:Ljava/lang/Integer;

.field public static final STATUS_FAILED_IN_UPDATE:Ljava/lang/Integer;

.field public static final STATUS_INACTIVE:Ljava/lang/Integer;

.field public static final STATUS_IN_UPDATE:Ljava/lang/Integer;

.field public static final TYPE_CUSTOM:Ljava/lang/String; = "custom"

.field public static final TYPE_DAEMON:Ljava/lang/String; = "daemon"

.field public static final TYPE_HEARTBEAT:Ljava/lang/String; = "heartbeat"

.field public static final TYPE_MONITOR:Ljava/lang/String; = "monitor"

.field public static final TYPE_SYNCHRONIZER:Ljava/lang/String; = "synchronizer"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/hp/vd/module/Constants;->INTERNAL_MODULE:Ljava/lang/Integer;

    const/4 v1, 0x2

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/hp/vd/module/Constants;->EXTERNAL_MODULE:Ljava/lang/Integer;

    const/4 v2, -0x1

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/hp/vd/module/Constants;->DATA_LIMIT_UNLIMITED:Ljava/lang/Integer;

    const/4 v2, 0x0

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lcom/hp/vd/module/Constants;->STATUS_INACTIVE:Ljava/lang/Integer;

    .line 81
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/hp/vd/module/Constants;->STATUS_IN_UPDATE:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/hp/vd/module/Constants;->STATUS_FAILED_IN_UPDATE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
