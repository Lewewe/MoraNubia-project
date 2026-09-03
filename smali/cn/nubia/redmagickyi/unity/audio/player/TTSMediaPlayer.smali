.class public abstract Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;
.super Ljava/lang/Object;
.source "TTSMediaPlayer.java"

# interfaces
.implements Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;


# instance fields
.field private aiVoiceManager:Lcom/zte/aivoice/AIVoiceManager;

.field private audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

.field private isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/zte/aivoice/AIVoiceManager;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/aivoice/AIVoiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->aiVoiceManager:Lcom/zte/aivoice/AIVoiceManager;

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public abstract isEnableToPlay(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)Z
.end method

.method public isPlaying()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onTTSStartFailed(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
.end method

.method public pause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->aiVoiceManager:Lcom/zte/aivoice/AIVoiceManager;

    invoke-virtual {p0}, Lcom/zte/aivoice/AIVoiceManager;->onPause()V

    return-void
.end method

.method public release(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->stop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method

.method public resume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->aiVoiceManager:Lcom/zte/aivoice/AIVoiceManager;

    invoke-virtual {p0}, Lcom/zte/aivoice/AIVoiceManager;->onResume()V

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->aiVoiceManager:Lcom/zte/aivoice/AIVoiceManager;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/AIVoiceManager;->setTTSVolume(F)V

    return-void
.end method

.method public start(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 9

    .line 29
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getMotionID()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/unity/motion/MotionConfigManager;->searchMotion(I)Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->onTTSStartFailed(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void

    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->isEnableToPlay(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 35
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->onTTSStartFailed(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void

    .line 38
    :cond_1
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getMotionID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->createTTSPathForUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/motion/bean/MotionConfig;->getName()Ljava/lang/String;

    move-result-object v5

    .line 42
    iget-object v3, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->aiVoiceManager:Lcom/zte/aivoice/AIVoiceManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/AudioStreamType;->findStreamTypeByKey(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/AudioStreamType;

    move-result-object v7

    new-instance v8, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;

    invoke-direct {v8, p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;-><init>(Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    const/4 v6, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/zte/aivoice/AIVoiceManager;->startTTS(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V

    return-void
.end method

.method public stop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->aiVoiceManager:Lcom/zte/aivoice/AIVoiceManager;

    invoke-virtual {p0}, Lcom/zte/aivoice/AIVoiceManager;->stopTTS()V

    return-void
.end method
