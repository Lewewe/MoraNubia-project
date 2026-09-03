.class Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "BaseVideoWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;
    }
.end annotation


# instance fields
.field private asyncThreadExecutor:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

.field private cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

.field private isLandscape:Ljava/lang/Boolean;

.field private isWallpaperVisible:Z

.field private keyguardManager:Landroid/app/KeyguardManager;

.field private lockScreenWallpeperComponent:Landroid/content/ComponentName;

.field private mIsUserUnlocked:Z

.field private surfaceHeight:Ljava/lang/Integer;

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceWidth:Ljava/lang/Integer;

.field final synthetic this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

.field private userManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 46
    new-instance p1, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;-><init>(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->asyncThreadExecutor:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    const/4 p1, 0x0

    .line 47
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isWallpaperVisible:Z

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isWallpaperVisible:Z

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;)Lcn/nubia/redmagickyi/util/CPUBoostManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;Lcn/nubia/redmagickyi/util/CPUBoostManager;)Lcn/nubia/redmagickyi/util/CPUBoostManager;
    .locals 0

    .line 42
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->cpuBoostManager:Lcn/nubia/redmagickyi/util/CPUBoostManager;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;Landroid/graphics/Rect;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->setDisplayPadding(Landroid/graphics/Rect;)V

    return-void
.end method

