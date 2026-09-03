.class public Lcn/nubia/redmagickyi/network/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NetworkUtils"

.field private static isFriendValueUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static mChangeSkinMotionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field public static mContext:Landroid/app/Activity;

.field public static mEmailManager:Lcn/nubia/redmagickyi/database/EmailManager;

.field public static mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

.field public static mMoodMotionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mNoticeManager:Lcn/nubia/redmagickyi/database/NoticeManager;

.field public static mSettingDialogAdjustVolumeMotion:I

.field public static mSystemAcctInfo:Lcn/nubia/accountsdk/aidl/SystemAccountInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mMoodMotionMap:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mChangeSkinMotionList:Ljava/util/Map;

    .line 70
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mMoodMotionMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x138b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mMoodMotionMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x138c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mMoodMotionMap:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x138d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mMoodMotionMap:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x13a2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mMoodMotionMap:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x13a3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mMoodMotionMap:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x13a4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mChangeSkinMotionList:Ljava/util/Map;

    const/16 v2, 0x3e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x13a5

    const/16 v4, 0x13a6

    const/16 v5, 0x139f

    const/16 v6, 0x13a0

    const/16 v7, 0x13a1

    filled-new-array {v5, v6, v7, v3, v4}, [I

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mChangeSkinMotionList:Ljava/util/Map;

    const/16 v2, 0x3ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x13aa

    const/16 v4, 0x13ab

    filled-new-array {v5, v6, v7, v3, v4}, [I

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mChangeSkinMotionList:Ljava/util/Map;

    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x13fc

    filled-new-array {v5, v6, v7, v3}, [I

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1395

    .line 81
    sput v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mSettingDialogAdjustVolumeMotion:I

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->isFriendValueUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 56
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->isFriendValueUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static cancleUpdateWebResource()V
    .locals 1

    .line 102
    invoke-static {}, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->getInstance()Lcn/nubia/redmagickyi/network/manager/WebResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->cancel()V

    return-void
.end method

.method public static emailSyncStatus(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;ILjava/lang/String;Ljava/util/List;)Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;"
        }
    .end annotation

    .line 167
    new-instance v0, Lcn/nubia/redmagickyi/network/NetworkUtils$2;

    invoke-direct {v0, p0, p1, p3}, Lcn/nubia/redmagickyi/network/NetworkUtils$2;-><init>(Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController$EmailSyncCallback;ILjava/util/List;)V

    const/4 p0, 0x1

    .line 198
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/network/NetworkUtils$2;->setMaxRetryTime(Ljava/lang/Integer;)Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;->syncStatus(ILjava/lang/String;Ljava/util/List;)Lcn/nubia/redmagickyi/network/controller/BaseEmailBatchSyncController;

    move-result-object p0

    return-object p0
.end method

.method public static fetchEmail(Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;Ljava/lang/String;I)Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;
    .locals 1

    .line 201
    new-instance v0, Lcn/nubia/redmagickyi/network/NetworkUtils$3;

    invoke-direct {v0, p2, p0}, Lcn/nubia/redmagickyi/network/NetworkUtils$3;-><init>(ILcn/nubia/redmagickyi/network/controller/BaseEmailFetchController$EmailFetchCallback;)V

    const/4 p0, 0x1

    .line 247
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/network/NetworkUtils$3;->setMaxRteyTime(Ljava/lang/Integer;)Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;->fetchEmail(Ljava/lang/String;I)Lcn/nubia/redmagickyi/network/controller/BaseEmailFetchController;

    move-result-object p0

    return-object p0
.end method

.method public static getSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 261
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :try_start_1
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 265
    :try_start_2
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 267
    :goto_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 268
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 269
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 270
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 272
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 278
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getValue(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 0

    .line 84
    invoke-interface {p1, p0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 85
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 86
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initCacheDir()V
    .locals 5

    .line 283
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/Android/data/cn.nubia.redmagickyi/cache/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 286
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/Android/data/cn.nubia.redmagickyi/files/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 289
    :cond_1
    sget-object v0, Lcn/nubia/redmagickyi/network/NetConfig;->CACHE_SUB_DIRS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 290
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 291
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static onAccountExpired()V
    .locals 2

    .line 431
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Utils;->setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 433
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/user/account/Account;->updateAccountInfo(Lcn/nubia/redmagickyi/user/account/AccountInfo;)V

    .line 434
    sget-object v0, Lcn/nubia/redmagickyi/user/account/Account;->INSTANCE:Lcn/nubia/redmagickyi/user/account/Account;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/user/account/Account;->ClearAccountInfo(Landroid/content/Context;)V

    .line 435
    invoke-static {}, Lcn/nubia/redmagickyi/network/NetworkUtils;->cancleUpdateWebResource()V

    .line 439
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/network/NetworkUtils$6;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/network/NetworkUtils$6;-><init>()V

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->getUserId(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;)V

    return-void
.end method

.method public static queryFriendliness(Ljava/lang/String;Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;)Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;
    .locals 1

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/util/Utils;->delayedUpdateFriendlinessList:Ljava/util/List;

    .line 319
    new-instance v0, Lcn/nubia/redmagickyi/network/NetworkUtils$5;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/network/NetworkUtils$5;-><init>(Ljava/lang/String;Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController$OnQueryCallback;)V

    .line 363
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils$5;->load()Lcn/nubia/redmagickyi/network/controller/BaseQueryFriendValueController;

    move-result-object p0

    return-object p0
.end method

.method public static removeMessages(I)V
    .locals 1

    .line 378
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->removeMessages(I)V

    return-void
.end method

.method public static sendMessage(Landroid/os/Message;)V
    .locals 1

    .line 372
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static sortParam(Ljava/util/Map;)Ljava/lang/StringBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 251
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 252
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 253
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/network/NetConfig;->getServerToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static updateFriendValue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 107
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->isFriendValueUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "updateFriendValue: last friend value update is still querying, forget this request partsName "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 111
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->isFriendValueUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 112
    new-instance v0, Lcn/nubia/redmagickyi/network/NetworkUtils$1;

    invoke-direct {v0, p1, p0, p2}, Lcn/nubia/redmagickyi/network/NetworkUtils$1;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    invoke-virtual {v0, p0, p1}, Lcn/nubia/redmagickyi/network/NetworkUtils$1;->update(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/redmagickyi/network/controller/BaseFriendValueOnlineController;

    return-void
.end method

.method public static updateFriendValueAgain(Ljava/lang/String;I)V
    .locals 1

    .line 297
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mSystemAcctInfo:Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/network/NetworkUtils$4;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/network/NetworkUtils$4;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/NetworkUtils;->updateLoginToken(Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;)Lcn/nubia/redmagickyi/network/manager/LoginManager;

    return-void
.end method

.method public static updateFriendnessValue(Landroid/content/Context;ZLjava/lang/String;ILcn/nubia/redmagickyi/redmagicapp/ControllerBase;)V
    .locals 7

    .line 381
    check-cast p4, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;

    .line 382
    const-string v0, "magick.score"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/SystemPropertiesUtils;->getProp(Ljava/lang/String;I)I

    move-result v0

    .line 383
    const-string v2, ":"

    if-ltz v0, :cond_3

    const/16 v3, 0x38b

    if-gt v0, v3, :cond_3

    .line 385
    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->getFriendValueLevelByScore(I)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcn/nubia/redmagickyi/util/Utils;->setFriendness(Landroid/content/Context;III)V

    .line 386
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getFriendness(Landroid/content/Context;)[I

    move-result-object p0

    .line 387
    sget-object p1, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateFriendnessValue: TEST-MODE, score: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v3, p0, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x2

    aget p0, p0, v3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 390
    sget-object v0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->getFriendness(Landroid/content/Context;)[I

    move-result-object v0

    aget v0, v0, v1

    .line 391
    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->getFriendValueLevelByScore(I)I

    move-result v3

    .line 392
    sget-object v5, Lcn/nubia/redmagickyi/util/Utils;->FRIEND_VALUE_LEVEL_SCORE:[I

    sget-object v6, Lcn/nubia/redmagickyi/util/Utils;->FRIEND_VALUE_LEVEL_SCORE:[I

    array-length v6, v6

    sub-int/2addr v6, p2

    aget v5, v5, v6

    add-int/2addr v5, p2

    if-lt v0, v5, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 397
    :cond_0
    sget-object v5, Lcn/nubia/redmagickyi/util/Utils;->FRIEND_VALUE_LEVEL_SCORE:[I

    aget v3, v5, v3

    add-int/2addr v3, p2

    add-int/2addr p3, v0

    if-ge p3, v3, :cond_1

    sub-int/2addr v3, v0

    .line 400
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    move p3, v1

    goto :goto_1

    .line 403
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    :goto_1
    add-int/2addr v0, p3

    .line 404
    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Utils;->getFriendValueLevelByScore(I)I

    move-result p3

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/2addr p3, p2

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p4, v1, v0, p3, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController;->updateFriendValueLayoutState(ZIILjava/lang/Integer;)V

    goto :goto_2

    :cond_3
    if-ne v0, v1, :cond_7

    if-nez p1, :cond_4

    goto :goto_2

    .line 411
    :cond_4
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 412
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    const/16 p1, 0xbc8

    .line 413
    iput p1, p0, Landroid/os/Message;->what:I

    .line 414
    sget-object p1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mGameSpaceMessageHandler:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;

    const-wide/16 p2, 0x5dc

    invoke-virtual {p1, p0, p2, p3}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceController$GameSpaceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 417
    :cond_5
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "updateFriendnessValue: updateFriendValue "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget-object p0, Lcn/nubia/redmagickyi/util/Utils;->delayedUpdateFriendlinessList:Ljava/util/List;

    if-eqz p0, :cond_6

    .line 420
    sget-object p0, Lcn/nubia/redmagickyi/util/Utils;->delayedUpdateFriendlinessList:Ljava/util/List;

    sget-object p1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 422
    :cond_6
    sget-object p0, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getLoginToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcn/nubia/redmagickyi/network/NetworkUtils;->updateFriendValue(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static updateLoginToken(Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;)Lcn/nubia/redmagickyi/network/manager/LoginManager;
    .locals 1

    .line 366
    new-instance v0, Lcn/nubia/redmagickyi/network/manager/LoginManager;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/network/manager/LoginManager;-><init>(Lcn/nubia/redmagickyi/network/manager/LoginManager$Callback;)V

    .line 367
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/LoginManager;->load()V

    return-object v0
.end method

.method public static updateWebResource()V
    .locals 2

    const/4 v0, 0x0

    .line 89
    invoke-static {v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->cancelLoadList(Z)V

    .line 90
    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->cancelLoadList(Z)V

    .line 91
    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->cancelLoadList(Z)V

    .line 92
    invoke-static {}, Lcn/nubia/redmagickyi/network/NetworkUtils;->cancleUpdateWebResource()V

    .line 93
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->hasNubiaAccounts()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->loadList(Landroid/content/Context;Z)V

    .line 95
    sget-object v1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->loadList(Landroid/content/Context;Z)V

    .line 96
    sget-object v1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mContext:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/livecalender/util/LiveCalenderNetworkManager;->loadList(Landroid/content/Context;Z)V

    .line 97
    invoke-static {}, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->getInstance()Lcn/nubia/redmagickyi/network/manager/WebResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/network/manager/WebResourceManager;->load()V

    :cond_0
    return-void
.end method
