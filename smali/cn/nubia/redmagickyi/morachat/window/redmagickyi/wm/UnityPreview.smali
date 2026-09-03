.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;,
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$SceneReadyCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnityPreview"


# instance fields
.field private callback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;

.field private isMute:Z

.field private isSpeaking:Z

.field private mContext:Landroid/content/Context;

.field private mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

.field private mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private modleinitfinish:Z

.field private sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$SceneReadyCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->modleinitfinish:Z

    .line 62
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    .line 64
    new-instance p1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;

    .line 65
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->initUnity()V

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0

    .line 58
    const-string p0, "UnityPreview"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->switchType()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->modleinitfinish:Z

    return p0
.end method

.method private initUnity()V
    .locals 2

    .line 69
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    sput-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 76
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setZOrderOnTop(Z)V

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    sget-object v1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->bindUnityPlayer(Lcom/unity3d/player/UnityPlayer;)V

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 83
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 86
    :cond_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    .line 87
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

    .line 173
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 174
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 175
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 176
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 177
    const-string v2, "msgID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 178
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const/16 v2, 0x7d9

    if-eq v1, v2, :cond_1

    .line 180
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    :cond_1
    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->parseUnityMotionEnd(I)V

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_4

    const/16 v2, 0x7d7

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7da

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 199
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    const-string v2, "isPause"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 201
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

    :cond_3
    const/4 v1, 0x1

    .line 189
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->modleinitfinish:Z

    .line 190
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->changeUnitySkin()V

    .line 192
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 193
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->switchType()V

    .line 194
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$SceneReadyCallback;

    if-eqz v1, :cond_0

    .line 195
    invoke-interface {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$SceneReadyCallback;->onModelReady()V

    goto :goto_0

    .line 185
    :cond_4
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->switchScene()V

    goto :goto_0

    .line 207
    :cond_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 210
    :cond_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method private switchScene()V
    .locals 1

    .line 93
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;-><init>()V

    const/16 v0, 0x3f2

    .line 94
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setMsgID(I)V

    .line 95
    sget-object v0, Lcn/nubia/redmagickyi/unity/util/Scenes;->DIGITAL_HUMAN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setSceneName(Ljava/lang/String;)V

    .line 96
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method private switchType()V
    .locals 2

    const/4 p0, 0x4

    const/4 v0, 0x1

    .line 102
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->searchTypeByScene(IZ)I

    move-result p0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "switch type to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;-><init>()V

    const/16 v1, 0x404

    .line 105
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;->setMsgID(I)V

    .line 106
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;->setType(I)V

    .line 107
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method


# virtual methods
.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnUnityMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->Log(Ljava/lang/String;)V

    .line 167
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public changeUnitySkin()V
    .locals 4

    .line 247
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->modleinitfinish:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 248
    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->setModleinitfinish(Z)V

    const/4 v0, 0x0

    .line 249
    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->changeSkin(Z)Z

    .line 250
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->switchType()V

    .line 251
    const-string v0, "UnityPreview"

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isUnityModelSpeaking(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->stop()V

    .line 128
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 129
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isModleinitfinish()Z
    .locals 0

    .line 111
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->modleinitfinish:Z

    return p0
.end method

.method public isShowing()Z
    .locals 1

    .line 134
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 135
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

    .line 214
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->isMute:Z

    .line 215
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->isSpeaking:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;->access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;)V

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

    .line 151
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$SceneReadyCallback;

    .line 160
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 144
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setKeepScreenOn: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public setSceneReadyCallback(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$SceneReadyCallback;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$SceneReadyCallback;

    return-void
.end method

.method public show()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setVisibility(I)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->resume()V

    return-void
.end method

.method public startSpeaking(IZ)V
    .locals 0

    const/4 p1, 0x1

    .line 228
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->isSpeaking:Z

    .line 233
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->isMute:Z

    if-eqz p2, :cond_0

    .line 235
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;->access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;->access$200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->stop(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method

.method public stopSpeaking()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->isSpeaking:Z

    .line 243
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;->access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;)V

    return-void
.end method

.method public unmute()V
    .locals 1

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->isMute:Z

    .line 222
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->isSpeaking:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;->access$200(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/wm/UnityPreview$UnitySurfaceCallback;)V

    :cond_0
    return-void
.end method
