.class public Lcn/nubia/redmagickyi/unity/config/LiveConfig;
.super Ljava/lang/Object;
.source "LiveConfig.java"


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "Config_Live"

.field private static final DIR_NAME:Ljava/lang/String; = "Config"

.field private static final TAG:Ljava/lang/String; = "LiveConfig"

.field private static configMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/redmagickyi/unity/config/LiveConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private imageName:Ljava/lang/String;

.field private imageType:Ljava/lang/String;

.field private is3d:I

.field private liveType:I

.field private sceneName:Ljava/lang/String;

.field private skinId:I

.field private thumbnailPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getConfigMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/redmagickyi/unity/config/LiveConfig;",
            ">;"
        }
    .end annotation

    const-class v0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->configMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->configMap:Ljava/util/Map;

    .line 102
    const-string v1, "Config"

    const-string v2, "Config_Live"

    invoke-static {p0, v1, v2}, Lcn/nubia/redmagickyi/unity/util/ResUtil;->getUnityResContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->parseConfig(Ljava/lang/String;)V

    .line 104
    :cond_0
    sget-object p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->configMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getLiveConfig(Landroid/content/Context;I)Lcn/nubia/redmagickyi/unity/config/LiveConfig;
    .locals 2

    .line 91
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getConfigMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backgroundMap size is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiveConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "live config is"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static parseConfig(Ljava/lang/String;)V
    .locals 13

    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 110
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v2, "UTF8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 112
    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move v8, v1

    .line 113
    :goto_0
    array-length v9, p0

    if-ge v8, v9, :cond_9

    .line 114
    aget-object v9, p0, v8

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-nez v8, :cond_7

    move v10, v1

    .line 116
    :goto_1
    array-length v11, v9

    if-ge v10, v11, :cond_8

    .line 117
    const-string v11, "image_type"

    aget-object v12, v9, v10

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 118
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 119
    :cond_0
    const-string v11, "image_name"

    aget-object v12, v9, v10

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 120
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    .line 121
    :cond_1
    const-string v11, "is_3d"

    aget-object v12, v9, v10

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 122
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    .line 123
    :cond_2
    const-string v11, "skin_id"

    aget-object v12, v9, v10

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 124
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    .line 125
    :cond_3
    const-string v11, "thumbnail_path"

    aget-object v12, v9, v10

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 126
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    .line 127
    :cond_4
    const-string v11, "live_type"

    aget-object v12, v9, v10

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 128
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    .line 129
    :cond_5
    const-string v11, "scene_name"

    aget-object v12, v9, v10

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 130
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_6
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_7
    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    if-eqz v7, :cond_8

    .line 134
    new-instance v10, Lcn/nubia/redmagickyi/unity/config/LiveConfig;

    invoke-direct {v10}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;-><init>()V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->setImageType(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->setImageName(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->setIs3d(I)V

    .line 138
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->setSkinId(I)V

    .line 139
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->setThumbnailPath(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->setLiveType(I)V

    .line 141
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v9, v9, v11

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->setSceneName(Ljava/lang/String;)V

    .line 142
    sget-object v9, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->configMap:Ljava/util/Map;

    invoke-virtual {v10}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getSkinId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    return-void
.end method


# virtual methods
.method public getImageName()Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->imageName:Ljava/lang/String;

    return-object p0
.end method

.method public getImageType()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->imageType:Ljava/lang/String;

    return-object p0
.end method

.method public getIs3d()I
    .locals 0

    .line 48
    iget p0, p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->is3d:I

    return p0
.end method

.method public getLiveType()I
    .locals 0

    .line 72
    iget p0, p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->liveType:I

    return p0
.end method

.method public getSceneName()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->sceneName:Ljava/lang/String;

    return-object p0
.end method

.method public getSkinId()I
    .locals 0

    .line 56
    iget p0, p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->skinId:I

    return p0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->thumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->imageName:Ljava/lang/String;

    return-void
.end method

.method public setImageType(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->imageType:Ljava/lang/String;

    return-void
.end method

.method public setIs3d(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->is3d:I

    return-void
.end method

.method public setLiveType(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->liveType:I

    return-void
.end method

.method public setSceneName(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->sceneName:Ljava/lang/String;

    return-void
.end method

.method public setSkinId(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->skinId:I

    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->thumbnailPath:Ljava/lang/String;

    return-void
.end method
