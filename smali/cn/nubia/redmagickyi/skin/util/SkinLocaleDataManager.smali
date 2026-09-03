.class public Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;
.super Ljava/lang/Object;
.source "SkinLocaleDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;
    }
.end annotation


# static fields
.field private static final SKIN_CHANGE_ENABLE:Z

.field private static final SKIN_CHANGE_OFFLINE_MODE:Z

.field private static final TAG:Ljava/lang/String; = "SkinLocaleDataManager"

.field private static changeSkinHandlerCallback:Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;

.field private static lastSkinId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$ChangeSkin;->enable()Z

    move-result v0

    sput-boolean v0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->SKIN_CHANGE_ENABLE:Z

    .line 38
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$ChangeSkin;->isOfflineMode()Z

    move-result v0

    sput-boolean v0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->SKIN_CHANGE_OFFLINE_MODE:Z

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->lastSkinId:Ljava/lang/Integer;

    .line 42
    new-instance v1, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;

    invoke-direct {v1, v0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;-><init>(Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$1;)V

    sput-object v1, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->changeSkinHandlerCallback:Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;
    .locals 1

    .line 35
    sget-object v0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->changeSkinHandlerCallback:Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;

    return-object v0
.end method

.method static synthetic access$300(I)I
    .locals 0

    .line 35
    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->customTransformSkinId(I)I

    move-result p0

    return p0
.end method

.method private static changeSkin(IZI)Z
    .locals 2

    .line 91
    const-string v0, "SkinLocaleDataManager"

    const-string v1, "changeSkin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 92
    sget-object p1, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->lastSkinId:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 93
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sput-object p1, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->lastSkinId:Ljava/lang/Integer;

    .line 94
    sget-object p1, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->changeSkinHandlerCallback:Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;

    invoke-static {p1, p0, p2}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->access$100(Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;II)V

    const/4 p0, 0x1

    return p0
.end method

.method private static customTransformSkinId(I)I
    .locals 3

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_2

    const/16 v1, 0x3e9

    if-eq p0, v1, :cond_2

    const/16 v1, 0x3ea

    if-eq p0, v1, :cond_2

    const/16 v1, 0x3eb

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    const-string v1, "alarmclock"

    sget-object v2, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sceneName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 376
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$DigitalHuman;->enable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 v0, 0x3ed

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p0
.end method

.method private static getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 361
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "config_skin"

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

    .line 363
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized getModelSkin(Landroid/content/Context;)I
    .locals 6

    const-class v0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;

    monitor-enter v0

    .line 224
    :try_start_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 225
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getDefaultSkinId()I

    move-result v1

    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isSkinChangeEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isOfflineMode()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 230
    :try_start_1
    sget-object v2, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 232
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v3, :cond_0

    .line 235
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 240
    :cond_0
    :try_start_3
    sget-object v2, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v3, p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 242
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v3, :cond_4

    .line 246
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 252
    :cond_1
    :try_start_5
    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v2

    .line 254
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_3

    .line 258
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;

    .line 259
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;->isActive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 260
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;->getSkinId()I

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_4

    .line 270
    :try_start_7
    sget-object v2, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, p0

    goto :goto_4

    :catch_3
    move-exception p0

    .line 272
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    if-eqz v3, :cond_4

    .line 275
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v1

    .line 280
    :cond_4
    :goto_5
    const-string p0, "SkinLocaleDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModelSkin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->customTransformSkinId(I)I

    move-result p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getModelSkinByAccount(Landroid/content/Context;)I
    .locals 8

    const-class v0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;

    monitor-enter v0

    .line 285
    :try_start_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getNubiaUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 287
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getDefaultSkinId()I

    move-result v2

    .line 288
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isSkinChangeEnable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 289
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isOfflineMode()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 292
    :try_start_1
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 294
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v4, :cond_0

    .line 297
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 302
    :cond_0
    :try_start_3
    sget-object v1, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/bean/SkinConfig_old;->getSkinId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 304
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v4, :cond_5

    .line 308
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v2

    goto :goto_5

    .line 312
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_5

    .line 315
    :try_start_5
    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v3

    .line 317
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_3

    .line 321
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;

    .line 322
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;->getAccountName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 323
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;->getSkinId()I

    move-result v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    move v7, v2

    move v2, v1

    move v1, v7

    :goto_3
    if-nez v2, :cond_4

    .line 333
    :try_start_7
    sget-object v2, Lcn/nubia/redmagickyi/skin/util/SkinConstant;->offlineSkinMap:Ljava/util/Map;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v4, p0

    goto :goto_4

    :catch_3
    move-exception p0

    .line 335
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    if-eqz v4, :cond_4

    .line 338
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->getSkinId()I

    move-result v2

    goto :goto_5

    :cond_4
    move v2, v1

    .line 344
    :cond_5
    :goto_5
    const-string p0, "SkinLocaleDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModelSkinByAccount"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {v2}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->customTransformSkinId(I)I

    move-result p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

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
    sget-boolean v0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->SKIN_CHANGE_OFFLINE_MODE:Z

    return v0
.end method

.method public static final isSkinChangeEnable()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->SKIN_CHANGE_ENABLE:Z

    return v0
.end method

.method private static saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 350
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/SecretUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 354
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "config_skin"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/FileUtils;->setData(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized setModelSkin(Landroid/content/Context;I)V
    .locals 9

    const-class v0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;

    monitor-enter v0

    .line 159
    :try_start_0
    const-string v1, "SkinLocaleDataManager"

    const-string v2, "setModelSkin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getNubiaUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->isOfflineMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    new-instance v1, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;

    invoke-direct {v1, p1}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;-><init>(I)V

    .line 165
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOffline;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 168
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 171
    :try_start_1
    invoke-static {v2}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 173
    :catch_0
    :try_start_2
    const-string p1, "SkinLocaleDataManager"

    const-string v1, "failed load last saved config, may hasn\'t config?"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v5, :cond_6

    .line 176
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;

    .line 177
    invoke-virtual {v1, v4}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;->setActive(Z)V

    goto :goto_1

    .line 181
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v6, 0x1

    if-nez v3, :cond_5

    .line 184
    :try_start_3
    invoke-static {v2}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 186
    :catch_1
    :try_start_4
    const-string v2, "SkinLocaleDataManager"

    const-string v3, "failed load last saved config, may hasn\'t config?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v5, :cond_4

    .line 190
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v4

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;

    .line 191
    invoke-virtual {v7}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;->getAccountName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 193
    invoke-virtual {v7, v6}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;->setActive(Z)V

    .line 194
    invoke-virtual {v7, p1}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;->setSkinId(I)V

    move v3, v6

    goto :goto_3

    .line 196
    :cond_2
    invoke-virtual {v7, v4}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;->setActive(Z)V

    goto :goto_3

    :cond_3
    if-nez v3, :cond_6

    .line 200
    new-instance v2, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;

    invoke-direct {v2, p1, v1, v6}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v5, v2}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;->addData(Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;)V

    goto :goto_4

    .line 204
    :cond_4
    new-instance v5, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;

    invoke-direct {v5}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;-><init>()V

    .line 205
    new-instance v2, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;

    invoke-direct {v2, p1, v1, v6}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v5, v2}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;->addData(Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;)V

    goto :goto_4

    .line 209
    :cond_5
    new-instance v5, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;

    invoke-direct {v5}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;-><init>()V

    .line 210
    new-instance v2, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;

    invoke-direct {v2, p1, v1, v6}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v5, v2}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;->addData(Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline$Data;)V

    .line 211
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_4
    if-eqz v5, :cond_7

    .line 215
    invoke-virtual {v5}, Lcn/nubia/redmagickyi/skin/bean/SkinConfigOnline;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    :cond_7
    :goto_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchModelSkin(IZZ)Z
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkin(IZZI)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchModelSkin(IZZI)Z
    .locals 3

    const-class v0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;

    monitor-enter v0

    .line 73
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/config/SkinConfig;->getSkinIdList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 74
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/config/SkinConfig;->getSkinIdList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getDefaultSkinId()I

    move-result p0

    const/4 p1, 0x1

    :cond_0
    if-eqz p1, :cond_1

    .line 79
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->setModelSkin(Landroid/content/Context;I)V

    .line 81
    :cond_1
    invoke-static {p0, p2, p3}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->changeSkin(IZI)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    .line 83
    :cond_2
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchModelSkinWhenAccountChanged()Z
    .locals 4

    const-class v0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkinByAccount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-static {v1, v2, v3}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkin(IZZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized switchModelSkinWithChangeAnim(IZZ)Z
    .locals 2

    const-class v0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;

    monitor-enter v0

    const/4 v1, 0x2

    .line 65
    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkin(IZZI)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchModelSkinWithEnterAnim()Z
    .locals 4

    const-class v0, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkinByAccount(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 59
    invoke-static {v1, v2, v3, v3}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkin(IZZI)Z

    move-result v1

    .line 60
    sget-object v2, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->changeSkinHandlerCallback:Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager$ChangeSkinHandlerCallback;->setPlayingEnterAnim(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
