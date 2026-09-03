.class public Lcn/nubia/redmagickyi/unity/UAMessagePreParser;
.super Ljava/lang/Object;
.source "UAMessagePreParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handleCommonMessage(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x7d9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x7d4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7d5

    if-eq p0, v0, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/motion/UAMotionMessageParser;->parseMotion(Ljava/lang/String;)V

    goto :goto_1

    .line 56
    :cond_1
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/motion/UAMotionMessageParser;->parseAudio(Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_2
    const-class v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    monitor-enter v0

    .line 43
    :try_start_0
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->handleAudioAction(Ljava/lang/String;)V

    .line 44
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 48
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->sendOnBundleUpdate()V

    .line 50
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;->PAD:Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    goto :goto_0

    :cond_4
    sget-object v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;->MOBILE:Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;

    :goto_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->sendDeviceType(Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;)V

    .line 65
    :goto_1
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->onUnityMessage(ILjava/lang/String;)V

    return-void
.end method

.method public static parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 21
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 22
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/16 v1, 0x3e7

    .line 23
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 25
    const-string v3, "msgID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 32
    invoke-static {v1, p0}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->handleCommonMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object p0
.end method

.method public static sendDeviceType(Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;)V
    .locals 2

    .line 82
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType;-><init>()V

    const/16 v1, 0x44c

    .line 83
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType;->setMsgID(I)V

    .line 84
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType;->setType(Lcn/nubia/redmagickyi/unity/messages/UAMessageDeviceType$Type;)V

    .line 85
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method private static sendOnBundleUpdate()V
    .locals 2

    .line 70
    invoke-static {}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;->isBundleRootAvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleLocaleDataManager;->getLocalBundlePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_0
    const-string v0, ""

    .line 73
    :goto_0
    new-instance v1, Lcn/nubia/redmagickyi/unity/messages/UAMessageBundleUpdate;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBundleUpdate;-><init>()V

    .line 74
    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBundleUpdate;->setBundlePath(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcn/nubia/redmagickyi/unity/resource/UnityBundleVersionController;->isMasterBundleVersionV123()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBundleUpdate;->setNeedNewAB(Z)V

    const/16 v0, 0x3f5

    .line 76
    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageBundleUpdate;->setMsgID(I)V

    .line 77
    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method
