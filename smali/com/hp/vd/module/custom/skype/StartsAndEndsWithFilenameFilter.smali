.class Lcom/hp/vd/module/custom/skype/StartsAndEndsWithFilenameFilter;
.super Ljava/lang/Object;
.source "StartsAndEndsWithFilenameFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field protected endsWith:Ljava/lang/String;

.field protected startsWith:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/hp/vd/module/custom/skype/StartsAndEndsWithFilenameFilter;->startsWith:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/hp/vd/module/custom/skype/StartsAndEndsWithFilenameFilter;->endsWith:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/hp/vd/module/custom/skype/StartsAndEndsWithFilenameFilter;->startsWith:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
