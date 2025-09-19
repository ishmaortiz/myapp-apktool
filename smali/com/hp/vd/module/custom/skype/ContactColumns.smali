.class public Lcom/hp/vd/module/custom/skype/ContactColumns;
.super Ljava/lang/Object;
.source "ContactColumns.java"


# instance fields
.field public final CITY:Ljava/lang/String;

.field public final COUNTRY:Ljava/lang/String;

.field public final DISPLAY_NAME:Ljava/lang/String;

.field public final EMAILS:Ljava/lang/String;

.field public final ID:Ljava/lang/String;

.field public final IS_PERMANENT:Ljava/lang/String;

.field public final PHONE_MOBILE:Ljava/lang/String;

.field public final SKYPENAME:Ljava/lang/String;

.field public final TYPE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    .line 5
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/ContactColumns;->ID:Ljava/lang/String;

    const-string v0, "skypename"

    .line 6
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/ContactColumns;->SKYPENAME:Ljava/lang/String;

    const-string v0, "country"

    .line 7
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/ContactColumns;->COUNTRY:Ljava/lang/String;

    const-string v0, "city"

    .line 8
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/ContactColumns;->CITY:Ljava/lang/String;

    const-string v0, "phone_mobile"

    .line 9
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/ContactColumns;->PHONE_MOBILE:Ljava/lang/String;

    const-string v0, "emails"

    .line 10
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/ContactColumns;->EMAILS:Ljava/lang/String;

    const-string v0, "displayname"

    .line 11
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/ContactColumns;->DISPLAY_NAME:Ljava/lang/String;

    const-string v0, "type"

    .line 14
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/ContactColumns;->TYPE:Ljava/lang/String;

    const-string v0, "is_permanent"

    .line 15
    iput-object v0, p0, Lcom/hp/vd/module/custom/skype/ContactColumns;->IS_PERMANENT:Ljava/lang/String;

    return-void
.end method
