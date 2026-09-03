.class public Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;
.super Ljava/lang/Object;
.source "PoseDatabaseManager.java"


# instance fields
.field private mImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

.field private mSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBgUri()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->mSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v0, "other_bg"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getStringCol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentLiveType()I
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentScene()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getScenceType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getCurrentScene()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->mSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v0, "ar_image_item"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getStringCol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentUnitySceneName()Ljava/lang/String;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->getCurrentScene()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getScenceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initEnv(Landroid/content/Context;)Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;
    .locals 1

    .line 13
    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->mSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    .line 14
    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->mImageDataManager:Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    return-object p0
.end method

.method public isFaceOpen()Z
    .locals 1

    .line 19
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->mSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v0, "face_open"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLiveGreenScreen()Z
    .locals 1

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->mSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v0, "green_bg_open"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUsingFaceIDFront()Z
    .locals 1

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->mSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v0, "face_camera_id"

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->getIntCol(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setCurrentScene(Ljava/lang/String;)V
    .locals 1

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->mSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    const-string v0, "ar_image_item"

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceOpenStatus(Z)V
    .locals 1

    .line 23
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->mSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "face_open"

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUsingFaceID(Z)V
    .locals 1

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/pc/manager/PoseDatabaseManager;->mSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "face_camera_id"

    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/database/RedMagicARSettingDataManager;->UpdateARSettingDataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
