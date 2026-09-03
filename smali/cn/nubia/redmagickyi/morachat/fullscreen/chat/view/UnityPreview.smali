.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview$UnitySurfaceCallback;,
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview$SceneReadyCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnityPreview"

.field private static modleinitfinish:Z = false


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

.field private mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview$SceneReadyCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    .line 59
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->initUnity()V

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0

    .line 53
    const-string p0, "UnityPreview"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->switchType()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->modleinitfinish:Z

    return v0
.end method

.method private initUnity()V
    .locals 3

    .line 63
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    sput-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    goto :goto_0

    .line 66
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 70
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    sget-object v1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->bindUnityPlayer(Lcom/unity3d/player/UnityPlayer;)V

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setZOrderOnTop(Z)V

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview$UnitySurfaceCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview$UnitySurfaceCallback;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview$1;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 80
    :cond_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    .line 81
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

    .line 158
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 159
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 160
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 161
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v2, "msgID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 163
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const/16 v2, 0x7d9

    if-eq v1, v2, :cond_1

    .line 165
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    :cond_1
    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->parseUnityMotionEnd(I)V

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_4

    const/16 v2, 0x7d7

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7da

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 184
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    const-string v2, "isPause"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 186
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

    .line 173
    sput-boolean v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->modleinitfinish:Z

    .line 175
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->changeUnitySkin()V

    .line 177
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 178
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->switchType()V

    .line 179
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview$SceneReadyCallback;

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview$SceneReadyCallback;->onModelReady()V

    goto :goto_0

    .line 170
    :cond_4
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->switchScene()V

    goto :goto_0

    .line 192
    :cond_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 195
    :cond_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method private switchScene()V
    .locals 1

    .line 87
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;-><init>()V

    const/16 v0, 0x3f2

    .line 88
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setMsgID(I)V

    .line 89
    sget-object v0, Lcn/nubia/redmagickyi/unity/util/Scenes;->DIGITAL_HUMAN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setSceneName(Ljava/lang/String;)V

    .line 90
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method private switchType()V
    .locals 2

    const/4 p0, 0x5

    const/4 v0, 0x1

    .line 96
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->searchTypeByScene(IZ)I

    move-result p0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "switch type to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;-><init>()V

    const/16 v1, 0x404

    .line 99
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;->setMsgID(I)V

    .line 100
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;->setType(I)V

    .line 101
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method


# virtual methods
.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnUnityMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->Log(Ljava/lang/String;)V

    .line 152
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public changeUnitySkin()V
    .locals 1

    .line 210
    sget-boolean v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->modleinitfinish:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 211
    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->setModleinitfinish(Z)V

    const/4 v0, 0x0

    .line 212
    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->changeSkin(Z)Z

    .line 213
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->switchType()V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->stop()V

    .line 113
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 114
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 119
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 120
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

    .line 136
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview$SceneReadyCallback;

    .line 145
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 129
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    return-void
.end method

.method public setSceneReadyCallback(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview$SceneReadyCallback;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview$SceneReadyCallback;

    .line 282
    sget-boolean p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->modleinitfinish:Z

    if-eqz p0, :cond_0

    .line 283
    invoke-interface {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview$SceneReadyCallback;->onModelReady()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setVisibility(I)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->resume()V

    return-void
.end method

.method public startSpeaking(I)V
    .locals 0

    .line 199
    sget-boolean p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->modleinitfinish:Z

    if-eqz p0, :cond_0

    .line 200
    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->startPlayMotion(I)V

    .line 202
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->startSpeaking()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 140
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->stop(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method

.method public stopSpeaking()V
    .locals 0

    .line 206
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->stopSpeaking()V

    return-void
.end method
