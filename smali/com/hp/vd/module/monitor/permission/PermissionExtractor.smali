.class public Lcom/hp/vd/module/monitor/permission/PermissionExtractor;
.super Ljava/lang/Object;
.source "PermissionExtractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final TAG:Ljava/lang/String; = "PermissionExtractor"


# instance fields
.field protected context:Lcom/hp/vd/context/Context;

.field protected log:Lcom/hp/vd/agent/log/IWriter;

.field protected moduleData:Lcom/hp/vd/data/ModuleData;

.field protected permissionDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/PermissionStatusData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Lcom/hp/vd/data/ModuleData;Lcom/j256/ormlite/dao/Dao;Lcom/hp/vd/agent/log/IWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Lcom/hp/vd/data/ModuleData;",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/PermissionStatusData;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/hp/vd/agent/log/IWriter;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->context:Lcom/hp/vd/context/Context;

    .line 25
    iput-object v0, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 26
    iput-object v0, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->permissionDao:Lcom/j256/ormlite/dao/Dao;

    .line 27
    iput-object v0, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    .line 31
    iput-object p1, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->context:Lcom/hp/vd/context/Context;

    .line 33
    iput-object p2, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    .line 34
    iput-object p3, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->permissionDao:Lcom/j256/ormlite/dao/Dao;

    .line 36
    iput-object p4, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    return-void
.end method


# virtual methods
.method crc32Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/zip/CRC32;->update([B)V

    .line 97
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getGrantedPermissions(Lcom/hp/vd/context/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    :try_start_0
    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "###"

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission extractor: package.name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p1}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v2, 0x1000

    .line 110
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const/4 v1, 0x0

    .line 115
    :goto_0
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 116
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v2, v1

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const-string p1, "###"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission extractor: granted.count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "###"

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission extractor: granted.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public run()V
    .locals 7

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->getGrantedPermissions(Lcom/hp/vd/context/Context;)Ljava/util/List;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "PermissionExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run(): granted.length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->crc32Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "latest_state"

    invoke-virtual {v2, v3}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 52
    iget-object v0, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v3, "PermissionExtractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run(): no change in permissions status, old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    .line 57
    :cond_0
    iget-object v3, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v4, "PermissionExtractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detected permissions change, old: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    new-instance v2, Lcom/hp/vd/data/PermissionStatusData;

    invoke-direct {v2}, Lcom/hp/vd/data/PermissionStatusData;-><init>()V

    .line 61
    iput-object v0, v2, Lcom/hp/vd/data/PermissionStatusData;->list:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v2, Lcom/hp/vd/data/PermissionStatusData;->createdAt:Ljava/util/Date;

    .line 64
    iget-object v0, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->permissionDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    :try_start_1
    iget-object v0, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getHelper()Lcom/hp/vd/data/persistency/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getModuleDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 73
    iget-object v2, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    const-string v3, "latest_state"

    invoke-virtual {v2, v3, v1}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->moduleData:Lcom/hp/vd/data/ModuleData;

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 77
    iget-object v0, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v1, "PermissionExtractor"

    const-string v2, "moduleData updated with new hash"

    invoke-interface {v0, v1, v2}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    :try_start_2
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 82
    iget-object v1, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "PermissionExtractor"

    const-string v3, "Exception caught during persisted moduleData."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 86
    iget-object v1, p0, Lcom/hp/vd/module/monitor/permission/PermissionExtractor;->log:Lcom/hp/vd/agent/log/IWriter;

    const-string v2, "PermissionExtractor"

    const-string v3, "Exception caught when saving data."

    invoke-interface {v1, v2, v3, v0}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void
.end method
