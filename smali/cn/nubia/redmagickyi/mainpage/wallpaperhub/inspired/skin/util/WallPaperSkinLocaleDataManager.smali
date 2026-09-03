.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;
.super Ljava/lang/Object;
.source "WallPaperSkinLocaleDataManager.java"


# static fields
.field private static final SKIN_CHANGE_ENABLE:Z

.field private static final SKIN_CHANGE_OFFLINE_MODE:Z

.field private static final TAG:Ljava/lang/String; = "WallPaperSkinLocaleDataManager"

.field private static lastSkinId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$ChangeSkin;->enable()Z

    move-result v0

    sput-boolean v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->SKIN_CHANGE_ENABLE:Z

    .line 37
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$WallPaperHub$Inspired;->isOfflineMode()Z

    move-result v0

    sput-boolean v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->SKIN_CHANGE_OFFLINE_MODE:Z

    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->lastSkinId:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changeSkin(IZI)Z
    .locals 7

    .line 92
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sceneName:Ljava/lang/String;

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-string v0, "changeSkin"

    const-string v1, "WallPaperSkinLocaleDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 95
    sget-object p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->lastSkinId:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sput-object p1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->lastSkinId:Ljava/lang/Integer;

    .line 97
    const-string p1, "begin changeSkin"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;-><init>()V

    const/16 v0, 0x3fc

    .line 99
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;->setMsgID(I)V

    .line 100
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;->setSkinId(I)V

    .line 101
    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeSkin;->setType(I)V

    .line 102
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 103
    new-instance p0, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;-><init>(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 314
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "config_skin_wallpaper"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/FileUtils;->getData(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SecretUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 316
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized getWallPaperSkin(Landroid/content/Context;)I
    .locals 6

    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;

    monitor-enter v0

    .line 176
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    .line 179
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->isSkinChangeEnable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 182
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->isOfflineMode()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 185
    :try_start_2
    sget-object v2, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;->getSkinId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 187
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_5

    .line 190
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 195
    :cond_1
    :try_start_4
    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    .line 197
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_3

    .line 201
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;

    .line 202
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->isActive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 203
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->getSkinId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    move-object v2, v3

    :goto_2
    if-nez v4, :cond_4

    .line 213
    :try_start_6
    sget-object v4, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;->getSkinId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v3, v1

    goto :goto_3

    :catch_2
    move-exception v1

    .line 215
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    if-eqz v3, :cond_4

    .line 218
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v2

    :cond_5
    :goto_4
    if-nez v3, :cond_6

    .line 225
    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 227
    :cond_6
    const-string p0, "WallPaperSkinLocaleDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModelSkin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getWallPaperSkinByAccount(Landroid/content/Context;)I
    .locals 11

    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;

    monitor-enter v0

    .line 232
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkinByAccount(Landroid/content/Context;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    .line 235
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getNubiaUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_9

    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->isSkinChangeEnable()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 239
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->isOfflineMode()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 242
    :try_start_2
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;->getSkinId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 244
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_9

    .line 247
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_5

    :cond_1
    if-nez v1, :cond_2

    .line 251
    const-string v1, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 255
    :cond_2
    :try_start_4
    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    .line 257
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_6

    .line 263
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v7, v4

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;

    .line 264
    const-string v9, ""

    invoke-virtual {v8}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->getAccountName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 265
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->getSkinId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 267
    :cond_4
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->getAccountName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 268
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->getSkinId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v6, v5

    goto :goto_2

    :cond_5
    move-object v1, v4

    goto :goto_2

    :cond_6
    move-object v1, v4

    move-object v7, v1

    :goto_2
    if-nez v6, :cond_7

    if-eqz v7, :cond_7

    move-object v1, v7

    goto :goto_3

    :cond_7
    move v5, v6

    :goto_3
    if-nez v5, :cond_8

    .line 283
    :try_start_6
    sget-object v3, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;->getSkinId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v4, v2

    goto :goto_4

    :catch_2
    move-exception v2

    .line 285
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    if-eqz v4, :cond_8

    .line 288
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_5

    :cond_8
    move-object v4, v1

    :cond_9
    :goto_5
    if-nez v4, :cond_a

    .line 295
    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkinByAccount(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 297
    :cond_a
    const-string p0, "WallPaperSkinLocaleDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getModelSkinByAccount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final isOfflineMode()Z
    .locals 1

    .line 49
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isOfflineMode()Z

    move-result v0

    return v0

    .line 52
    :cond_0
    sget-boolean v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->SKIN_CHANGE_OFFLINE_MODE:Z

    return v0
.end method

.method public static final isSkinChangeEnable()Z
    .locals 1

    .line 42
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isSkinChangeEnable()Z

    move-result v0

    return v0

    .line 45
    :cond_0
    sget-boolean v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->SKIN_CHANGE_ENABLE:Z

    return v0
.end method

.method private static saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 303
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/SecretUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 307
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "config_skin_wallpaper"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/FileUtils;->setData(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized setModelSkin(Landroid/content/Context;I)V
    .locals 9

    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;

    monitor-enter v0

    .line 117
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->setModelSkin(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit v0

    return-void

    .line 121
    :cond_0
    :try_start_1
    const-string v1, "WallPaperSkinLocaleDataManager"

    const-string v2, "setModelSkin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getNubiaUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->isOfflineMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    new-instance v1, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;

    invoke-direct {v1, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;-><init>(I)V

    .line 127
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOffline;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    if-nez v1, :cond_2

    .line 132
    const-string v1, ""

    .line 134
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-nez v3, :cond_6

    .line 137
    :try_start_2
    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 139
    :catch_0
    :try_start_3
    const-string v2, "WallPaperSkinLocaleDataManager"

    const-string v3, "failed load last saved config, may hasn\'t config?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    .line 143
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;

    .line 144
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->getAccountName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 146
    invoke-virtual {v7, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->setActive(Z)V

    .line 147
    invoke-virtual {v7, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->setSkinId(I)V

    move v6, v4

    goto :goto_1

    .line 149
    :cond_3
    invoke-virtual {v7, v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;->setActive(Z)V

    goto :goto_1

    :cond_4
    if-nez v6, :cond_7

    .line 153
    new-instance v3, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;

    invoke-direct {v3, p1, v1, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;->addData(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;)V

    goto :goto_2

    .line 157
    :cond_5
    new-instance v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;-><init>()V

    .line 158
    new-instance v3, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;

    invoke-direct {v3, p1, v1, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;->addData(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;)V

    goto :goto_2

    .line 162
    :cond_6
    new-instance v2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;-><init>()V

    .line 163
    new-instance v3, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;

    invoke-direct {v3, p1, v1, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;->addData(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline$Data;)V

    .line 164
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    .line 167
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/bean/WallPaperSkinConfigOnline;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    :cond_8
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchModelSkinWhenAccountChanged()Z
    .locals 4

    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkinWhenAccountChanged()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 59
    :cond_0
    :try_start_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->getWallPaperSkinByAccount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 60
    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->switchWallPaperSkin(IZZ)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized switchWallPaperSkin(IZZ)Z
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;

    monitor-enter v0

    .line 64
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkin(IZZ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_0
    const/4 v1, 0x0

    .line 67
    :try_start_1
    invoke-static {p0, p1, p2, v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->switchWallPaperSkin(IZZI)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchWallPaperSkin(IZZI)Z
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;

    monitor-enter v0

    .line 71
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isInternalApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkin(IZZI)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    .line 74
    :cond_0
    :try_start_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/config/SkinConfig;->getSkinIdList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 75
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/config/SkinConfig;->getSkinIdList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getDefaultSkinId()I

    move-result p0

    const/4 p1, 0x1

    :cond_1
    if-eqz p1, :cond_2

    .line 80
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->setModelSkin(Landroid/content/Context;I)V

    .line 82
    :cond_2
    invoke-static {p0, p2, p3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/skin/util/WallPaperSkinLocaleDataManager;->changeSkin(IZI)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    .line 84
    :cond_3
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
