.class public Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;
.super Ljava/lang/Object;
.source "ChargeStyleManager.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "config_powercharge"

.field private static final TAG:Ljava/lang/String; = "ChargeStyleManager"

.field private static instance:Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcn/nubia/redmagickyi/powercharge/util/ChargeConstant;->init()V

    return-void
.end method

.method private getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 78
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "config_powercharge"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/FileUtils;->getData(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SecretUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-static {p2}, Lcn/nubia/redmagickyi/util/SecretUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 71
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "config_powercharge"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcn/nubia/redmagickyi/util/FileUtils;->setData(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public findChargeStyle(I)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;
    .locals 2

    .line 53
    sget-object p0, Lcn/nubia/redmagickyi/powercharge/util/ChargeConstant;->chargeStyleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    .line 54
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getModelId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    .line 58
    :cond_1
    sget-object p0, Lcn/nubia/redmagickyi/powercharge/util/ChargeConstant;->chargeStyleList:Ljava/util/List;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    return-object p0
.end method

.method public declared-synchronized getChargeStyle()Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;
    .locals 5

    const-string v0, "find charge style failed, "

    monitor-enter p0

    .line 28
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/powercharge/util/ChargeConstant;->chargeStyleList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :try_start_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 31
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->findChargeStyle(I)Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 33
    :try_start_2
    const-string v3, "ChargeStyleManager"

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

    .line 35
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChargeStyleList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;",
            ">;"
        }
    .end annotation

    .line 62
    sget-object p0, Lcn/nubia/redmagickyi/powercharge/util/ChargeConstant;->chargeStyleList:Ljava/util/List;

    return-object p0
.end method

.method public declared-synchronized setChargeStyle(IZ)V
    .locals 2

    monitor-enter p0

    .line 43
    :try_start_0
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeChargeSkin;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeChargeSkin;-><init>()V

    const/16 v1, 0x402

    .line 44
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeChargeSkin;->setMsgID(I)V

    .line 45
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeChargeSkin;->setType(I)V

    .line 46
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    if-eqz p2, :cond_0

    .line 48
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setChargeStyle(Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;Z)V
    .locals 0

    monitor-enter p0

    .line 39
    :try_start_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/powercharge/bean/ChargeStyleBean;->getModelId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/powercharge/util/ChargeStyleManager;->setChargeStyle(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
