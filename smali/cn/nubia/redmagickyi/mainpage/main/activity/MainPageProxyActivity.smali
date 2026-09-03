.class public Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageProxyActivity;
.super Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;
.source "MainPageProxyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected autoChangeOrientation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected initOrientation()V
    .locals 1

    const/4 v0, 0x7

    .line 12
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/mainpage/main/activity/MainPageProxyActivity;->setRequestedOrientationFromAndroid(I)V

    return-void
.end method

.method protected isEnableActivityExitAnimation()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
