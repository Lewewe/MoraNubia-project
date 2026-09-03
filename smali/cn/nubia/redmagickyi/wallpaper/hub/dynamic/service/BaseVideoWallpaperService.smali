.class public abstract Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "BaseVideoWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseWallpaperService"


# instance fields
.field public mVideoEngine:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentClass()Ljava/lang/Class;
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 0

    .line 465
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public getVideoFile(Ljava/lang/Class;)Ljava/io/File;
    .locals 1

    .line 482
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->getWallpaperDMFile(Ljava/lang/Class;)Ljava/io/File;

    move-result-object p0

    .line 483
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 486
    :cond_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->getWallpaperFile(Ljava/lang/Class;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public isVideoMute(Ljava/lang/Class;)Z
    .locals 0

    .line 491
    invoke-static {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->isWallpaperMute(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 456
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 457
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;

    .line 458
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->mVideoEngine:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    if-eqz p0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->changeVideoSize()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->access$500(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 450
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 451
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/app/Service;)Landroid/util/DisplayMetrics;

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .line 477
    new-instance v0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;-><init>(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->mVideoEngine:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 470
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->mVideoEngine:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;

    .line 472
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method
