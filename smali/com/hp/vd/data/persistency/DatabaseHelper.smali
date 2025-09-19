.class public Lcom/hp/vd/data/persistency/DatabaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "system.db"

.field private static final DATABASE_VERSION:I = 0x1


# instance fields
.field private moduleDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "system.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 30
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    iput-object v1, p0, Lcom/hp/vd/data/persistency/DatabaseHelper;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 86
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/hp/vd/data/persistency/DatabaseHelper;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    return-void
.end method

.method public getModuleDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "Lcom/hp/vd/data/ModuleData;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/hp/vd/data/persistency/DatabaseHelper;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 74
    const-class v0, Lcom/hp/vd/data/ModuleData;

    invoke-virtual {p0, v0}, Lcom/hp/vd/data/persistency/DatabaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/hp/vd/data/persistency/DatabaseHelper;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/hp/vd/data/persistency/DatabaseHelper;->moduleDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 1

    .line 41
    :try_start_0
    const-class p1, Lcom/hp/vd/data/persistency/DatabaseHelper;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-class p1, Lcom/hp/vd/data/ModuleData;

    invoke-static {p2, p1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 46
    const-class p2, Lcom/hp/vd/data/persistency/DatabaseHelper;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Can\'t create database"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    .line 59
    :try_start_0
    const-class p3, Lcom/hp/vd/data/persistency/DatabaseHelper;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "onUpgrade"

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-class p3, Lcom/hp/vd/data/ModuleData;

    const/4 p4, 0x1

    invoke-static {p2, p3, p4}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/data/persistency/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 66
    const-class p2, Lcom/hp/vd/data/persistency/DatabaseHelper;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can\'t drop databases"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
