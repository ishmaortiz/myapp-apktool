.class Lcom/hp/vd/module/monitor/line/From91710133/StartsWithFilenameFilter;
.super Ljava/lang/Object;
.source "StartsWithFilenameFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field protected startsWith:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/hp/vd/module/monitor/line/From91710133/StartsWithFilenameFilter;->startsWith:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 18
    iget-object p1, p0, Lcom/hp/vd/module/monitor/line/From91710133/StartsWithFilenameFilter;->startsWith:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
