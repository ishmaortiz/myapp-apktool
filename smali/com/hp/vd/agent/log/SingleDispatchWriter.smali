.class public Lcom/hp/vd/agent/log/SingleDispatchWriter;
.super Lcom/hp/vd/agent/log/WriterAbstract;
.source "SingleDispatchWriter.java"

# interfaces
.implements Lcom/hp/vd/agent/log/IDispatcher;


# instance fields
.field protected log:Lcom/hp/vd/agent/log/IWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/hp/vd/agent/log/WriterAbstract;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/hp/vd/agent/log/SingleDispatchWriter;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method public addLog(Lcom/hp/vd/agent/log/IWriter;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/hp/vd/agent/log/SingleDispatchWriter;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method

.method public size()Ljava/lang/Integer;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/hp/vd/agent/log/SingleDispatchWriter;->log:Lcom/hp/vd/agent/log/IWriter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/hp/vd/agent/log/SingleDispatchWriter;->log:Lcom/hp/vd/agent/log/IWriter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/agent/log/SingleDispatchWriter;->log:Lcom/hp/vd/agent/log/IWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
