.class public Lcom/hp/vd/data/ApplicationData;
.super Lcom/hp/vd/data/DataAbstract;
.source "ApplicationData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "module_application"
.end annotation


# instance fields
.field public id:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public installedAt:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public packageName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        unique = true
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public versionCode:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public versionName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/hp/vd/data/DataAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public dump()Lcom/hp/vd/data/presentation/NodeAbstract;
    .locals 4

    .line 40
    new-instance v0, Lcom/hp/vd/data/presentation/KeyValueNode;

    invoke-virtual {p0}, Lcom/hp/vd/data/ApplicationData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "name"

    iget-object v3, p0, Lcom/hp/vd/data/ApplicationData;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/ApplicationData;->nonEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 43
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "package"

    iget-object v3, p0, Lcom/hp/vd/data/ApplicationData;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/ApplicationData;->nonEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 44
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "version"

    iget-object v3, p0, Lcom/hp/vd/data/ApplicationData;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/ApplicationData;->nonEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 45
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "version_code"

    iget-object v3, p0, Lcom/hp/vd/data/ApplicationData;->versionCode:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/ApplicationData;->nonEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 46
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "url"

    iget-object v3, p0, Lcom/hp/vd/data/ApplicationData;->url:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/ApplicationData;->nonEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    .line 47
    new-instance v1, Lcom/hp/vd/data/presentation/KeyValueNode;

    const-string v2, "installed_at"

    iget-object v3, p0, Lcom/hp/vd/data/ApplicationData;->installedAt:Ljava/util/Date;

    invoke-virtual {p0, v3}, Lcom/hp/vd/data/ApplicationData;->dateToUtc(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/hp/vd/data/presentation/KeyValueNode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/hp/vd/data/presentation/NodeAbstract;->addChild(Lcom/hp/vd/data/presentation/NodeAbstract;)Z

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "application"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method
