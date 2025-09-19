.class public abstract Lcom/hp/vd/agent/log/WriterAbstract;
.super Ljava/lang/Object;
.source "WriterAbstract.java"

# interfaces
.implements Lcom/hp/vd/agent/log/IWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/hp/vd/agent/log/WriterAbstract;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 1

    const/4 v0, 0x4

    .line 19
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/hp/vd/agent/log/WriterAbstract;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)Z

    move-result p1

    return p1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;I)Z
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p4}, Lcom/hp/vd/agent/log/WriterAbstract;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
