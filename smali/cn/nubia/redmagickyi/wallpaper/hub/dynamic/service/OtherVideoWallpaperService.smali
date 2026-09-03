.class public Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService;
.super Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;
.source "OtherVideoWallpaperService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "OtherVideoWallpaperService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentClass()Ljava/lang/Class;
    .locals 0

    .line 26
    const-class p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    .line 14
    const-string v0, "OtherVideoWallpaperService"

    const-string v1, "OtherVideoWallpaperService onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-super {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 20
    invoke-super {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->onDestroy()V

    .line 21
    const-string p0, "OtherVideoWallpaperService"

    const-string v0, "OtherVideoWallpaperService onDestroy "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
