.class public Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;
.super Ljava/lang/Object;
.source "LiveSkinImageManager.java"


# static fields
.field public static final LIVE_SKIN_IMAGE_CHECKED_ACTION:Ljava/lang/String; = "intent.action.redmagickyi.ar.skinimage.checked"

.field private static final TAG:Ljava/lang/String; = "LiveSkinImageManager"

.field private static context:Landroid/content/Context;

.field private static liveSkinImageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/redmagickyi/unity/config/LiveConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->liveSkinImageMap:Ljava/util/Map;

    .line 41
    invoke-static {}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->initData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized checkLocaleSkinImageData()V
    .locals 11

    const-class v0, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;

    monitor-enter v0

    .line 59
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    sget-object v2, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getAllARImages()Ljava/util/List;

    move-result-object v2

    .line 61
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 62
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    .line 64
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getSkin_id()I

    move-result v5

    .line 65
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getPresetSkinIds()Ljava/util/List;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    sget-object v6, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->liveSkinImageMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/redmagickyi/unity/config/LiveConfig;

    if-nez v6, :cond_2

    if-eqz v5, :cond_0

    .line 70
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getPresetSkinIds()Ljava/util/List;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 73
    sget-object v4, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->deleteARImageDataBySkinId(I)Z

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getImageType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setType(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getIs3d()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs3D(I)V

    .line 81
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getSkinId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setSkin_id(I)V

    .line 82
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getThumbnailPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setThumbnail_path(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getLiveType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setLive_type(I)V

    .line 84
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getSceneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setScence_name(Ljava/lang/String;)V

    .line 85
    sget-object v5, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->insertUpdateARImageDataBySkinId(Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;)Z

    goto/16 :goto_0

    .line 90
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getPresetSkinIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1
    if-ltz v3, :cond_7

    .line 91
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getPresetSkinIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 93
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isOfflineMode()Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    .line 94
    sget-object v6, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->liveSkinImageMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/redmagickyi/unity/config/LiveConfig;

    if-eqz v6, :cond_6

    .line 96
    new-instance v9, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-direct {v9}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;-><init>()V

    .line 97
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getImageType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setType(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v9, v7}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setPos(I)V

    .line 99
    invoke-virtual {v9, v4}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs_quick(I)V

    .line 100
    sget-object v7, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    if-nez v5, :cond_4

    .line 101
    const-string v5, ""

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getName()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v9, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setItemName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getIs3d()I

    move-result v5

    invoke-virtual {v9, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs3D(I)V

    .line 103
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getSkinId()I

    move-result v5

    invoke-virtual {v9, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setSkin_id(I)V

    .line 104
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getThumbnailPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setThumbnail_path(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v9, v8}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setFlag(I)V

    .line 106
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getLiveType()I

    move-result v5

    invoke-virtual {v9, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setLive_type(I)V

    .line 107
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getSceneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setScence_name(Ljava/lang/String;)V

    .line 108
    sget-object v5, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->insertUpdateARImageDataBySkinId(Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 110
    invoke-interface {v2, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 111
    sget-object v5, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v5

    invoke-virtual {v9}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->insertUpdateARSettingData(Ljava/lang/String;)Z

    goto :goto_3

    .line 115
    :cond_5
    sget-object v6, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->liveSkinImageMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/unity/config/LiveConfig;

    if-eqz v5, :cond_6

    .line 117
    new-instance v6, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-direct {v6}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;-><init>()V

    .line 118
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getImageType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setType(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setPos(I)V

    .line 120
    invoke-virtual {v6, v4}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs_quick(I)V

    .line 121
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getImageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setItemName(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getIs3d()I

    move-result v7

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs3D(I)V

    .line 123
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getSkinId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setSkin_id(I)V

    .line 124
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getThumbnailPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setThumbnail_path(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v6, v8}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setFlag(I)V

    .line 126
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getLiveType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setLive_type(I)V

    .line 127
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getSceneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setScence_name(Ljava/lang/String;)V

    .line 128
    sget-object v5, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->insertUpdateARImageDataBySkinId(Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 130
    invoke-interface {v2, v8, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 131
    sget-object v5, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v5

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->insertUpdateARSettingData(Ljava/lang/String;)Z

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 138
    :cond_7
    invoke-static {v2}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->trimImagePosition(Ljava/util/List;)V

    .line 139
    invoke-static {}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->sendSkinImageCheckedBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized checkOnlineSkinImageData([[Ljava/lang/String;)V
    .locals 10

    const-class v0, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;

    monitor-enter v0

    .line 144
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getAllARImages()Ljava/util/List;

    move-result-object v1

    .line 145
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 146
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    .line 148
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getSkin_id()I

    move-result v6

    move v7, v5

    .line 150
    :goto_1
    array-length v8, p0

    if-ge v7, v8, :cond_2

    .line 151
    aget-object v8, p0, v7

    if-eqz v8, :cond_1

    .line 153
    aget-object v9, v8, v5

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 154
    aget-object v8, v8, v4

    if-ne v9, v6, :cond_1

    .line 158
    invoke-virtual {v3, v8}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setItemName(Ljava/lang/String;)V

    .line 159
    sget-object v4, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->insertUpdateARImageDataBySkinId(Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;)Z

    const/4 v3, 0x0

    .line 160
    aput-object v3, p0, v7

    goto :goto_0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_0

    .line 165
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getPresetSkinIds()Ljava/util/List;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 168
    sget-object v3, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->deleteARImageDataBySkinId(I)Z

    goto :goto_0

    :cond_3
    move v2, v5

    .line 173
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_5

    .line 174
    aget-object v3, p0, v2

    if-eqz v3, :cond_4

    .line 176
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 177
    aget-object v3, v3, v4

    .line 178
    sget-object v7, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->liveSkinImageMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/redmagickyi/unity/config/LiveConfig;

    if-eqz v6, :cond_4

    .line 180
    new-instance v7, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-direct {v7}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;-><init>()V

    .line 181
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getImageType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setType(Ljava/lang/String;)V

    .line 182
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setPos(I)V

    .line 183
    invoke-virtual {v7, v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs_quick(I)V

    .line 184
    invoke-virtual {v7, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setItemName(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getIs3d()I

    move-result v3

    invoke-virtual {v7, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setIs3D(I)V

    .line 186
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getSkinId()I

    move-result v3

    invoke-virtual {v7, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setSkin_id(I)V

    .line 187
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getThumbnailPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setThumbnail_path(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v7, v4}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setFlag(I)V

    .line 189
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getLiveType()I

    move-result v3

    invoke-virtual {v7, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setLive_type(I)V

    .line 190
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getSceneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->setScence_name(Ljava/lang/String;)V

    .line 191
    sget-object v3, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->insertUpdateARImageDataBySkinId(Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 193
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 198
    :cond_5
    invoke-static {v1}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->trimImagePosition(Ljava/util/List;)V

    .line 199
    invoke-static {}, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->sendSkinImageCheckedBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initData()V
    .locals 4

    .line 45
    sget-object v0, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/config/SkinConfig;->getSkinIdList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 48
    sget-object v2, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/unity/config/LiveConfig;->getLiveConfig(Landroid/content/Context;I)Lcn/nubia/redmagickyi/unity/config/LiveConfig;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50
    sget-object v3, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->liveSkinImageMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static sendSkinImageCheckedBroadcast()V
    .locals 2

    .line 224
    const-string v0, "LiveSkinImageManager"

    const-string v1, "sendSkinImageCheckedBroadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.redmagickyi.ar.skinimage.checked"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 227
    sget-object v1, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static trimImagePosition(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;",
            ">;)V"
        }
    .end annotation

    .line 204
    sget-object v0, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v0

    const-string v1, "ar_image_item"

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getStringCol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    .line 206
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 207
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    .line 208
    sget-object v6, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v6

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "image_pos"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->UpdateARLivedataBySql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x2

    if-gt v3, v6, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    move v6, v2

    .line 210
    :goto_1
    sget-object v7, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v7}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object v7

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v9, "is_quick"

    invoke-virtual {v7, v8, v9, v6}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->UpdateARLivedataBySql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 217
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 218
    sget-object v0, Lcn/nubia/redmagickyi/ar/ARSpaceUtils/LiveSkinImageManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/ar/beans/ARImageBeans;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->insertUpdateARSettingData(Ljava/lang/String;)Z

    :cond_3
    return-void
.end method
