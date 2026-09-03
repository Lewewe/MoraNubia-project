.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;
.super Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;
.source "BaseWallPaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$LauncherBitmapInterface;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WallPaperUnityActivity"


# instance fields
.field private black:Landroid/graphics/Bitmap;

.field private launcherBitmap:Landroid/graphics/Bitmap;

.field private launcherBitmapInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$LauncherBitmapInterface;

.field protected permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private white:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->white:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->white:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->black:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->launcherBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->launcherBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$LauncherBitmapInterface;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->launcherBitmapInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$LauncherBitmapInterface;

    return-object p0
.end method


# virtual methods
.method public ReleaseBitmap()V
    .locals 2

    .line 134
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->white:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->white:Landroid/graphics/Bitmap;

    .line 138
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->black:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 140
    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->black:Landroid/graphics/Bitmap;

    .line 142
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->launcherBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 144
    iput-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->launcherBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    const-string p0, "WallPaperUnityActivity"

    const-string v0, "recycle bitmap error !!!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public initWallPaperLanucher()V
    .locals 2

    .line 67
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isRedmagicOSRom()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$2;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)V

    .line 101
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$3;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)V

    .line 128
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method

.method public final isNight(Landroid/content/Context;)Z
    .locals 0

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 160
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance p1, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$1;-><init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;)V

    const v1, 0xea60

    invoke-direct {p1, v1, v0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    .line 54
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isSystemApplication()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->initWallPaperLanucher()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 154
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onDestroy()V

    .line 155
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->ReleaseBitmap()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/BaseOrientationActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public setLauncherBitmapListener(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$LauncherBitmapInterface;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity;->launcherBitmapInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/activity/BaseWallPaperActivity$LauncherBitmapInterface;

    return-void
.end method
