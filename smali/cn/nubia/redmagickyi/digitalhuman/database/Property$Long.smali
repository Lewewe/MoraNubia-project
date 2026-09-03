.class public Lcn/nubia/redmagickyi/digitalhuman/database/Property$Long;
.super Ljava/lang/Object;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/database/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Long"
.end annotation


# instance fields
.field private defValue:J

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Long;->key:Ljava/lang/String;

    .line 39
    iput-wide p2, p0, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Long;->defValue:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/String;)Z
    .locals 0

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Long;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefValue()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Long;->defValue:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Long;->key:Ljava/lang/String;

    return-object p0
.end method
