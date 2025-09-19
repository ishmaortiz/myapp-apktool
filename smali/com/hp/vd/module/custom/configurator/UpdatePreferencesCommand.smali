.class public Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;
.super Lcom/hp/vd/module/custom/configurator/CommandAbstract;
.source "UpdatePreferencesCommand.java"


# static fields
.field public static final COMMAND_NAME:Ljava/lang/String; = "update_preferences"


# instance fields
.field protected commandIdentifier:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/hp/vd/context/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hp/vd/context/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/hp/vd/module/custom/configurator/CommandAbstract;-><init>(Lcom/hp/vd/context/Context;)V

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->name:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->parameters:Ljava/util/Map;

    .line 20
    iput-object p1, p0, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->commandIdentifier:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->parameters:Ljava/util/Map;

    .line 27
    iput-object p3, p0, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->commandIdentifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->commandIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "update_preferences"

    return-object v0
.end method

.method public run()V
    .locals 9

    .line 46
    iget-object v0, p0, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v0}, Lcom/hp/vd/context/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "system"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->parameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v3, 0x3

    if-nez v1, :cond_0

    const-string v0, "No parameters were found."

    .line 54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->parameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 61
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 70
    :cond_1
    iget-object v5, p0, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->context:Lcom/hp/vd/context/Context;

    invoke-virtual {v5}, Lcom/hp/vd/context/Context;->getLog()Lcom/hp/vd/agent/log/IWriter;

    move-result-object v5

    .line 71
    invoke-virtual {p0}, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    .line 70
    invoke-interface {v5, v6, v7, v8}, Lcom/hp/vd/agent/log/IWriter;->write(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 78
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 79
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 77
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 83
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be parsed as Integer."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void

    :cond_2
    :goto_1
    const-string v0, "Key or Value is NULL"

    .line 65
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void

    .line 91
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Could NOT commit the changes."

    .line 92
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void

    :cond_4
    const-string v0, "All changes were successfully commited."

    const/4 v1, 0x1

    .line 97
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/hp/vd/module/custom/configurator/UpdatePreferencesCommand;->log(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-void
.end method
