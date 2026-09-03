.class public Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;
.super Ljava/lang/Object;
.source "OpenAntiAliasingManager.java"


# static fields
.field private static final CLOSE:Ljava/lang/String; = "close"

.field private static final FILE_NAME:Ljava/lang/String; = "config_open_anti"

.field private static final OPEN:Ljava/lang/String; = "open"

.field private static final TAG:Ljava/lang/String; = "OpenAntiAliasingManager"

.field private static instance:Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ChangeOpenAntiAliasing(Z)V
    .locals 1

    .line 73
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAOpenAntiAliasing;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAOpenAntiAliasing;-><init>()V

    const/16 v0, 0x400

    .line 74
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAOpenAntiAliasing;->setMsgID(I)V

    .line 75
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAOpenAntiAliasing;->setOpen(Z)V

    .line 76
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method private getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    .line 46
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "config_open_anti"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/FileUtils;->getData(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/util/SecretUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 48
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object p1

    const-string v0, "679"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object p1

    const-string v0, "709"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object p1

    const-string v0, "729"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object p1

    const-string v0, "769"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object p1

    const-string v0, "779"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object p1

    const-string v0, "789"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object p1

    const-string v0, "799"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getDevice()Ljava/lang/String;

    move-result-object p1

    const-string v0, "809"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    const-string p0, "open"

    return-object p0

    .line 49
    :cond_1
    :goto_0
    const-string p0, "close"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object p0
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;
    .locals 1

    .line 24
    sget-object v0, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->instance:Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->instance:Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    .line 27
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->instance:Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;

    return-object v0
.end method

.method private saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-static {p2}, Lcn/nubia/redmagickyi/util/SecretUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 69
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "config_open_anti"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcn/nubia/redmagickyi/util/FileUtils;->setData(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getOpenAntiAliasing()Z
    .locals 4

    const-string v0, "getOpenAntiAliasing error!!"

    monitor-enter p0

    .line 32
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    const-string v2, "open"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 36
    :try_start_2
    const-string v2, "OpenAntiAliasingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 39
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOpenAntiAliasing(ZZ)V
    .locals 2

    const-string v0, ""

    monitor-enter p0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 80
    :try_start_0
    const-string p1, "open"

    goto :goto_0

    :cond_0
    const-string p1, "close"

    :goto_0
    if-eqz p2, :cond_1

    .line 82
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->getOpenAntiAliasing()Z

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/util/OpenAntiAliasingManager;->ChangeOpenAntiAliasing(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
