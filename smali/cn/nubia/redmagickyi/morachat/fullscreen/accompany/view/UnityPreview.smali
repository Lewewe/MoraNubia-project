.class public Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;,
        Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$SceneReadyCallback;,
        Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnityAudioActionCallback;
    }
.end annotation


# static fields
.field public static final SCENE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "UnityPreview"


# instance fields
.field private callback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;

.field private isMute:Z

.field private isPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isSpeaking:Z

.field private mContext:Landroid/content/Context;

.field private mSurfaceBackground:Landroid/view/SurfaceView;

.field private mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

.field private mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private modleinitfinish:Z

.field private motionVia:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;",
            ">;"
        }
    .end annotation
.end field

.field private sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$SceneReadyCallback;

.field private unityAudioActionCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnityAudioActionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;Landroid/view/SurfaceView;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->modleinitfinish:Z

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->isPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    .line 84
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    .line 86
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mSurfaceBackground:Landroid/view/SurfaceView;

    .line 87
    new-instance p1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;

    .line 88
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->initBackground()V

    .line 89
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->initUnity()V

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0

    .line 80
    const-string p0, "UnityPreview"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->isPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->switchType()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->modleinitfinish:Z

    return p0
.end method

.method private initBackground()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mSurfaceBackground:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 122
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mSurfaceBackground:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private initUnity()V
    .locals 2

    .line 97
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    sput-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    goto :goto_0

    .line 100
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 104
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setKeepScreenOn(Z)V

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    sget-object v1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->bindUnityPlayer(Lcom/unity3d/player/UnityPlayer;)V

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 109
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 113
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 116
    :cond_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    .line 117
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->init()V

    return-void
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 275
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 276
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 277
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 278
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 279
    const-string v2, "msgID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 280
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const/16 v2, 0x7d9

    if-eq v1, v2, :cond_1

    .line 282
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 284
    :cond_1
    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->parseUnityMotionEnd(I)V

    const/16 v3, 0x7d0

    if-eq v1, v3, :cond_9

    const/16 v3, 0x7d1

    if-eq v1, v3, :cond_8

    const/16 v3, 0x7d7

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_6

    .line 285
    const-string v3, "UnityPreview"

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7da

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 302
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 303
    const-string v2, "isPause"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "unity status:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->parseAudioAction(Ljava/lang/String;)Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 313
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 314
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getMotionID()I

    move-result v2

    sget-object v6, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_NONE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->getMotionId()I

    move-result v6

    if-ne v2, v6, :cond_4

    move v4, v5

    .line 317
    :cond_4
    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->Emotion:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v2, v6, :cond_5

    move v4, v5

    .line 321
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "audioAction.getMotionID() = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getMotionID()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    .line 322
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->unityAudioActionCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnityAudioActionCallback;

    if-eqz v1, :cond_0

    .line 323
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->parseAudioAction(Ljava/lang/String;)Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnityAudioActionCallback;->onUnityAudioActionReady(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto/16 :goto_0

    .line 290
    :cond_6
    iput-boolean v5, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->modleinitfinish:Z

    .line 292
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->changeUnitySkin()V

    .line 294
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v1

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 295
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->switchType()V

    .line 296
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$SceneReadyCallback;

    if-eqz v1, :cond_7

    .line 297
    invoke-interface {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$SceneReadyCallback;->onModelReady()V

    :cond_7
    const/16 v1, 0x64

    .line 299
    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->startPlayMotion(I)V

    goto/16 :goto_0

    .line 307
    :cond_8
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->TouchEvent:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 287
    :cond_9
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->switchScene()V

    goto/16 :goto_0

    .line 330
    :cond_a
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 333
    :cond_b
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method private switchScene()V
    .locals 1

    .line 194
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;-><init>()V

    const/16 v0, 0x3f2

    .line 195
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setMsgID(I)V

    .line 196
    sget-object v0, Lcn/nubia/redmagickyi/unity/util/Scenes;->DIGITAL_HUMAN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setSceneName(Ljava/lang/String;)V

    .line 197
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method private switchType()V
    .locals 2

    const/4 p0, 0x5

    const/4 v0, 0x1

    .line 203
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->searchTypeByScene(IZ)I

    move-result p0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "switch type to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;-><init>()V

    const/16 v1, 0x404

    .line 206
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;->setMsgID(I)V

    .line 207
    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;->setType(I)V

    .line 208
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method


# virtual methods
.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnUnityMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->Log(Ljava/lang/String;)V

    .line 269
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 271
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public changeUnitySkin()V
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->modleinitfinish:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 374
    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->setModleinitfinish(Z)V

    const/4 v0, 0x0

    .line 375
    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->changeSkin(Z)Z

    .line 376
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->switchType()V

    :cond_0
    return-void
.end method

.method public getUnityView()Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;
    .locals 0

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    return-object p0
.end method

.method public hide()V
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->stop()V

    .line 228
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 229
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isModleinitfinish()Z
    .locals 0

    .line 216
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->modleinitfinish:Z

    return p0
.end method

.method public isPortrait(Z)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->isPortrait:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 234
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 235
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

    .line 337
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->isSpeaking:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;)V

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

    .line 251
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$SceneReadyCallback;

    .line 260
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->unityAudioActionCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnityAudioActionCallback;

    .line 262
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 244
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    return-void
.end method

.method public setSceneReadyCallback(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$SceneReadyCallback;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$SceneReadyCallback;

    return-void
.end method

.method public setUnityAudioActionCallback(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnityAudioActionCallback;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->unityAudioActionCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnityAudioActionCallback;

    return-void
.end method

.method public show()V
    .locals 2

    .line 220
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mSurfaceView:Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 221
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->setVisibility(I)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->resume()V

    return-void
.end method

.method public startSpeaking(Ljava/lang/Integer;ZLcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)V
    .locals 1

    const/4 v0, 0x1

    .line 354
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->isSpeaking:Z

    .line 355
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->modleinitfinish:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 356
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 357
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->startPlayMotion(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 361
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 255
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->stop(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method

.method public stopSpeaking()V
    .locals 1

    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->isSpeaking:Z

    .line 369
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;)V

    return-void
.end method

.method public unmute()V
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->isSpeaking:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview;->callback:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;->access$400(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/view/UnityPreview$UnitySurfaceCallback;)V

    :cond_0
    return-void
.end method
