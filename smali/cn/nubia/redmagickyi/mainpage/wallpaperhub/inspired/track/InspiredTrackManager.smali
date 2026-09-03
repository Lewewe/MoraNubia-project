.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/track/InspiredTrackManager;
.super Ljava/lang/Object;
.source "InspiredTrackManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InspiredTrackManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkNeed2SendEvent(Landroid/content/Context;J)Z
    .locals 2

    .line 36
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getWallPaperHubInspiredTrackTimestamp(Landroid/content/Context;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x5265c00

    .line 37
    div-long/2addr p1, v0

    const-wide/16 v0, 0x1

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static sendEvent()V
    .locals 5

    .line 23
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 26
    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/track/InspiredTrackManager;->checkNeed2SendEvent(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-class v3, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/InspiredFeature;

    invoke-static {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/WallPaperUtils;->getFeature(Ljava/lang/Class;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/wallpaper/feature/Feature;->HasSetUnityWallPaper(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    const-string v3, "InspiredTrackManager"

    const-string v4, "Day changed, now sending Inspired-Wallpaper track event"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Utils;->setWallPaperHubInspiredTrackTimestamp(Landroid/content/Context;J)V

    .line 29
    invoke-static {}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->getInstance()Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;

    move-result-object v0

    const-string v1, "switch"

    const-string v2, "on"

    const-string v3, "mora_interaction_wallpaper"

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/redmagickyi/util/GoogleAnalyticsTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
