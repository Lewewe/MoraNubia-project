.class public Lcn/nubia/redmagickyi/unity/util/FrameRateManager;
.super Ljava/lang/Object;
.source "FrameRateManager.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "config_rate"

.field public static final FRAME_RATE_30:I = 0x1e

.field public static final FRAME_RATE_60:I = 0x3c

.field private static final RATE_LIST:[I

.field private static final TAG:Ljava/lang/String; = "FrameRateManager"

.field private static volatile instance:Lcn/nubia/redmagickyi/unity/util/FrameRateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x1e

    const/16 v1, 0x3c

    .line 25
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->RATE_LIST:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private changeFrameRate(I)V
    .locals 1

    .line 72
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFrameRate;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFrameRate;-><init>()V

    const/16 v0, 0x3fd

    .line 73
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFrameRate;->setMsgID(I)V

    .line 74
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeFrameRate;->setFrameRate(I)V

    .line 75
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method private getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 91
    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "config_rate"

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

    .line 93
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;
    .locals 2

    .line 30
    sget-object v0, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->instance:Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->instance:Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;-><init>()V

    sput-object v1, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->instance:Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->instance:Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    return-object v0
.end method

.method private saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 80
    invoke-static {p2}, Lcn/nubia/redmagickyi/util/SecretUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 84
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string v0, "config_rate"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lcn/nubia/redmagickyi/util/FileUtils;->setData(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getFrameRate()I
    .locals 5

    monitor-enter p0

    .line 41
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->RATE_LIST:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 42
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getDecryptedContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 45
    :goto_0
    sget-object v3, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->RATE_LIST:[I

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 46
    aget v3, v3, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :catch_0
    :try_start_2
    const-string v1, "FrameRateManager"

    const-string v2, "getFrameRate failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    :cond_1
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFrameRate(IZ)V
    .locals 4

    monitor-enter p0

    .line 58
    :try_start_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->RATE_LIST:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 59
    :goto_0
    sget-object v2, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->RATE_LIST:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 60
    aget v2, v2, v1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_1
    if-eqz p2, :cond_2

    .line 66
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->saveEncryptContent(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->changeFrameRate(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
