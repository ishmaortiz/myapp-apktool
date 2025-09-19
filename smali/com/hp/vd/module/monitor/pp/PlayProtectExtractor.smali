.class public Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;
.super Ljava/lang/Object;
.source "PlayProtectExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "PlayProtectExtractor"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/PlayProtectStatus;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected log:Lcom/hp/vd/agent/log/IWriter;


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/PlayProtectStatus;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->context:Lcom/hp/vd/context/Context;

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 29
    iput-object p1, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->context:Lcom/hp/vd/context/Context;

    .line 30
    iput-object p2, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 31
    iput-object p3, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method protected _run()V
    .locals 7

    .line 55
    iget-object v0, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/safetynet/SafetyNetClient;->isVerifyAppsEnabled()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "PlayProtectExtractor"

    const-string v3, "Sleeping 3000 millis"

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    const-wide/16 v1, 0x1388

    .line 60
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;->isVerifyAppsEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "system"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pp_last_known_state"

    .line 84
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "PlayProtectExtractor"

    const-string v4, "No previous lastKnownStatus detected. Persisting..."

    invoke-interface {v2, v3, v4}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->persistAndMark(ZLandroid/content/SharedPreferences;)V

    return-void

    :cond_1
    const-string v2, "pp_last_known_state"

    .line 91
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 93
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v2, v3, :cond_2

    .line 94
    iget-object v0, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "PlayProtectExtractor"

    const-string v2, "No change in the lastKnownStatus"

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 99
    :cond_2
    iget-object v3, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "PlayProtectExtractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Change in the lastKnownStatus detected. Old: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", new: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->persistAndMark(ZLandroid/content/SharedPreferences;)V

    return-void

    .line 67
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "PlayProtectExtractor"

    const-string v2, "task is not successful or is not complete yet."

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_0
    return-void
.end method

.method protected persistAndMark(ZLandroid/content/SharedPreferences;)V
    .locals 4

    .line 111
    new-instance v0, Lcom/hp/vd/data/PlayProtectStatus;

    invoke-direct {v0}, Lcom/hp/vd/data/PlayProtectStatus;-><init>()V

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/hp/vd/data/PlayProtectStatus;->status:Ljava/lang/Integer;

    const-string v1, "runtime"

    .line 114
    iput-object v1, v0, Lcom/hp/vd/data/PlayProtectStatus;->note:Ljava/lang/String;

    .line 115
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/hp/vd/data/PlayProtectStatus;->createdAt:Ljava/util/Date;

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    iget-object v1, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "PlayProtectExtractor"

    const-string v3, "Cannot write status row"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 128
    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "pp_last_known_state"

    .line 130
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public run()V
    .locals 4

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->_run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 41
    iget-object v1, p0, Lcom/hp/vd/module/monitor/pp/PlayProtectExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "PlayProtectExtractor"

    const-string v3, "Throwable caught in run()"

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
