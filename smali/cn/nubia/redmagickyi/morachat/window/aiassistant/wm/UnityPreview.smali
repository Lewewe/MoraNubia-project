.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;,
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$SceneReadyCallback;
    }
.end annotation


# static fields
.field public static final SCENE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "UnityPreview"


# instance fields
.field private callback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;

.field protected isLargeIcon:Z

.field private isMute:Z

.field private isSpeaking:Z

.field private mContext:Landroid/content/Context;

.field private mSurfaceIconPreview:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;

.field private mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

.field private mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private modleinitfinish:Z

.field private sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$SceneReadyCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->modleinitfinish:Z

    .line 68
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    .line 70
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceIconPreview:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;

    .line 71
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;

    .line 72
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->initUnity()V

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0

    .line 64
    const-string p0, "UnityPreview"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->switchType()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->modleinitfinish:Z

    return p0
.end method

.method private getSurfaceSize(Z)[F
    .locals 2

    .line 118
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_43_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 119
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_48_dp:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    if-nez p1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    mul-float/2addr p0, p1

    div-float/2addr p0, v1

    :cond_0
    const/4 p1, 0x2

    .line 124
    new-array p1, p1, [F

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v0, 0x1

    aput p0, p1, v0

    return-object p1
.end method

.method private initUnity()V
    .locals 2

    .line 76
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    sput-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    goto :goto_0

    .line 79
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 83
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setZOrderOnTop(Z)V

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    sget-object v1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->bindUnityPlayer(Lcom/unity3d/player/UnityPlayer;)V

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 90
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 93
    :cond_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    .line 94
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->init()V

    return-void
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 237
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 238
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 239
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 240
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 241
    const-string v2, "msgID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 242
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const/16 v2, 0x7d9

    if-eq v1, v2, :cond_0

    .line 244
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 246
    :cond_0
    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->parseUnityMotionEnd(I)V

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_4

    const/16 v2, 0x7d7

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7da

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 270
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 271
    const-string v2, "isPause"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unity status:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnityPreview"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 253
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->modleinitfinish:Z

    .line 254
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->changeUnitySkin()V

    .line 256
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 257
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->switchType()V

    .line 258
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$SceneReadyCallback;

    if-eqz v1, :cond_3

    .line 259
    invoke-interface {v1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$SceneReadyCallback;->onModelReady()V

    .line 262
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 249
    :cond_4
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->switchScene()V

    goto :goto_0

    .line 278
    :cond_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 281
    :cond_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method private switchScene()V
    .locals 1

    .line 100
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;-><init>()V

    const/16 v0, 0x3f2

    .line 101
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setMsgID(I)V

    .line 102
    sget-object v0, Lcn/nubia/redmagickyi/unity/util/Scenes;->DIGITAL_HUMAN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setSceneName(Ljava/lang/String;)V

    .line 103
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method private switchType()V
    .locals 2

    const/4 p0, 0x4

    const/4 v0, 0x1

    .line 109
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->searchTypeByScene(IZ)I

    move-result p0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "switch type to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;-><init>()V

    const/16 v1, 0x404

    .line 112
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;->setMsgID(I)V

    .line 113
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;->setType(I)V

    .line 114
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method


# virtual methods
.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnUnityMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->Log(Ljava/lang/String;)V

    .line 231
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public changeUnitySkin()V
    .locals 4

    .line 318
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceIconPreview:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->refreshUI()V

    .line 319
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->modleinitfinish:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 320
    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->setModleinitfinish(Z)V

    const/4 v0, 0x0

    .line 321
    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->changeSkin(Z)Z

    .line 322
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->switchType()V

    .line 323
    const-string v0, "UnityPreview"

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isUnityModelSpeaking(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->stop()V

    .line 192
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 193
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isModleinitfinish()Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->modleinitfinish:Z

    return p0
.end method

.method public isShowing()Z
    .locals 1

    .line 198
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 199
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public mute()V
    .locals 1

    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->isMute:Z

    .line 286
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->isSpeaking:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;->access$100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;)V

    :cond_0
    return-void
.end method

.method public onUnityPlayerQuitted()V
    .locals 0

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    .line 215
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$SceneReadyCallback;

    .line 224
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 208
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setKeepScreenOn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public setLargeIcon(Z)V
    .locals 9

    .line 128
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->isLargeIcon:Z

    .line 129
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->getSurfaceSize(Z)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 130
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    const/4 v5, 0x4

    .line 133
    invoke-static {v5, v2, v4}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getAvatarLayoutParams(IFF)[F

    move-result-object v5

    if-eqz v5, :cond_0

    .line 135
    aget v2, v5, v1

    .line 136
    aget v4, v5, v3

    const/4 v6, 0x2

    .line 137
    aget v5, v5, v6

    goto :goto_0

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p1, :cond_1

    .line 141
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v6, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1p5_dp:I

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move v6, p1

    move p1, v1

    goto :goto_1

    .line 143
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v6, Lcn/nubia/redmagickyi/main/R$dimen;->ns_f9p2_dp:I

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 144
    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcn/nubia/redmagickyi/main/R$dimen;->ns_f8_dp:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_1
    float-to-int v2, v2

    float-to-int v4, v4

    .line 148
    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 149
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v8, v2, :cond_2

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v8, v4, :cond_2

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, p1, :cond_2

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v8, v6, :cond_3

    .line 150
    :cond_2
    iput v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 151
    iput v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 152
    iput p1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 153
    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 154
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v2, v7}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    :cond_3
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getScaleX()F

    move-result v2

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_4

    .line 157
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v2, v5}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setScaleX(F)V

    .line 158
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v2, v5}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setScaleY(F)V

    .line 161
    :cond_4
    aget v1, v0, v1

    float-to-int v1, v1

    .line 162
    aget v0, v0, v3

    float-to-int v0, v0

    .line 163
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceIconPreview:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 164
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v3, v1, :cond_5

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v3, v0, :cond_5

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v3, p1, :cond_5

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v3, v6, :cond_6

    .line 165
    :cond_5
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 166
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 167
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 168
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 169
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceIconPreview:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;

    invoke-virtual {p1, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    :cond_6
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceIconPreview:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconPreview;->refreshUI()V

    return-void
.end method

.method public setSceneReadyCallback(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$SceneReadyCallback;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$SceneReadyCallback;

    return-void
.end method

.method public show()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setVisibility(I)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->resume()V

    return-void
.end method

.method public startSpeaking(IZ)V
    .locals 0

    const/4 p1, 0x1

    .line 299
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->isSpeaking:Z

    .line 304
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->isMute:Z

    if-eqz p2, :cond_0

    .line 306
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;->access$100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 219
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->stop(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method

.method public stopSpeaking()V
    .locals 1

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->isSpeaking:Z

    .line 314
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;->access$100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;)V

    return-void
.end method

.method public unmute()V
    .locals 1

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->isMute:Z

    .line 293
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->isSpeaking:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;->access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/wm/UnityPreview$UnitySurfaceCallback;)V

    :cond_0
    return-void
.end method
