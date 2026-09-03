.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;
.super Ljava/lang/Object;
.source "WallPaperChangeManager.java"


# static fields
.field private static final BUNDLE_KEY_VIDEO_FILE_NAME:Ljava/lang/String; = "videoFileName"

.field private static instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;


# instance fields
.field public changeInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/WallPaperChangeInterface;

.field public wallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;
    .locals 1

    .line 27
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    .line 30
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    return-object v0
.end method


# virtual methods
.method public getWallpaperInfos()[Landroid/app/WallpaperInfo;
    .locals 5

    .line 45
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->wallpaperManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->wallpaperManager:Landroid/app/WallpaperManager;

    .line 49
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x2

    .line 52
    new-array v1, v0, [Landroid/app/WallpaperInfo;

    iget-object v4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v4, v3}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object p0

    aput-object p0, v1, v3

    goto :goto_0

    .line 55
    :cond_1
    new-array v1, v3, [Landroid/app/WallpaperInfo;

    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->wallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p0

    aput-object p0, v1, v2

    .line 57
    :goto_0
    array-length p0, v1

    if-ge v2, p0, :cond_3

    .line 58
    aget-object p0, v1, v2

    if-eqz p0, :cond_2

    .line 59
    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    .line 60
    aput-object p0, v1, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public setWallPaperByNubiaRomSurpportRemagicOS(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/16 p0, 0x21

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "setWallpaperComponent"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt p0, v0, :cond_0

    .line 90
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    .line 91
    const-class p3, Landroid/app/WallpaperManager;

    const-string v0, "getIWallpaperManager"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 92
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 93
    new-array p3, v2, [Ljava/lang/Class;

    .line 94
    const-class v0, Landroid/content/ComponentName;

    aput-object v0, p3, v3

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.wallpaper.WallpaperService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/16 p0, 0x22

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_1

    .line 106
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/ComponentName;

    aput-object v2, v0, v3

    invoke-virtual {p3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    .line 108
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v1, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const-string v2, "setWallpaperComponentWithFlags"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public setWallPaperNotSurpportRemagicOS(Landroid/content/Context;Ljava/lang/Class;Ljava/io/File;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 71
    const-string v0, "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    const-string p2, "videoFileName"

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 74
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x21

    if-gt p2, p3, :cond_2

    :cond_1
    const/high16 p2, 0x10000000

    .line 75
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    if-eqz p4, :cond_3

    .line 77
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_3

    .line 78
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public setWallPaperOnChangeListener(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/WallPaperChangeInterface;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->changeInterface:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/WallPaperChangeInterface;

    return-void
.end method
