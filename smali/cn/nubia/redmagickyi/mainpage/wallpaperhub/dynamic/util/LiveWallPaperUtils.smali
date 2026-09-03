.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;
.super Ljava/lang/Object;
.source "LiveWallPaperUtils.java"


# static fields
.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x5a

.field private static final SAVED_CONFIG_SPLITE:Ljava/lang/String; = "|"

.field private static final TAG:Ljava/lang/String; = "LiveWallPaperUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 260
    const-string v0, "png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object p0
.end method

.method public static findBestUnUsedLiveWallpaper(Landroid/content/Context;)Ljava/lang/Class;
    .locals 10

    .line 75
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getWallpaperInfos()[Landroid/app/WallpaperInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v5, v3

    move v6, v5

    move v4, v2

    .line 78
    :goto_0
    array-length v7, v0

    if-ge v3, v7, :cond_4

    if-nez v3, :cond_0

    .line 79
    const-string v7, "Desktop"

    goto :goto_1

    :cond_0
    const-string v7, "LockScreen"

    .line 80
    :goto_1
    aget-object v8, v0, v3

    if-eqz v8, :cond_3

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "wallpaper component is "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ", wallpaperType is "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "LiveWallPaperUtils"

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    new-instance v7, Landroid/content/ComponentName;

    const-class v9, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/VideoWallpaperService;

    invoke-direct {v7, p0, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    move v5, v2

    goto :goto_2

    .line 86
    :cond_1
    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService;

    invoke-direct {v7, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    move v6, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_6

    const/4 v0, 0x3

    .line 92
    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/VideoWallpaperService;

    aput-object v3, v0, v1

    const-class v1, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-class v3, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService2;

    aput-object v3, v0, v1

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/util/ProcessUtils;->getRunningProcesses(Landroid/content/Context;[Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    .line 93
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 94
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 96
    const-class v0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/VideoWallpaperService;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/16 v1, 0x7d

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-ne v0, v1, :cond_5

    goto :goto_3

    .line 98
    :cond_5
    const-class v0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-ne p0, v1, :cond_6

    move v6, v2

    :cond_6
    move v2, v5

    :goto_3
    if-eqz v2, :cond_8

    if-eqz v6, :cond_7

    .line 105
    const-class p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService2;

    goto :goto_4

    :cond_7
    const-class p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService;

    goto :goto_4

    .line 107
    :cond_8
    const-class p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/VideoWallpaperService;

    :goto_4
    return-object p0
.end method

.method public static findMatchedLiveWallpaperService(Landroid/app/WallpaperInfo;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperInfo;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/BaseVideoWallpaperService;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 186
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 189
    const-class v0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/VideoWallpaperService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-class p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/VideoWallpaperService;

    return-object p0

    .line 191
    :cond_0
    const-class v0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-class p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService;

    return-object p0

    .line 193
    :cond_1
    const-class v0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 194
    const-class p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService2;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCurrentWallPapers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 113
    const-string v0, "LiveWallPaperUtils"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getWallpaperInfos()[Landroid/app/WallpaperInfo;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 116
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    if-nez v4, :cond_0

    .line 117
    const-string v5, "Desktop"

    goto :goto_1

    :cond_0
    const-string v5, "LockScreen"

    .line 118
    :goto_1
    aget-object v6, v2, v4

    .line 119
    invoke-static {v6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->findMatchedLiveWallpaperService(Landroid/app/WallpaperInfo;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " wallpapaer has set!! by wallpaperInfo VideoWallpaperService"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_5

    const/4 v2, 0x3

    .line 126
    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/VideoWallpaperService;

    aput-object v4, v2, v3

    const-class v3, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService2;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/util/ProcessUtils;->getRunningProcesses(Landroid/content/Context;[Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    .line 127
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 128
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 129
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_5

    .line 131
    const-class v2, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/VideoWallpaperService;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    const-string p0, "wallpapaer has set!! by process name VideoWallpaperService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-class p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/VideoWallpaperService;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    :cond_3
    const-class v2, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 135
    const-string p0, "wallpapaer has set!! by process name OtherVideoWallpaperService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-class p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 137
    :cond_4
    const-class v2, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService2;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 138
    const-string p0, "wallpapaer has set!! by process name OtherVideoWallpaperService2"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-class p0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService2;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 145
    const-string v2, "unity wallpapaer check error!!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    :cond_5
    :goto_2
    const-string p0, "unity wallpapaer not set!!"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getDecryptedContent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;
    .locals 3

    const-string p0, "config_wallpaper_"

    .line 320
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/redmagickyi/network/NetConfig;->RES_CACHE_DIRECT_ROOT:Ljava/lang/String;

    const-string v2, "wallpaper/config"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-class v1, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/VideoWallpaperService;

    if-ne p1, v1, :cond_0

    .line 322
    new-instance p0, Ljava/io/File;

    const-string p1, "config_wallpaper"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_0
    const-class v1, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService;

    if-ne p1, v1, :cond_1

    .line 324
    new-instance p0, Ljava/io/File;

    const-string p1, "config_wallpaper_other"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_1
    const-class v1, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService2;

    if-ne p1, v1, :cond_2

    .line 326
    new-instance p0, Ljava/io/File;

    const-string p1, "config_wallpaper_other2"

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, v1

    .line 331
    :goto_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/FileUtils;->getData(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SecretUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 333
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    .line 338
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 264
    const-string v0, "jpg"

    if-nez p0, :cond_0

    move-object p0, v0

    .line 267
    :cond_0
    const-string v1, "png"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "gif"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method public static getWallpaperDMFile(Ljava/lang/Class;)Ljava/io/File;
    .locals 4

    .line 273
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcn/nubia/redmagickyi/network/NetConfig;->RES_CACHE_DIRECT_ROOT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wallpaper/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->getWallpaperFile(Ljava/lang/Class;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getWallpaperDMFile: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LiveWallPaperUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getWallpaperFile(Ljava/lang/Class;)Ljava/io/File;
    .locals 2

    .line 279
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->getDecryptedContent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    .line 280
    new-instance v0, Ljava/io/File;

    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 281
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getWallpaperFile: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LiveWallPaperUtils"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static handleLiveWallPaperChanged([Landroid/app/WallpaperInfo;)V
    .locals 7

    .line 153
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 154
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    if-nez v1, :cond_0

    .line 155
    const-string v2, "Desktop"

    goto :goto_1

    :cond_0
    const-string v2, "LockScreen"

    .line 156
    :goto_1
    aget-object v3, p0, v1

    .line 157
    invoke-static {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->findMatchedLiveWallpaperService(Landroid/app/WallpaperInfo;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "video wallpaper set success!! component is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", wallpaperType is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LiveWallPaperUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 165
    new-instance v1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils$1;

    invoke-direct {v2, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils$1;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static isWallpaperMute(Ljava/lang/Class;)Z
    .locals 2

    .line 286
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->getDecryptedContent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    .line 287
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 288
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 290
    :try_start_0
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 292
    :catch_0
    const-string p0, "LiveWallPaperUtils"

    const-string v0, "no mute config found!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public static saveEncryptContent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    .line 300
    new-instance p0, Ljava/io/File;

    sget-object v0, Lcn/nubia/redmagickyi/network/NetConfig;->RES_CACHE_DIRECT_ROOT:Ljava/lang/String;

    const-string v1, "wallpaper/config"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-class v0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/VideoWallpaperService;

    if-ne p1, v0, :cond_0

    .line 302
    new-instance p1, Ljava/io/File;

    const-string v0, "config_wallpaper"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_0
    const-class v0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService;

    if-ne p1, v0, :cond_1

    .line 304
    new-instance p1, Ljava/io/File;

    const-string v0, "config_wallpaper_other"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    const-class v0, Lcn/nubia/redmagickyi/wallpaper/hub/dynamic/service/OtherVideoWallpaperService2;

    if-ne p1, v0, :cond_2

    .line 306
    new-instance p1, Ljava/io/File;

    const-string v0, "config_wallpaper_other2"

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "config_wallpaper_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p1, v0

    .line 310
    :goto_0
    invoke-static {p2}, Lcn/nubia/redmagickyi/util/SecretUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 314
    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/util/FileUtils;->setData(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static setIamgeWallpaper(Landroid/content/Context;)V
    .locals 6

    .line 203
    const-string v0, "setIamgeWallpaper -> release failed, "

    const-string v1, "LiveWallPaperUtils"

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    const/4 v2, 0x0

    .line 207
    :try_start_0
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 208
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_1

    .line 210
    :try_start_1
    const-string p0, "bm == null!!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_0

    .line 226
    :try_start_2
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    :try_start_3
    invoke-static {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->switchBitmapToStream(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    if-eqz v4, :cond_2

    .line 215
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v4, 0x1

    .line 216
    :try_start_4
    invoke-virtual {p0, v5, v2, v4, v4}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v5

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v2, v5

    goto :goto_9

    :catch_1
    move-object v2, v5

    goto :goto_4

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 223
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v3, :cond_5

    .line 226
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    .line 229
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :catchall_1
    move-exception p0

    move-object v3, v2

    goto :goto_9

    :catch_3
    move-object v3, v2

    .line 219
    :catch_4
    :goto_4
    :try_start_6
    const-string p0, "setIamgeWallpaper Exception"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_4

    .line 223
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_5

    :catch_5
    move-exception p0

    goto :goto_6

    :cond_4
    :goto_5
    if-eqz v3, :cond_5

    .line 226
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    .line 229
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_8
    return-void

    :catchall_2
    move-exception p0

    :goto_9
    if-eqz v2, :cond_6

    .line 223
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_a

    :catch_6
    move-exception v2

    goto :goto_b

    :cond_6
    :goto_a
    if-eqz v3, :cond_7

    .line 226
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_c

    .line 229
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_7
    :goto_c
    throw p0
.end method

.method public static setLiveWallPaperByNubiaRomSurpportRemagicOS(Landroid/content/Context;Ljava/io/File;ZI)Ljava/lang/Class;
    .locals 2

    .line 64
    :try_start_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->findBestUnUsedLiveWallpaper(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->saveEncryptContent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->setWallPaperByNubiaRomSurpportRemagicOS(Landroid/content/Context;Ljava/lang/Class;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setLiveWallPaperNotSurpportRemagicOS(Landroid/app/Activity;Ljava/io/File;ZI)Ljava/lang/Class;
    .locals 3

    .line 47
    :try_start_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->findBestUnUsedLiveWallpaper(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->saveEncryptContent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p0, v0, p1, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/util/WallPaperChangeManager;->setWallPaperNotSurpportRemagicOS(Landroid/content/Context;Ljava/lang/Class;Ljava/io/File;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static switchBitmapToStream(Landroid/graphics/Bitmap;)[B
    .locals 6

    .line 237
    const-string v0, "switchBitmapToStream -> release failed, "

    const-string v1, "LiveWallPaperUtils"

    .line 0
    const-string v2, "switchBitmapToStream -> compress failed, "

    .line 237
    const-string v3, "jpg"

    .line 239
    invoke-static {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/util/LiveWallPaperUtils;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v3

    .line 240
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x800

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v5, 0x5a

    .line 242
    :try_start_0
    invoke-virtual {p0, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 243
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0

    .line 250
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    .line 246
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    const/4 p0, 0x0

    return-object p0

    .line 250
    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_4
    throw p0
.end method
