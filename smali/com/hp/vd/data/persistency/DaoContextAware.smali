.class public Lcom/hp/vd/data/persistency/DaoContextAware;
.super Lcom/j256/ormlite/dao/BaseDaoImpl;
.source "DaoContextAware.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/dao/BaseDaoImpl<",
        "TT;TID;>;"
    }
.end annotation


# instance fields
.field protected context:Lcom/hp/vd/ServiceMain;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/dao/BaseDaoImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public setContext(Lcom/hp/vd/ServiceMain;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/hp/vd/data/persistency/DaoContextAware;->context:Lcom/hp/vd/ServiceMain;

    return-void
.end method
