.class public Lcom/hp/vd/module/custom/skype/CallColumns;
.super Ljava/lang/Object;
.source "CallColumns.java"


# instance fields
.field public final CREATION_TIMESTAMP:Ljava/lang/String;

.field public final DURATION:Ljava/lang/String;

.field public final FULLNAME:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final IDENTITY:Ljava/lang/String;

.field public final STATUS:Ljava/lang/String;

.field public final TYPE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 5
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/CallColumns;->ID:Ljava/lang/String;

    const-string v0, "call_duration"

    .line 6
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/CallColumns;->DURATION:Ljava/lang/String;

    const-string v0, "type"

    .line 7
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/CallColumns;->TYPE:Ljava/lang/String;

    const-string v0, "status"

    .line 14
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/CallColumns;->STATUS:Ljava/lang/String;

    const-string v0, "identity"

    .line 19
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/CallColumns;->IDENTITY:Ljava/lang/String;

    const-string v0, "fullname"

    .line 20
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/CallColumns;->FULLNAME:Ljava/lang/String;

    const-string v0, "creation_timestamp"

    .line 22
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/CallColumns;->CREATION_TIMESTAMP:Ljava/lang/String;

    return-void
.end method
