.class public Lcn/nubia/redmagickyi/unity/UnityPlayerScene;
.super Ljava/lang/Object;
.source "UnityPlayerScene.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnityPlayerScene"

.field public static mUnTouchable:Z = false

.field public static mUnityPlayer:Lcom/unity3d/player/UnityPlayer; = null

.field private static sAudioCallback:Ljava/util/concurrent/atomic/AtomicReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static sceneName:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sAudioCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 128
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene$1;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene$1;-><init>()V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->registAudioCallback(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WallPaperStop(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 68
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->stopVoice()V

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .line 16
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sAudioCallback:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static adjustVolume(FF)V
    .locals 3

    .line 117
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->sendAudioAction(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 118
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, v1, v2, v2, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->sendAudioAction(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static destroy(Lcom/unity3d/player/UnityPlayer;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 87
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    const/16 v1, 0x3e8

    .line 88
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setType(I)V

    const/4 v1, -0x1

    .line 90
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 91
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 94
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->stopVoice()V

    .line 96
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    :cond_0
    return-void
.end method

.method public static isMediaPlaying(I)Z
    .locals 1

    .line 196
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->isMediaPlaying(I)Z

    move-result p0

    return p0
.end method

.method public static muteVolume(ZZ)V
    .locals 3

    .line 123
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->sendAudioAction(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 124
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v1, v2, v2, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->sendAudioAction(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static pause(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 42
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->pauseVoice()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static pauseVoice()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 106
    invoke-static {v0, v1, v2, v2, v2}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->sendAudioAction(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 107
    invoke-static {v0, v1, v2, v2, v2}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->sendAudioAction(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static registAudioCallback(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;)V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registAudioCallback, audioCallback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prev audioCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sAudioCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPlayerScene"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sAudioCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static resume(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 32
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->resumeVoice()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static resumeVoice()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 101
    invoke-static {v0, v1, v2, v2, v2}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->sendAudioAction(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 102
    invoke-static {v0, v1, v2, v2, v2}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->sendAudioAction(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setEnableAudioPlayWhenScreenLocked(Z)V
    .locals 1

    .line 204
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->setEnablePlayWhenScreenLocked(Z)V

    return-void
.end method

.method public static stop(Lcom/unity3d/player/UnityPlayer;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 51
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    const/16 v1, 0x3e8

    .line 52
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setType(I)V

    const/4 v1, -0x1

    .line 54
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 55
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 57
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 60
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->stopVoice()V

    :cond_0
    return-void
.end method

.method public static stopMotionAndVoice()V
    .locals 2

    .line 74
    new-instance v0, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    const/16 v1, 0x3e8

    .line 75
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setType(I)V

    const/4 v1, -0x1

    .line 77
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 78
    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 81
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->stopVoice()V

    return-void
.end method

.method public static stopVoice()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-static {v0, v1, v2, v2, v2}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->sendAudioAction(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    invoke-static {v1, v1, v2, v2, v2}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->sendAudioAction(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static unregistAudioCallback(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;)V
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregistAudioCallback, audioCallback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prev audioCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sAudioCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityPlayerScene"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 190
    sget-object v0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sAudioCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_0

    .line 191
    sget-object p0, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->sAudioCallback:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
