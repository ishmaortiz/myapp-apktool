.class public Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;
.super Ljava/lang/Object;
.source "PersisterRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final TAG:Ljava/lang/String;

.field protected commandId:Ljava/lang/String;

.field protected commandToken:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected instance:Lcom/hp/vd/module/synchronizer/FileSynchronizer;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;


# direct methods
.method public constructor <init>(Lcom/hp/vd/module/synchronizer/FileSynchronizer;Lcom/hp/vd/data/ModuleData;Lcom/hp/vd/agent/log/IWriter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FSCmdRecv::Persister"

    .line 13
    iput-object v0, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->TAG:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->instance:Lcom/hp/vd/module/synchronizer/FileSynchronizer;

    .line 26
    iput-object p2, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 27
    iput-object p3, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 29
    iput-object p4, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->context:Landroid/content/Context;

    .line 30
    iput-object p5, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->commandId:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->commandToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 37
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->instance:Lcom/hp/vd/module/synchronizer/FileSynchronizer;

    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-virtual {v0, v1}, Lcom/hp/vd/module/synchronizer/FileSynchronizer;->persistModuleData(Lcom/hp/vd/data/ModuleData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "FSCmdRecv::Persister"

    const-string v2, "dispatch(): there was an error persisting the module data."

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 46
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->commandId:Ljava/lang/String;

    iget-object v3, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->commandToken:Ljava/lang/String;

    const-string v4, "-2"

    const-string v5, "error persisting module data."

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->commandId:Ljava/lang/String;

    iget-object v3, p0, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->commandToken:Ljava/lang/String;

    const-string v4, "1"

    const-string v5, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/hp/vd/module/synchronizer/file/PersisterRunnable;->sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected sendResponse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    new-instance v0, Lcom/hp/vd/data/FcmCommandResponse;

    invoke-direct {v0}, Lcom/hp/vd/data/FcmCommandResponse;-><init>()V

    .line 57
    iput-object p2, v0, Lcom/hp/vd/data/FcmCommandResponse;->id:Ljava/lang/String;

    .line 58
    iput-object p3, v0, Lcom/hp/vd/data/FcmCommandResponse;->token:Ljava/lang/String;

    .line 60
    iput-object p4, v0, Lcom/hp/vd/data/FcmCommandResponse;->resultCode:Ljava/lang/String;

    .line 61
    iput-object p5, v0, Lcom/hp/vd/data/FcmCommandResponse;->resultBody:Ljava/lang/String;

    .line 63
    new-instance p2, Lcom/hp/vd/fcm/Sender;

    invoke-direct {p2, p1, v0}, Lcom/hp/vd/fcm/Sender;-><init>(Landroid/content/Context;Lcom/hp/vd/data/FcmCommandResponse;)V

    invoke-virtual {p2}, Lcom/hp/vd/fcm/Sender;->run()V

    return-void
.end method
