.class public Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMobileNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    .line 19
    sget-object p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->Mobile:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getConnectType()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 0

    .line 8
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->isConnected()Z

    move-result p0

    return p0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    .line 12
    sget-object p0, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;->Wifi:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getConnectType()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$ConnectType;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
