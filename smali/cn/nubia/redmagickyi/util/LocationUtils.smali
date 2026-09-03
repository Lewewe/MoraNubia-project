.class public Lcn/nubia/redmagickyi/util/LocationUtils;
.super Ljava/lang/Object;
.source "LocationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkClassValid()Z
    .locals 1

    .line 8
    :try_start_0
    const-string v0, "cn.nubia.redmagickyi.util.LocationUtils$Sub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static deInit()V
    .locals 1

    .line 43
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils;->checkClassValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->deInit()V

    :cond_0
    return-void
.end method

.method public static getLocation()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils;->checkClassValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLocationInfo()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils;->checkClassValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->getLocationInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils;->checkClassValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->init(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static requestUpdate(Z)V
    .locals 1

    .line 31
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocationUtils;->checkClassValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/LocationUtils$Sub;->requestUpdate(Z)V

    :cond_0
    return-void
.end method