.method private initSurfaceRect(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 231
    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 232
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceWidth:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceHeight:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 233
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 234
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-le v0, p1, :cond_0

    move v1, v0

    move v0, p1

    move p1, v1

    .line 241
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceWidth:Ljava/lang/Integer;

    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceHeight:Ljava/lang/Integer;

    :cond_1
    return-void
.end method

.method private isCurrentWallpaperInfo(Landroid/app/WallpaperInfo;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 179
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getCurrentClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isDeviceSecure()Z
    .locals 2

    .line 286
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->keyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->keyguardManager:Landroid/app/KeyguardManager;

    .line 289
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->keyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOnLockScreen()Z
    .locals 2

    .line 275
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->keyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->keyguardManager:Landroid/app/KeyguardManager;

    .line 278
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->keyguardManager:Landroid/app/KeyguardManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isUserUnlocked()Z
    .locals 2

    .line 265
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->userManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->userManager:Landroid/os/UserManager;

    .line 268
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->userManager:Landroid/os/UserManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setDisplayPadding(Landroid/graphics/Rect;)V
    .locals 6

    const-string v0, "setFixedSize: "

    if-nez p1, :cond_0

    return-void

    .line 135
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isPreview()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 137
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getWallpaperInfos()[Landroid/app/WallpaperInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 139
    aget-object p1, p1, v2

    .line 140
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isCurrentWallpaperInfo(Landroid/app/WallpaperInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 142
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isUserUnlocked()Z

    move-result p1

    const v1, 0x7fffffff

    if-eqz p1, :cond_1

    :goto_0
    move v2, v1

    goto :goto_1

    .line 145
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isDeviceSecure()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 151
    :cond_2
    :goto_1
    const-string p1, "BaseWallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getCurrentClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDeviceSecure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isDeviceSecure()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isUserUnlocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isUserUnlocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0, v2, v2}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->setFixedSize(II)V

    goto :goto_2

    .line 154
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "doDisplayPaddingChanged"

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 156
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 157
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private setFixedSize(II)V
    .locals 6

    .line 169
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setFixedSizeAllowed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 171
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public changeVideoSize()Landroid/graphics/Rect;
    .locals 9

    .line 190
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceHeight:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 193
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->asyncThreadExecutor:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->getVideoSize()[I

    move-result-object v0

    const/4 v2, 0x0

    .line 194
    aget v3, v0, v2

    const/4 v4, 0x1

    .line 195
    aget v0, v0, v4

    .line 196
    iget-object v5, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceWidth:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 197
    iget-object v6, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceHeight:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v3, :cond_8

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 201
    :cond_1
    iget-object v7, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isLandscape:Ljava/lang/Boolean;

    if-nez v7, :cond_3

    .line 202
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v7, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v1, v7, :cond_2

    move v2, v4

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isLandscape:Ljava/lang/Boolean;

    goto :goto_0

    .line 204
    :cond_3
    iget-object v7, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v8, v7, :cond_4

    move v2, v4

    .line 205
    :cond_4
    iget-object v4, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isLandscape:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v2, :cond_5

    return-object v1

    .line 208
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isLandscape:Ljava/lang/Boolean;

    .line 211
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isLandscape:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 213
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceHeight:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 214
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->surfaceWidth:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_6
    mul-int p0, v0, v5

    .line 218
    div-int/2addr p0, v6

    if-le p0, v3, :cond_7

    mul-int p0, v3, v6

    .line 221
    div-int/2addr p0, v5

    move v1, p0

    move p0, v3

    goto :goto_1

    :cond_7
    move v1, v0

    :goto_1
    sub-int/2addr v3, p0

    mul-int/2addr v3, v5

    mul-int/lit8 v2, p0, 0x2

    .line 223
    div-int/2addr v3, v2

    sub-int/2addr v0, v1

    mul-int/2addr v0, v6

    mul-int/lit8 v2, v1, 0x2

    .line 224
    div-int/2addr v0, v2

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "changeVideoSize, width = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", height = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", xoffset = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", yoffset = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BaseWallpaperService"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0

    :cond_8
    :goto_2
    return-object v1
.end method

.method public onComputeColors()Landroid/app/WallpaperColors;
    .locals 1

    const/high16 p0, -0x1000000

    .line 256
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    .line 257
    new-instance v0, Landroid/app/WallpaperColors;

    invoke-direct {v0, p0, p0, p0}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 56
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getWallpaperInfos()[Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 59
    aget-object v1, v0, v1

    const/4 v2, 0x1

    .line 60
    aget-object v0, v0, v2

    .line 61
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isCurrentWallpaperInfo(Landroid/app/WallpaperInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->findMatchedLiveWallpaperService(Landroid/app/WallpaperInfo;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    const-string v1, "BaseWallpaperService"

    const-string v2, "Both exists desktop and lockscreen live wallpaper"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getVideoFile(Ljava/lang/Class;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {v3, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->isVideoMute(Ljava/lang/Class;)Z

    move-result v0

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->setLiveWallPaperByNubiaRomSurpportRemagicOS(Landroid/content/Context;Ljava/io/File;ZI)Ljava/lang/Class;

    .line 73
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->initSurfaceRect(Landroid/view/SurfaceHolder;)V

    .line 74
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 78
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 79
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->asyncThreadExecutor:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->shutdownNow()V

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getCurrentClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onSurfaceChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->initSurfaceRect(Landroid/view/SurfaceHolder;)V

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 124
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->asyncThreadExecutor:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->onSurfaceChanged()V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getCurrentClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onSurfaceCreated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->initSurfaceRect(Landroid/view/SurfaceHolder;)V

    .line 115
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 116
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->asyncThreadExecutor:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->onSurfaceCreated()V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getCurrentClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "onSurfaceDestroyed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 250
    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->asyncThreadExecutor:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->onSurfaceDestroyed()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 3

    .line 84
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isWallpaperVisible:Z

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getCurrentClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  onVisibilityChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWallpaperService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->asyncThreadExecutor:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine$AsyncThreadExecutor;->onVisibilityChanged(Z)V

    .line 88
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getWallpaperInfos()[Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 92
    aget-object v0, v0, v2

    .line 93
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isCurrentWallpaperInfo(Landroid/app/WallpaperInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 96
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isUserUnlocked()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->mIsUserUnlocked:Z

    goto :goto_0

    .line 98
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->mIsUserUnlocked:Z

    if-nez p1, :cond_1

    .line 100
    invoke-direct {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->isUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 102
    const-string p1, "User is Unlocked"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p1, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getCurrentClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getVideoFile(Ljava/lang/Class;)Ljava/io/File;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService$VideoEngine;->this$0:Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->getCurrentClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;->isVideoMute(Ljava/lang/Class;)Z

    move-result p0

    const/4 v1, 0x2

    invoke-static {p1, v0, p0, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->setLiveWallPaperByNubiaRomSurpportRemagicOS(Landroid/content/Context;Ljava/io/File;ZI)Ljava/lang/Class;

    :cond_1
    :goto_0
    return-void
.end method
