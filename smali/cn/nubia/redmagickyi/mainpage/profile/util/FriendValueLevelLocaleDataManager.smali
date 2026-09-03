.class public Lcn/nubia/redmagickyi/mainpage/profile/util/FriendValueLevelLocaleDataManager;
.super Ljava/lang/Object;
.source "FriendValueLevelLocaleDataManager.java"


# static fields
.field public static final LEVEL_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FriendValueLevelLocaleDataManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 102
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "config_friend_level"

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

    .line 104
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized getFriendLevelByAccount(Landroid/content/Context;)I
    .locals 4

    const-class v0, Lcn/nubia/redmagickyi/mainpage/profile/util/FriendValueLevelLocaleDataManager;

    monitor-enter v0

    .line 62
    :try_start_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getNubiaUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/profile/util/FriendValueLevelLocaleDataManager;->getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 69
    :try_start_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 71
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->getList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;

    .line 76
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;->getLevel()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    .line 85
    :goto_1
    const-string v1, "FriendValueLevelLocaleDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFriendLevelByAccount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 91
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/SecretUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "config_friend_level"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/FileUtils;->setData(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized saveFriendLevel(Landroid/content/Context;I)V
    .locals 6

    const-class v0, Lcn/nubia/redmagickyi/mainpage/profile/util/FriendValueLevelLocaleDataManager;

    monitor-enter v0

    .line 20
    :try_start_0
    const-string v1, "FriendValueLevelLocaleDataManager"

    const-string v2, "saveFriendLevel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/Utils;->getNubiaUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/profile/util/FriendValueLevelLocaleDataManager;->getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    .line 28
    :try_start_1
    invoke-static {v2}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catch_0
    :try_start_2
    const-string v2, "FriendValueLevelLocaleDataManager"

    const-string v3, "failed load last saved config, may hasn\'t config?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v4, :cond_2

    .line 34
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;

    .line 35
    invoke-virtual {v3}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    invoke-virtual {v3, p1}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;->setLevel(I)V

    goto :goto_1

    .line 42
    :cond_1
    new-instance v2, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;

    invoke-direct {v2, p1, v1}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v2}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->addData(Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;)V

    goto :goto_1

    .line 46
    :cond_2
    new-instance v4, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;-><init>()V

    .line 47
    new-instance v2, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;

    invoke-direct {v2, p1, v1}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v2}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->addData(Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;)V

    goto :goto_1

    .line 51
    :cond_3
    new-instance v4, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;-><init>()V

    .line 52
    new-instance v2, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;

    invoke-direct {v2, p1, v1}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v2}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->addData(Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline$Data;)V

    .line 53
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/profile/util/FriendValueLevelLocaleDataManager;->saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 57
    invoke-virtual {v4}, Lcn/nubia/redmagickyi/mainpage/profile/bean/LevelConfigOnline;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/profile/util/FriendValueLevelLocaleDataManager;->saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
