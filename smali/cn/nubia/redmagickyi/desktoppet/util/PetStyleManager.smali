.class public Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;
.super Ljava/lang/Object;
.source "PetStyleManager.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "config_desktop_pet"

.field private static final TAG:Ljava/lang/String; = "PetStyleManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcn/nubia/redmagickyi/desktoppet/util/PetConstant;->init()V

    return-void
.end method

.method private getDecryptedContent(Landroid/content/Context;)Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;
    .locals 1

    .line 105
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "config_desktop_pet"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/FileUtils;->getData(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SecretUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-static {p0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;->fromJson(Ljava/lang/String;)Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private saveEncryptContent(Landroid/content/Context;I)V
    .locals 1

    .line 75
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->getDecryptedContent(Landroid/content/Context;)Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;

    move-result-object p0

    if-nez p0, :cond_0

    .line 77
    new-instance p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;-><init>()V

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;->setSkinId(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SecretUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 84
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "config_desktop_pet"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcn/nubia/redmagickyi/util/FileUtils;->setData(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private saveEncryptContent(Landroid/content/Context;Z)V
    .locals 1

    .line 88
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->getDecryptedContent(Landroid/content/Context;)Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;

    move-result-object p0

    if-nez p0, :cond_0

    .line 90
    new-instance p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;-><init>()V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;->setNeedRemind(Z)V

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SecretUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "config_desktop_pet"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcn/nubia/redmagickyi/util/FileUtils;->setData(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public findPetStyle(I)Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;
    .locals 2

    .line 52
    sget-object p0, Lcn/nubia/redmagickyi/desktoppet/util/PetConstant;->petStyleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    .line 53
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getSkinId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    .line 57
    :cond_1
    sget-object p0, Lcn/nubia/redmagickyi/desktoppet/util/PetConstant;->petStyleList:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    return-object p0
.end method

.method public declared-synchronized getPetStyle()Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;
    .locals 5

    const-string v0, "find pet style failed, "

    monitor-enter p0

    .line 27
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/desktoppet/util/PetConstant;->petStyleList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->getDecryptedContent(Landroid/content/Context;)Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;->getSkinId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 30
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->findPetStyle(I)Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 32
    :try_start_2
    const-string v3, "PetStyleManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPetStyleList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object p0, Lcn/nubia/redmagickyi/desktoppet/util/PetConstant;->petStyleList:Ljava/util/List;

    return-object p0
.end method

.method public declared-synchronized isDesktopPetNeedRemindSetWallPaper()Z
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->getDecryptedContent(Landroid/content/Context;)Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    sget-boolean v0, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;->DEFAULT_NEED_REMIND:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean$SavedContent;->isNeedRemind()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDesktopPetNeedRemindSetWallPaper(Z)V
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->saveEncryptContent(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPetStyle(IZ)V
    .locals 2

    monitor-enter p0

    .line 42
    :try_start_0
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangePetSkin;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangePetSkin;-><init>()V

    const/16 v1, 0x403

    .line 43
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangePetSkin;->setMsgID(I)V

    .line 44
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangePetSkin;->setSkinId(I)V

    .line 45
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    if-eqz p2, :cond_0

    .line 47
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->saveEncryptContent(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPetStyle(Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;Z)V
    .locals 0

    monitor-enter p0

    .line 38
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/desktoppet/bean/PetStyleBean;->getSkinId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/desktoppet/util/PetStyleManager;->setPetStyle(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
