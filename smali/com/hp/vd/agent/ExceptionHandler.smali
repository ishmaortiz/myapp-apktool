.class public Lcom/hp/vd/agent/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field protected applicationContext:Landroid/content/Context;

.field protected defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/hp/vd/agent/ExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 18
    iput-object v0, p0, Lcom/hp/vd/agent/ExceptionHandler;->applicationContext:Landroid/content/Context;

    .line 22
    iput-object p1, p0, Lcom/hp/vd/agent/ExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 23
    iput-object p2, p0, Lcom/hp/vd/agent/ExceptionHandler;->applicationContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected getDeviceIdentifier()Ljava/lang/String;
    .locals 5

    const-string v0, "__UNAVAILABLE__"

    .line 77
    :try_start_0
    new-instance v1, Lcom/hp/vd/context/Context;

    invoke-direct {v1}, Lcom/hp/vd/context/Context;-><init>()V

    .line 78
    iget-object v2, p0, Lcom/hp/vd/agent/ExceptionHandler;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/hp/vd/context/Context;->setApplicationContext(Landroid/content/Context;)V

    .line 80
    iget-object v2, p0, Lcom/hp/vd/agent/ExceptionHandler;->applicationContext:Landroid/content/Context;

    const-string v3, "system"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "email"

    const/4 v4, 0x0

    .line 85
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    new-instance v3, Lcom/hp/vd/agent/Utility;

    invoke-direct {v3, v1}, Lcom/hp/vd/agent/Utility;-><init>(Lcom/hp/vd/context/Context;)V

    .line 88
    invoke-virtual {v3, v2}, Lcom/hp/vd/agent/Utility;->getUniqueIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .line 28
    new-instance v0, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v0}, Lcom/hp/vd/agent/Configuration;-><init>()V

    .line 30
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 31
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 37
    new-instance v2, Lcom/hp/vd/data/ExceptionV2Data;

    invoke-direct {v2}, Lcom/hp/vd/data/ExceptionV2Data;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/hp/vd/agent/ExceptionHandler;->getDeviceIdentifier()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hp/vd/data/ExceptionV2Data;->identifier:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Lcom/hp/vd/agent/Configuration;->getVersionCodename()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hp/vd/data/ExceptionV2Data;->versionCodename:Ljava/lang/String;

    .line 43
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hp/vd/data/ExceptionV2Data;->stack:Ljava/lang/String;

    .line 45
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/hp/vd/data/ExceptionV2Data;->processId:Ljava/lang/Integer;

    .line 46
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/hp/vd/data/ExceptionV2Data;->threadId:Ljava/lang/Integer;

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hp/vd/data/ExceptionV2Data;->threadName:Ljava/lang/String;

    .line 49
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/hp/vd/data/ExceptionV2Data;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Message not available."

    .line 50
    iput-object v0, v2, Lcom/hp/vd/data/ExceptionV2Data;->message:Ljava/lang/String;

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hp/vd/agent/common/Sender;

    iget-object v3, v2, Lcom/hp/vd/data/ExceptionV2Data;->identifier:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/hp/vd/agent/common/Sender;-><init>(Ljava/lang/String;Lcom/hp/vd/data/DataAbstract;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-wide/16 v0, 0xfa0

    .line 61
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/hp/vd/agent/ExceptionHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
