.class public Lcom/hp/vd/data/ModuleData;
.super Ljava/lang/Object;
.source "ModuleData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "module"
.end annotation


# instance fields
.field public custom:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field public installedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public internal:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public packageName:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public packagePath:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        unique = true
    .end annotation
.end field

.field public priorityLoad:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "priority_load"
    .end annotation
.end field

.field public prioritySynchronization:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "priority_synchronization"
    .end annotation
.end field

.field public status:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public updatedOn:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public version:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field public versionCodename:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-static {v0}, Lcom/hp/vd/data/helper/CustomField;->parse(Ljava/lang/String;)Lcom/hp/vd/data/helper/CustomField;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    invoke-virtual {v0, p1}, Lcom/hp/vd/data/helper/CustomField;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public customGetBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    .line 121
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public customGetInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 109
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public customGetLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 97
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/hp/vd/data/ModuleData;->customGet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public customSet(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 80
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/hp/vd/data/ModuleData;->customSet(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public customSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    invoke-static {v0}, Lcom/hp/vd/data/helper/CustomField;->parse(Ljava/lang/String;)Lcom/hp/vd/data/helper/CustomField;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p1, p2}, Lcom/hp/vd/data/helper/CustomField;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Lcom/hp/vd/data/helper/CustomField;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hp/vd/data/ModuleData;->custom:Ljava/lang/String;

    return-void
.end method
