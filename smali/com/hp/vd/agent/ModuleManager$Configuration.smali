.class public Lcom/hp/vd/agent/ModuleManager$Configuration;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hp/vd/agent/ModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Configuration"
.end annotation


# instance fields
.field public configurable:Z

.field public moduleClass:Ljava/lang/Class;

.field public status:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/hp/vd/agent/ModuleManager;


# direct methods
.method public constructor <init>(Lcom/hp/vd/agent/ModuleManager;Ljava/lang/Class;ZLjava/lang/Integer;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/hp/vd/agent/ModuleManager$Configuration;->this$0:Lcom/hp/vd/agent/ModuleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/hp/vd/agent/ModuleManager$Configuration;->moduleClass:Ljava/lang/Class;

    .line 118
    iput-boolean p3, p0, Lcom/hp/vd/agent/ModuleManager$Configuration;->configurable:Z

    .line 121
    iput-object p4, p0, Lcom/hp/vd/agent/ModuleManager$Configuration;->status:Ljava/lang/Integer;

    return-void
.end method
