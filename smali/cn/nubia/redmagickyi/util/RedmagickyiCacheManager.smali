.class public Lcn/nubia/redmagickyi/util/RedmagickyiCacheManager;
.super Ljava/lang/Object;
.source "RedmagickyiCacheManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 12
    invoke-static {}, Lcn/nubia/redmagickyi/util/RedmagickyiCacheManager;->clearDownloadCache()V

    return-void
.end method

.method public static clearCache()V
    .locals 2

    .line 22
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v1, Lcn/nubia/redmagickyi/util/RedmagickyiCacheManager$1;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/util/RedmagickyiCacheManager$1;-><init>()V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static clearDownloadCache()V
    .locals 0

    .line 41
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->clearDownloadCache()V

    .line 42
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/statics/controller/DownloadController;->clearDownloadCache()V

    .line 43
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->clearDownloadCache()V

    return-void
.end method

.method public static clearVideoCache()V
    .locals 1

    .line 56
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/PlayTypeDanceStudio;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/PlayTypeDanceStudio;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->clearAllCache(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Z

    .line 57
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;->getInstance()Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->clearAllCache(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Z

    .line 58
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->clearAllCache(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)Z

    return-void
.end method

.method public static getCacheSize()J
    .locals 2

    .line 18
    invoke-static {}, Lcn/nubia/redmagickyi/util/RedmagickyiCacheManager;->getDownloadCacheSize()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getDownloadCacheSize()J
    .locals 4

    .line 35
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/ui/controller/DownloadController;->getDownloadCacheSize()J

    move-result-wide v0

    .line 37
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/controller/DownloadController;->getDownloadCacheSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static getVideoCacheSize()J
    .locals 4

    .line 50
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/PlayTypeDanceStudio;->getInstance()Lcn/nubia/redmagickyi/mainpage/dancestudio/factory/PlayTypeDanceStudio;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->getAllCacheSize(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)J

    move-result-wide v0

    .line 51
    invoke-static {}, Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;->getInstance()Lcn/nubia/redmagickyi/playmate/factory/PlayTypePlaymate;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->getAllCacheSize(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/factory/PlayTypeDynamic;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/view/videoplayer/cache/PreloadVideoCacheManager;->getAllCacheSize(Lcn/nubia/redmagickyi/view/videoplayer/type/PlayerType;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method
