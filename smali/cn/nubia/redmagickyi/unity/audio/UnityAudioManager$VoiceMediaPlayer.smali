.class Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;
.super Ljava/lang/Object;
.source "UnityAudioManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMediaPlayer"
.end annotation


# instance fields
.field private currentPlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

.field final synthetic this$0:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

.field private ttsMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

.field private unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->this$0:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance p1, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer$1;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer$1;-><init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    .line 356
    new-instance p1, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer$2;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer$2;-><init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->ttsMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    .line 443
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->getDefault()Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->currentPlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$1;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;-><init>(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;)V

    return-void
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;)Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;
    .locals 0

    .line 339
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->currentPlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;)Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;
    .locals 0

    .line 339
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    return-object p0
.end method

.method private getDefault()Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;
    .locals 1

    .line 446
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnitySDK;->isPreferTtsToPlayAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->ttsMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getCallbacks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;",
            ">;"
        }
    .end annotation

    .line 456
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->this$0:Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->access$200(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0

    .line 451
    const-string p0, "UnityAudioManager"

    return-object p0
.end method

.method public getVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)F
    .locals 0

    .line 497
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->access$300(Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)F

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    .line 492
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->currentPlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public pause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    .line 481
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->currentPlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->pause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method

.method public release(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 486
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->release(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    .line 487
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->ttsMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->release(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method

.method public resume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    .line 476
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->currentPlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->resume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 502
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->unityMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->setVolume(F)V

    .line 503
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->ttsMediaPlayer:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->setVolume(F)V

    return-void
.end method

.method public start(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->currentPlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 463
    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->stop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    .line 465
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->getDefault()Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->currentPlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    .line 466
    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->start(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method

.method public stop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 0

    .line 471
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$VoiceMediaPlayer;->currentPlayer:Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;->stop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method
