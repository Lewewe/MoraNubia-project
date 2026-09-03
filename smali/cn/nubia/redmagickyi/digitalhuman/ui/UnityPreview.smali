.class public abstract Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;,
        Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnityAudioActionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnityPreview"


# instance fields
.field private callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

.field private currentFocusLen:Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;

.field currentSceneId:Ljava/lang/Integer;

.field private delayedModleinitfinish:Z

.field private delayedMotionMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private isMute:Z

.field private isRendered:Z

.field private isSpeaking:Z

.field private mContext:Landroid/content/Context;

.field private mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private modleinitfinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final motionMsgLock:Ljava/lang/Object;

.field private motionVia:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;",
            ">;"
        }
    .end annotation
.end field

.field private proxyUnityMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

.field private scene:I

.field private unityAudioActionCallback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnityAudioActionCallback;

.field private unityMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 75
    iput v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->scene:I

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->modleinitfinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->isRendered:Z

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    .line 420
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->delayedModleinitfinish:Z

    .line 421
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->delayedMotionMessages:Ljava/util/List;

    .line 471
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->motionMsgLock:Ljava/lang/Object;

    .line 496
    new-instance v0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$2;-><init>(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->proxyUnityMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    .line 96
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->mContext:Landroid/content/Context;

    .line 97
    new-instance p1, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;-><init>(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    .line 98
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->initUnity()V

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0

    .line 88
    const-string p0, "UnityPreview"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->modleinitfinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->delayedModleinitfinish:Z

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->handleDelayedMotionMessages()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->unityMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    .line 69
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->switchType(Z)V

    return-void
.end method

.method private createMotionMessage(ILandroid/util/Pair;)Landroid/os/Message;
    .locals 1

    .line 473
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->motionMsgLock:Ljava/lang/Object;

    monitor-enter p0

    .line 474
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 475
    iput p1, v0, Landroid/os/Message;->what:I

    .line 476
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 477
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 478
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private handleDelayedMotionMessages()V
    .locals 2

    .line 423
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->delayedModleinitfinish:Z

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->delayedMotionMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 425
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->handleMotionMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 427
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->delayedMotionMessages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method private handleMotionMessage(Landroid/os/Message;)V
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->delayedModleinitfinish:Z

    if-eqz v0, :cond_4

    .line 444
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 461
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->stopPlayMotion()V

    goto :goto_0

    .line 457
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->pause()V

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->resume()V

    goto :goto_0

    .line 446
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/util/Pair;

    if-eqz v0, :cond_5

    .line 447
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 448
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    .line 449
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 450
    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->startPlayMotion(ILcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)V

    goto :goto_0

    .line 467
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->delayedMotionMessages:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method private initUnity()V
    .locals 2

    .line 102
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    sput-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    goto :goto_0

    .line 105
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 107
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 110
    :cond_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    .line 111
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->init()V

    .line 112
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->proxyUnityMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->setOnModelMotionListener(Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;)V

    return-void
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 240
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 241
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 242
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 243
    const-string v2, "msgID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 244
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const/16 v2, 0x7d1

    const/16 v3, 0x7d9

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v1, v2, :cond_1

    .line 247
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v8, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->TouchEvent:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    if-ne v1, v3, :cond_9

    .line 250
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->parseAudioAction(Ljava/lang/String;)Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 251
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v8

    if-ne v8, v6, :cond_9

    .line 252
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getAction()I

    move-result v8

    if-nez v8, :cond_8

    .line 253
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getMotionID()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getMotionID()I

    move-result v8

    if-nez v8, :cond_2

    goto :goto_4

    .line 256
    :cond_2
    iget v8, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->scene:I

    invoke-static {v8}, Lcn/nubia/redmagickyi/digitalhuman/utils/DigitalHumanConstants$Scene;->isAvatarScene(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 258
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->stopMotion()V

    :cond_3
    :goto_1
    move v2, v6

    goto :goto_6

    .line 261
    :cond_4
    invoke-static {v4, v7, v7, v7}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->setUnityMotionState(ILjava/lang/Integer;Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V

    .line 263
    iget-object v8, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    sget-object v8, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->TouchEvent:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    .line 264
    :goto_2
    sget-object v9, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->TouchEvent:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    if-ne v9, v8, :cond_6

    .line 266
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcn/nubia/redmagickyi/digitalhuman/mapper/TouchBodyPartNameMapper;->getPartNameByAudioPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_6
    move-object v9, v7

    .line 268
    :goto_3
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getMotionID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v2, v8, v9}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->setUnityMotionState(ILjava/lang/Integer;Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V

    .line 269
    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->Emotion:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    iget-object v8, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eq v2, v8, :cond_3

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->Care:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    iget-object v8, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eq v2, v8, :cond_3

    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->Specify:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    iget-object v8, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-ne v2, v8, :cond_9

    goto :goto_1

    .line 254
    :cond_7
    :goto_4
    invoke-static {v4, v7, v7, v7}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->setUnityMotionState(ILjava/lang/Integer;Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V

    goto :goto_5

    .line 275
    :cond_8
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_9

    .line 276
    invoke-static {v4, v7, v7, v7}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->setUnityMotionState(ILjava/lang/Integer;Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V

    :cond_9
    :goto_5
    move v2, v5

    .line 280
    :goto_6
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "shouldInjectEvent = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UnityPreview"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_10

    if-ne v1, v3, :cond_a

    .line 284
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->parseAudioAction(Ljava/lang/String;)Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    move-result-object v2

    .line 285
    invoke-virtual {v2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v8

    if-ne v8, v6, :cond_a

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getAction()I

    move-result v8

    if-nez v8, :cond_a

    .line 287
    sget-object p1, Lcn/nubia/redmagickyi/util/AudioStreamType;->STREAM_ASSISTANT:Lcn/nubia/redmagickyi/util/AudioStreamType;

    iget-object p1, p1, Lcn/nubia/redmagickyi/util/AudioStreamType;->key:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->setParams(Ljava/lang/String;)V

    .line 288
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 291
    :cond_a
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_f

    const/16 v2, 0x7d7

    if-eq v1, v2, :cond_e

    const/16 v2, 0x7de

    if-eq v1, v2, :cond_d

    if-eq v1, v3, :cond_c

    const/16 v2, 0x7da

    if-eq v1, v2, :cond_b

    goto/16 :goto_0

    .line 318
    :cond_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 319
    const-string v2, "isPause"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unity status:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 323
    :cond_c
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->unityAudioActionCallback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnityAudioActionCallback;

    if-eqz v1, :cond_0

    .line 324
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->parseAudioAction(Ljava/lang/String;)Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnityAudioActionCallback;->onUnityAudioActionReady(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto/16 :goto_0

    .line 328
    :cond_d
    invoke-static {v4, v7, v7, v7}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->setUnityMotionState(ILjava/lang/Integer;Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    :cond_e
    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->modleinitfinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 302
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->changeUnitySkin()V

    .line 304
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v1

    const/16 v2, 0x3c

    invoke-virtual {v1, v2, v5}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 305
    invoke-direct {p0, v5}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->switchType(Z)V

    .line 306
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->onModelReady()V

    .line 308
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$1;-><init>(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 297
    :cond_f
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->switchScene()V

    goto/16 :goto_0

    :cond_10
    return-void

    .line 334
    :cond_11
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 337
    :cond_12
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method private varargs removeMotionMessage([I)V
    .locals 5

    .line 431
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->delayedMotionMessages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 432
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 434
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    .line 435
    iget v4, v0, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_1

    .line 436
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private switchScene()V
    .locals 1

    .line 118
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;-><init>()V

    const/16 v0, 0x3f2

    .line 119
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setMsgID(I)V

    .line 120
    sget-object v0, Lcn/nubia/redmagickyi/unity/util/Scenes;->DIGITAL_HUMAN:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setSceneName(Ljava/lang/String;)V

    .line 121
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method private switchType(Z)V
    .locals 3

    .line 128
    iget v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->scene:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->searchTypeByScene(IZ)I

    move-result v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switch type to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", force? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnityPreview"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x404

    if-nez p1, :cond_2

    .line 131
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getCurrentSkin()I

    move-result p1

    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->is2D(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->scene:I

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/DigitalHumanConstants$Scene;->isFullbodyScene(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 133
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->currentSceneId:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 134
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->modleinitfinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->currentSceneId:Ljava/lang/Integer;

    .line 137
    :cond_1
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;-><init>()V

    .line 138
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;->setMsgID(I)V

    .line 139
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;->setType(I)V

    .line 140
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 141
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->updateModelBackground()V

    goto :goto_0

    .line 144
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->modleinitfinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->currentSceneId:Ljava/lang/Integer;

    .line 147
    :cond_3
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;-><init>()V

    .line 148
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;->setMsgID(I)V

    .line 149
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantAdapter;->setType(I)V

    .line 150
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 151
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->updateModelBackground()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public OnUnityMessage(Ljava/lang/String;)V
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "motionVia: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OnUnityMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->Log(Ljava/lang/String;)V

    .line 233
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->parseMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public changeUnityScene(I)V
    .locals 2

    .line 576
    iget v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->scene:I

    if-ne v0, p1, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getRecentType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getRecentType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->searchTypeByScene(IZ)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 577
    :cond_0
    iput p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->scene:I

    .line 578
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->changeUnitySkin()V

    :cond_1
    return-void
.end method

.method public changeUnitySkin()V
    .locals 4

    .line 583
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->onUnitySkinChanged()V

    .line 584
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->modleinitfinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 585
    iget v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->scene:I

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/DigitalHumanConstants$Scene;->isAvatarScene(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->stopMotion()V

    :cond_0
    const/4 v0, 0x1

    .line 589
    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->setModleinitfinish(Z)V

    const/4 v0, 0x0

    .line 590
    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->changeSkin(Z)Z

    move-result v0

    .line 591
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->switchType(Z)V

    .line 592
    const-string v0, "UnityPreview"

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->getCurrentSpeakVia(Ljava/lang/String;)Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 594
    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->Client:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    if-ne v2, v1, :cond_1

    .line 596
    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->isUnityModelSpeaking(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$3;-><init>(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->getCurrentSpeakVia(Ljava/lang/String;)Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->access$300(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getModelFocusLen()Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;
    .locals 0

    .line 383
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->currentFocusLen:Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;

    return-object p0
.end method

.method public getScene()I
    .locals 0

    .line 156
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->scene:I

    return p0
.end method

.method public isHumanRendered()Z
    .locals 0

    .line 168
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->isRendered:Z

    return p0
.end method

.method public isModleinitfinish()Z
    .locals 0

    .line 160
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->modleinitfinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public mute()V
    .locals 2

    const/4 v0, 0x1

    .line 349
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->isMute:Z

    .line 350
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->isSpeaking:Z

    if-eqz v1, :cond_0

    .line 351
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    const-string v1, "UnityPreview"

    invoke-static {v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->getCurrentSpeakVia(Ljava/lang/String;)Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->access$300(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V

    .line 353
    :cond_0
    invoke-static {v0, v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->muteVolume(ZZ)V

    return-void
.end method

.method public abstract onModelReady()V
.end method

.method public onSurfaceChanged(Landroid/view/Surface;)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->surfaceChanged(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/Surface;)V
    .locals 0

    .line 200
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->surfaceCreated(Landroid/view/Surface;)V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/Surface;)V
    .locals 0

    .line 208
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->surfaceDestroyed(Landroid/view/Surface;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez v0, :cond_0

    .line 213
    const-string p0, "UnityPreview"

    const-string p1, "onTouchEvent failed. because UnityPlayer has not inited."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 216
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isMyOSRom()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isNebulaOSRom()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 225
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    goto :goto_1

    .line 218
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 222
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    :cond_4
    :goto_1
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

.method public abstract onUnitySkinChanged()V
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 185
    invoke-static {v0, v1, v1, v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->setUnityMotionState(ILjava/lang/Integer;Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public pauseMotion()V
    .locals 2

    .line 410
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->handleDelayedMotionMessages()V

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 411
    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->removeMotionMessage([I)V

    const/4 v0, 0x0

    .line 412
    invoke-direct {p0, v1, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->createMotionMessage(ILandroid/util/Pair;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->handleMotionMessage(Landroid/os/Message;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->unityAudioActionCallback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnityAudioActionCallback;

    .line 193
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    if-eqz p0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->shutdownNow()V

    .line 196
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method public resume()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    invoke-static {v0, v1, v1, v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->setUnityMotionState(ILjava/lang/Integer;Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public resumeMotion()V
    .locals 2

    .line 404
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->handleDelayedMotionMessages()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 405
    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->removeMotionMessage([I)V

    const/4 v0, 0x0

    .line 406
    invoke-direct {p0, v1, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->createMotionMessage(ILandroid/util/Pair;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->handleMotionMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setHumanRendered()V
    .locals 1

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->isRendered:Z

    return-void
.end method

.method public setModelFocusLen(FFFFF)V
    .locals 2

    .line 372
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->currentFocusLen:Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;

    const/16 v1, 0x408

    .line 373
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;->setMsgID(I)V

    .line 374
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->currentFocusLen:Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;->setScaleValue(F)V

    .line 375
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->currentFocusLen:Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;->setSpeed(F)V

    .line 376
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->currentFocusLen:Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;

    invoke-virtual {p1, p3}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;->setPosx(F)V

    .line 377
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->currentFocusLen:Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;

    invoke-virtual {p1, p4}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;->setPosy(F)V

    .line 378
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->currentFocusLen:Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;

    invoke-virtual {p1, p5}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;->setMoveSpeed(F)V

    .line 379
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->currentFocusLen:Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method public setModelRotation(F)V
    .locals 1

    .line 365
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanRotate;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanRotate;-><init>()V

    const/16 v0, 0x407

    .line 366
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanRotate;->setMsgID(I)V

    .line 367
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanRotate;->setRotation(F)V

    .line 368
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    return-void
.end method

.method public setOnModelMotionListener(Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->unityMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    return-void
.end method

.method public setUnityAudioActionCallback(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnityAudioActionCallback;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->unityAudioActionCallback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnityAudioActionCallback;

    return-void
.end method

.method public startMotion(ILcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)Z
    .locals 2

    .line 387
    iget v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->scene:I

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/DigitalHumanConstants$Scene;->isAvatarScene(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    if-gtz p1, :cond_1

    move p1, v0

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->stopMotion()V

    if-eq p1, v0, :cond_2

    .line 397
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->handleDelayedMotionMessages()V

    .line 398
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->createMotionMessage(ILandroid/util/Pair;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->handleMotionMessage(Landroid/os/Message;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public startSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->isSpeaking:Z

    .line 483
    iput-boolean p3, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->isMute:Z

    if-eqz p3, :cond_0

    .line 485
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->access$300(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V

    goto :goto_0

    .line 487
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->access$400(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopMotion()V
    .locals 2

    .line 416
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->handleDelayedMotionMessages()V

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 417
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->createMotionMessage(ILandroid/util/Pair;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->handleMotionMessage(Landroid/os/Message;)V

    return-void
.end method

.method public stopSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V
    .locals 1

    const/4 v0, 0x0

    .line 492
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->isSpeaking:Z

    .line 493
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->access$300(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V

    return-void
.end method

.method public unmute()V
    .locals 3

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->isMute:Z

    .line 358
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->isSpeaking:Z

    if-eqz v1, :cond_0

    .line 359
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->callback:Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;

    const-string v1, "UnityPreview"

    invoke-static {v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->getCurrentSpeakVia(Ljava/lang/String;)Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    move-result-object v2

    invoke-static {v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->getCurrentSpeakWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;->access$400(Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview$UnitySurfaceCallback;Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    .line 361
    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->muteVolume(ZZ)V

    return-void
.end method

.method public abstract updateModelBackground()V
.end method

.method public updateMuteState()V
    .locals 1

    .line 341
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->isMute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->mute()V

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->unmute()V

    :goto_0
    return-void
.end method
