.class public interface abstract Lcom/hp/vd/module/IModule;
.super Ljava/lang/Object;
.source "IModule.java"

# interfaces
.implements Lcom/hp/vd/context/ContextAware;
.implements Lcom/hp/vd/module/ActivatableInterface;


# virtual methods
.method public abstract deinitialize()Z
.end method

.method public abstract dispatch(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract getDao()Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao<",
            "+",
            "Lcom/hp/vd/data/IData;",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract getDataClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getModuleData()Lcom/hp/vd/data/ModuleData;
.end method

.method public abstract getModuleName()Ljava/lang/String;
.end method

.method public abstract getPersistedModuleData()Lcom/hp/vd/data/ModuleData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method public abstract initialize()Z
.end method

.method public abstract install(Ljava/lang/String;)Z
.end method

.method public abstract isDispatchable()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract setDataReadLimit(Ljava/lang/Integer;)Z
.end method

.method public abstract start()Z
.end method

.method public abstract startOnHeartbeat()Z
.end method

.method public abstract stop()Z
.end method

.method public abstract uninstall()Z
.end method

.method public abstract update(Lcom/hp/vd/module/IModule;)Z
.end method
