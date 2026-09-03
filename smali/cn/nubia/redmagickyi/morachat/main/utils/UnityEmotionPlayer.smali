.class public Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;
.super Ljava/lang/Object;
.source "UnityEmotionPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer$OnModelEmotionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnityEmotionPlayer"

.field private static volatile isModelSpeaking:Z

.field private static volatile isMotionPlaying:Z

.field private static onModelEmotionListener:Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer$OnModelEmotionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    sput-boolean v0, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isMotionPlaying:Z

    return-void
.end method

.method public static declared-synchronized isUnityModelSpeaking(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "UnityEmotionPlayer -> isUnityModelSpeaking, StateMachine: "

    const-class v1, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;

    monitor-enter v1

    .line 135
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isUnityModelSpeaking: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isModelSpeaking:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-boolean p0, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isModelSpeaking:Z
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

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnityEmotionPlayer -> isUnityMotionPlaying, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isUnityMotionPlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isMotionPlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-boolean p0, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isMotionPlaying:Z

    return p0
.end method

.method public static parseUnityMotionEnd(I)V
    .locals 1

    const/16 v0, 0x7de

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    .line 101
    sput-boolean p0, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isMotionPlaying:Z

    :cond_0
    return-void
.end method

.method public static setOnModelEmotionListener(Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer$OnModelEmotionListener;)V
    .locals 0

    .line 44
    sput-object p0, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->onModelEmotionListener:Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer$OnModelEmotionListener;

    return-void
.end method

.method public static startPlayMotion(I)V
    .locals 3

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->isEnablePlayMotion()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->stopPlayMotion()V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startPlayMotion, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emoCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMotionPlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isMotionPlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityEmotionPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper;->getMotionId(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 61
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_NONE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->getMotionId()I

    move-result v0

    .line 63
    :cond_1
    sget-object v1, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->EMOTION_CODE_NONE:Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/digitalhuman/mapper/UnityEmotionMapper$Public;->getMotionId()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    .line 64
    sput-boolean v1, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isMotionPlaying:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 66
    sput-boolean v1, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isMotionPlaying:Z

    .line 68
    :goto_0
    new-instance v1, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;-><init>()V

    const/16 v2, 0x3e8

    .line 69
    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMsgID(I)V

    .line 70
    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessagePlay;->setMotionId(I)V

    .line 71
    invoke-static {v1}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 72
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->onModelEmotionListener:Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer$OnModelEmotionListener;

    if-eqz v0, :cond_3

    .line 73
    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer$OnModelEmotionListener;->startPlayMotion(I)V

    :cond_3
    return-void
.end method

.method public static declared-synchronized startSpeaking()V
    .locals 4

    const-class v0, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;

    monitor-enter v0

    const/4 v1, 0x1

    .line 109
    :try_start_0
    sput-boolean v1, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isModelSpeaking:Z

    .line 110
    new-instance v2, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;-><init>()V

    const/16 v3, 0x403

    .line 111
    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;->setMsgID(I)V

    .line 112
    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;->setSpeaking(Z)V

    .line 113
    invoke-static {v2}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 114
    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->onModelEmotionListener:Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer$OnModelEmotionListener;

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer$OnModelEmotionListener;->startSpeaking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static stopPlayMotion()V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopPlayMotion, StateMachine: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;->getState()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/StateMachine;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMotionPlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isMotionPlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnityEmotionPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 82
    sput-boolean v0, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isMotionPlaying:Z

    .line 83
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->stopMotionAndVoice()V

    .line 84
    sget-object v0, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->onModelEmotionListener:Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer$OnModelEmotionListener;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer$OnModelEmotionListener;->stopPlayMotion()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized stopSpeaking()V
    .locals 5

    const-class v0, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;

    monitor-enter v0

    .line 123
    :try_start_0
    const-string v1, "UnityEmotionPlayer"

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isUnityModelSpeaking(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    .line 124
    sput-boolean v2, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->isModelSpeaking:Z

    .line 125
    new-instance v3, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;

    invoke-direct {v3}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;-><init>()V

    const/16 v4, 0x403

    .line 126
    invoke-virtual {v3, v4}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;->setMsgID(I)V

    .line 127
    invoke-virtual {v3, v2}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;->setSpeaking(Z)V

    .line 128
    invoke-static {v3}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 129
    sget-object v2, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer;->onModelEmotionListener:Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer$OnModelEmotionListener;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {v2}, Lcn/nubia/redmagickyi/morachat/main/utils/UnityEmotionPlayer$OnModelEmotionListener;->stopSpeaking()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
