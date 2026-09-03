.class public Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;
.implements Lcom/nubia/androidforunity/UnityToAndroidCallback;
.implements Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;,
        Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$SceneReadyCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnityPreview"


# instance fields
.field private DESK_IS_VISIBEL:Z

.field private FIRST_START:Z

.field private mContext:Landroid/content/Context;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private modleinitfinish:Z

.field private sceneReadyCallback:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$SceneReadyCallback;

.field private screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceView;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->DESK_IS_VISIBEL:Z

    .line 50
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->modleinitfinish:Z

    .line 61
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->FIRST_START:Z

    .line 64
    new-instance p1, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    iget-object p2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    .line 65
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->StartScreenBrocastReceiver()V

    .line 66
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->setScreenOnStatusListener(Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil$ScreenOnStatusListener;)V

    .line 67
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->initUnity()V

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0

    .line 57
    const-string p0, "UnityPreview"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->FIRST_START:Z

    return p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->FIRST_START:Z

    return p1
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->DESK_IS_VISIBEL:Z

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->modleinitfinish:Z

    return p0
.end method

.method private initUnity()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$UnitySurfaceCallback;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$1;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/unity/ProxyUnityPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 79
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 80
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->setUnityToAndroidListen(Lcom/nubia/androidforunity/UnityToAndroidCallback;)V

    return-void
.end method

.method private parseMessage(Ljava/lang/String;)V
    .locals 10
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

    if-eqz v1, :cond_5

    .line 176
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 177
    const-string v2, "msgID"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    const/16 v2, 0x7d0

    .line 179
    const-string v3, "unity status:"

    const-string v4, "UnityPreview"

    const-string v5, "isPause"

    const/16 v6, 0x7da

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7d7

    if-eq v1, v2, :cond_2

    if-eq v1, v6, :cond_1

    goto :goto_1

    .line 192
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 185
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->getModelSkin(Landroid/content/Context;)I

    move-result v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v2, v7, v8}, Lcn/nubia/redmagickyi/skin/util/SkinLocaleDataManager;->switchModelSkin(IZZ)Z

    .line 187
    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v2

    invoke-static {}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getInstance()Lcn/nubia/redmagickyi/unity/util/FrameRateManager;

    move-result-object v9

    invoke-virtual {v9}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->getFrameRate()I

    move-result v9

    invoke-virtual {v2, v9, v7}, Lcn/nubia/redmagickyi/unity/util/FrameRateManager;->setFrameRate(IZ)V

    .line 188
    iput-boolean v8, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->modleinitfinish:Z

    .line 189
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$SceneReadyCallback;

    invoke-interface {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$SceneReadyCallback;->onModelReady()V

    goto :goto_1

    .line 181
    :cond_3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->switchScene()V

    :goto_1
    if-ne v1, v6, :cond_0

    .line 200
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 205
    :cond_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 208
    :cond_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    return-void
.end method

.method private switchScene()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$SceneReadyCallback;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$SceneReadyCallback;->onSceneReady()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switchUnityScene: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnityPreview"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v1, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;-><init>()V

    const/16 v2, 0x3f2

    .line 88
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setMsgID(I)V

    .line 89
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/database/RedMagicARImageDataManager;->getScenceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageChangeScene;->setSceneName(Ljava/lang/String;)V

    .line 91
    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

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

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->Log(Ljava/lang/String;)V

    .line 167
    :try_start_0
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UAMessagePreParser;->parseMessageFromUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->parseMessage(Ljava/lang/String;)V
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

.method public ScreenOn()Z
    .locals 1

    .line 288
    :try_start_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 289
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 291
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public ScreenUnLock()Z
    .locals 2

    const/4 v0, 0x0

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->ScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 301
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 302
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 305
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public onScreenOnStatusListener(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 95
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->DESK_IS_VISIBEL:Z

    const/4 v0, 0x0

    const-string v1, "UnityPreview"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->ScreenUnLock()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->FIRST_START:Z

    .line 98
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->resume()V

    .line 99
    const-string p0, "resume onScreenOnStatusListener start care:"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->FIRST_START:Z

    if-eqz p1, :cond_1

    .line 101
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->FIRST_START:Z

    .line 102
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->resume()V

    .line 103
    const-string p0, "resume FIRST_START"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_1
    const-string p0, "WallPaperStop stop"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 108
    const-string p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    const-string p0, "onScreenOnStatusListener:open screen"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 111
    :cond_2
    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 113
    const-string p0, "onScreenOnStatusListener:lock screen"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 114
    :cond_3
    const-string p1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 116
    const-string p0, "onScreenOnStatusListener:unlock screen"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

.method public pause()V
    .locals 0

    .line 131
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pause(Lcom/unity3d/player/UnityPlayer;)Z

    return-void
.end method

.method public release(Ljava/lang/Runnable;)V
    .locals 3

    .line 135
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->screenOnStatusUtil:Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/utils/ScreenOnStatusUtil;->UnRegisterReceiver()V

    .line 138
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 139
    new-instance v1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v2, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$1;

    invoke-direct {v2, p0, p1, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$1;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 156
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 158
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 160
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ApplicationContext;->killProcess(I)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 124
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resume(Lcom/unity3d/player/UnityPlayer;)Z

    return-void
.end method

.method public setSceneReadyCallback(Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$SceneReadyCallback;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview;->sceneReadyCallback:Lcn/nubia/redmagickyi/pose/mobile/view/UnityPreview$SceneReadyCallback;

    return-void
.end method
