.class public Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;
.super Ljava/lang/Object;
.source "UnityMotionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;
    }
.end annotation


# static fields
.field public static final MOTION_CODE_IDEL:I = -0x1

.field public static final MOTION_CODE_IDEL_MAYBE:I = 0x0

.field public static final MOTION_STATE_PAUSE:I = 0x2

.field public static final MOTION_STATE_RESUME:I = 0x1

.field public static final MOTION_STATE_START:I = 0x0

.field public static final MOTION_STATE_STOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UnityMotionPlayer"

.field private static volatile isModelSpeaking:Z = false

.field private static volatile motionState:I = 0x3

.field private static motionVia:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;",
            ">;"
        }
    .end annotation
.end field

.field private static onModelMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

.field private static speakVia:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;",
            ">;"
        }
    .end annotation
.end field

.field private static speakWords:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->speakVia:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->speakWords:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCurrentSpeakVia(Ljava/lang/String;)Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;
    .locals 3

    const-string v0, "UnityMotionPlayer -> getCurrentSpeakVia: "

    const-class v1, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;

    monitor-enter v1

    .line 178
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->speakVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->speakVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static declared-synchronized getCurrentSpeakWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "UnityMotionPlayer -> getCurrentSpeakWords: "

    const-class v1, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;

    monitor-enter v1

    .line 183
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->speakWords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->speakWords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static init()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v1, v1, v1}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->setUnityMotionState(ILjava/lang/Integer;Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized isUnityModelSpeaking(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "UnityMotionPlayer -> isUnityModelSpeaking, isUnityModelSpeaking: "

    const-class v1, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;

    monitor-enter v1

    .line 173
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->isModelSpeaking:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-boolean p0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->isModelSpeaking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static isUnityMotionPlaying(Ljava/lang/String;)Z
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnityMotionPlayer -> isUnityMotionPlaying, motionState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget p0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionState:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setOnModelMotionListener(Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;)V
    .locals 0

    .line 41
    sput-object p0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->onModelMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    return-void
.end method

.method public static declared-synchronized setUnityMotionState(ILjava/lang/Integer;Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V
    .locals 9

    const-string v0, "setUnityMotionState, motionState = "

    const-class v1, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/4 v5, 0x2

    if-ne p0, v3, :cond_1

    .line 91
    :try_start_0
    sget v6, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionState:I

    if-ne v6, v5, :cond_1

    move v6, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    move v6, v2

    :goto_1
    if-ne p0, v5, :cond_3

    .line 92
    sget v5, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionState:I

    if-eqz v5, :cond_2

    sget v5, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionState:I

    if-ne v5, v3, :cond_3

    :cond_2
    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    const/4 v7, 0x3

    if-ne p0, v7, :cond_4

    .line 93
    sget v8, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionState:I

    if-eq v8, v7, :cond_4

    move v2, v3

    .line 94
    :cond_4
    const-string v3, "UnityMotionPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", UnityMotionPlayer.motionState = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v7, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionState:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_5

    .line 97
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 98
    sput p0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionState:I

    .line 99
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->onModelMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    if-eqz p0, :cond_8

    .line 100
    invoke-interface {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onStartPlayMotion(Ljava/lang/Integer;Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_6

    .line 104
    sput p0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionState:I

    .line 105
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->onModelMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    if-eqz p0, :cond_8

    .line 106
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onResumePlayMotion()V

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    .line 110
    sput p0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionState:I

    .line 111
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->onModelMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    if-eqz p0, :cond_8

    .line 112
    invoke-interface {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onPausePlayMotion()V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    .line 116
    sget-object p1, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    .line 117
    sget-object p2, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionVia:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 118
    sput p0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionState:I

    .line 119
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->onModelMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    if-eqz p0, :cond_8

    .line 120
    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onStopPlayMotion(Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_8
    :goto_3
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1

    throw p0
.end method

.method public static startPlayMotion(ILcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;)V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startPlayMotion, motionCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motionVia: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", motionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityMotionPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;->Specify:Lcn/nubia/redmagickyi/digitalhuman/utils/MotionVia;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_1

    .line 52
    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->getMotionId(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 54
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->SCREEN_UNLOCK:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnitySpecifyMapper$Public;->getMotionId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 56
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanUnlock;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanUnlock;-><init>()V

    const/16 p1, 0x406

    .line 57
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanUnlock;->setMsgID(I)V

    .line 58
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanUnlock;->setUnlock(Z)V

    .line 59
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanDoPlayTargetMotion;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanDoPlayTargetMotion;-><init>()V

    const/16 v0, 0x405

    .line 62
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanDoPlayTargetMotion;->setMsgID(I)V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanDoPlayTargetMotion;->setAnimationId(I)V

    .line 64
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    goto :goto_0

    .line 68
    :cond_1
    new-instance p1, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    const/16 v0, 0x3e8

    .line 69
    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    .line 70
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 71
    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setType(I)V

    .line 72
    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static declared-synchronized startSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V
    .locals 6

    const-string v0, "startSpeaking, via: "

    const-class v1, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;

    monitor-enter v1

    .line 129
    :try_start_0
    const-string v2, "UnityMotionPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", words: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->speakVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    .line 131
    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->speakWords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 132
    const-string v2, "UnityMotionPlayer"

    invoke-static {v2}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->isUnityModelSpeaking(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    .line 133
    sput-boolean v3, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->isModelSpeaking:Z

    .line 134
    new-instance v4, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;

    invoke-direct {v4}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;-><init>()V

    const/16 v5, 0x403

    .line 135
    invoke-virtual {v4, v5}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;->setMsgID(I)V

    .line 136
    invoke-virtual {v4, v3}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;->setSpeaking(Z)V

    .line 137
    invoke-static {v4}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 138
    sget-object v3, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->onModelMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    .line 140
    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;->Client:Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;

    if-eq p0, v2, :cond_0

    .line 142
    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->onModelMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    invoke-interface {v2, v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onStopSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V

    .line 143
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->onModelMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    invoke-interface {v0, p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onStartSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eq v0, p0, :cond_2

    .line 146
    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->onModelMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    invoke-interface {v2, v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onStopSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V

    .line 147
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->onModelMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    invoke-interface {v0, p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onStartSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {v3, p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onStartSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static stopPlayMotion()V
    .locals 2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopPlayMotion, motionState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->motionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityMotionPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->stopMotionAndVoice()V

    return-void
.end method

.method public static declared-synchronized stopSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V
    .locals 5

    const-string v0, "stopSpeaking, via: "

    const-class v1, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;

    monitor-enter v1

    .line 159
    :try_start_0
    const-string v2, "UnityMotionPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->speakVia:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 161
    const-string v0, "UnityMotionPlayer"

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->isUnityModelSpeaking(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    .line 162
    sput-boolean v2, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->isModelSpeaking:Z

    .line 163
    new-instance v3, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;

    invoke-direct {v3}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;-><init>()V

    const/16 v4, 0x403

    .line 164
    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;->setMsgID(I)V

    .line 165
    invoke-virtual {v3, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;->setSpeaking(Z)V

    .line 166
    invoke-static {v3}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 167
    sget-object v2, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer;->onModelMotionListener:Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v2, p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/UnityMotionPlayer$OnModelMotionListener;->onStopSpeaking(Lcn/nubia/redmagickyi/digitalhuman/utils/SpeakVia;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method
