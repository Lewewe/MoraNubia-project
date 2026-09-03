.class Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/audio/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMediaPlayer"
.end annotation


# instance fields
.field private currentPlayer:Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

.field private pcmMediaPlayer:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

.field final synthetic this$0:Lcom/zte/aivoice/tts/audio/AudioPlayer;

.field private wavMediaPlayer:Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/zte/aivoice/tts/audio/AudioPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->this$0:Lcom/zte/aivoice/tts/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance p1, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer$1;

    invoke-direct {p1, p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer$1;-><init>(Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->wavMediaPlayer:Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;

    .line 218
    new-instance p1, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer$2;

    invoke-direct {p1, p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer$2;-><init>(Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;)V

    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->pcmMediaPlayer:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    .line 235
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->wavMediaPlayer:Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;

    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->currentPlayer:Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aivoice/tts/audio/AudioPlayer;Lcom/zte/aivoice/tts/audio/AudioPlayer$1;)V
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;-><init>(Lcom/zte/aivoice/tts/audio/AudioPlayer;)V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->this$0:Lcom/zte/aivoice/tts/audio/AudioPlayer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->access$200(Lcom/zte/aivoice/tts/audio/AudioPlayer;)Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object p0

    return-object p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0

    .line 239
    const-string p0, "AudioPlayer"

    return-object p0
.end method

.method public getVolume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)F
    .locals 0

    .line 290
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->access$300(Lcom/zte/aivoice/tts/audio/AudioPlayer;Lcom/zte/aivoice/tts/audio/bean/AudioAction;)F

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->currentPlayer:Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    invoke-interface {p0}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public pause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->currentPlayer:Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->pause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public resume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->currentPlayer:Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->resume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->wavMediaPlayer:Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->setVolume(F)V

    .line 296
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->pcmMediaPlayer:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->setVolume(F)V

    return-void
.end method

.method public start(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 250
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getPcmEntity()Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->currentPlayer:Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0, p1}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->stop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->wavMediaPlayer:Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;

    iput-object v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->currentPlayer:Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    .line 255
    invoke-interface {v0, p1}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->start(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getPcmEntity()Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    move-result-object v0

    iget v0, v0, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 259
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->currentPlayer:Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    if-eqz v0, :cond_2

    .line 260
    invoke-interface {v0, p1}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->stop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->pcmMediaPlayer:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;

    iput-object v0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->currentPlayer:Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    .line 264
    invoke-interface {v0, p1}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->start(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :goto_0
    return-void
.end method

.method public stop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->currentPlayer:Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;->stop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method
