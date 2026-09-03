.class public Lcn/nubia/redmagickyi/skin/util/SkinConstant;
.super Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;
.source "SkinConstant.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SkinConstant"

.field public static offlineSkinMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 81
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->initOfflineSkinMap()Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;-><init>()V

    return-void
.end method

.method public static declared-synchronized initOfflineSkinMap()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;",
            ">;"
        }
    .end annotation

    const-class v0, Lcn/nubia/redmagickyi/skin/util/SkinConstant;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    if-nez v1, :cond_6

    .line 24
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    .line 25
    const-string v1, "mora"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x3e8

    if-eqz v1, :cond_1

    .line 26
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v1

    const/16 v3, 0x3eb

    const/16 v4, 0x3ea

    const/16 v5, 0x3e9

    const/16 v6, 0x3ec

    const/16 v7, 0x3ee

    const/16 v8, 0x3ed

    if-eqz v1, :cond_0

    .line 28
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v11, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_timetravel:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_timetravel:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_timetravel:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v7, v11, v12, v13}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v10, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_uniform:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_uniform:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_uniform:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v8, v10, v11, v12}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v9, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_swimsuit:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_swimsuit:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_swimsuit:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v6, v9, v10, v11}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v8, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_default:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_default:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_default:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v2, v8, v9, v10}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v6, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v7, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_jjsn:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_jjsn:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_jjsn:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v5, v7, v8, v9}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v6, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_xrmj:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_xrmj:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_xrmj:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v4, v6, v7, v8}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v5, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_gel:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_gel:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_gel:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v3, v5, v6, v7}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 37
    :cond_0
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v11, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_uniform:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_uniform:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_uniform:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v8, v11, v12, v13}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    const/16 v8, 0x7d1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v11, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_qipao_3d:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_qipao:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_qipao:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v8, v11, v12, v13}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    const/16 v8, 0x7d2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v11, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_carton_3d:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_carton:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_carton:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v8, v11, v12, v13}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    const/16 v8, 0x7d0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v11, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_timetravel_3d:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_timetravel:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_timetravel:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v8, v11, v12, v13}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    const/16 v8, 0x7d3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v11, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_samurai_3d:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_samurai:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_samurai:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v8, v11, v12, v13}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v10, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_default:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_default:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_default:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v2, v10, v11, v12}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v8, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v9, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_swimsuit:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_swimsuit:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_swimsuit:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v6, v9, v10, v11}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v6, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v8, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_xrmj:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_xrmj:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_xrmj:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v4, v8, v9, v10}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v6, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_gel:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_gel:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_gel:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v3, v6, v8, v9}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v4, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_jjsn:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v8, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_jjsn:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_jjsn:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v5, v4, v6, v8}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v4, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_timetravel:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_timetravel:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v8, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_timetravel:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v7, v4, v5, v6}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_1
    const-string v1, "demi"

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getCharacter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 50
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    sget v5, Lcn/nubia/redmagickyi/main/R$mipmap;->change_skin_item_thumbnail_default:I

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_name_offline_default:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcn/nubia/redmagickyi/main/R$string;->chnage_skin_item_desc_offline_default:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v2, v5, v6, v7}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_2
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isOfflineMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 54
    new-instance v1, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;-><init>()V

    .line 55
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/unity/config/SkinConfig;->getSkinIdList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    .line 57
    sget-object v4, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    .line 58
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 59
    new-instance v6, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-direct {v6}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;-><init>()V

    .line 60
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setSkinId(I)V

    .line 61
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setName(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setDesc(Ljava/lang/String;)V

    .line 63
    const-string v5, ""

    invoke-virtual {v6, v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setThumbnailUrl(Ljava/lang/String;)V

    .line 64
    const-string v5, ""

    invoke-virtual {v6, v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setThumbnailPath(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v6}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v5

    invoke-static {v5}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->is2D(I)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    move v5, v7

    goto :goto_2

    :cond_4
    const/4 v5, 0x2

    :goto_2
    invoke-virtual {v6, v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setSkinType(I)V

    const/4 v5, 0x0

    .line 66
    invoke-virtual {v6, v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setExchangeType(I)V

    .line 67
    invoke-virtual {v6, v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setAchievementPoint(I)V

    .line 68
    const-string v5, ""

    invoke-virtual {v6, v5}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setActivityLink(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->setReceiveState(I)V

    .line 70
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 73
    :cond_5
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;->setSkins(Ljava/util/List;)V

    .line 74
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->getInstance()Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/skin/util/SkinOnlineDataManager;->updateSkins(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean;)V

    .line 77
    :cond_6
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
