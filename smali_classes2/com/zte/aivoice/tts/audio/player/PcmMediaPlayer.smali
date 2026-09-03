.class public abstract Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;
.super Ljava/lang/Object;
.source "PcmMediaPlayer.java"

# interfaces
.implements Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;,
        Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PlayState;
    }
.end annotation


# instance fields
.field private pcmPlayer:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;

.field private volume:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;)Ljava/lang/Float;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->volume:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$102(Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->volume:Ljava/lang/Float;

    return-object p1
.end method


# virtual methods
.method public isPlaying()Z
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->pcmPlayer:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->isPlaying()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->pcmPlayer:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->pausePlay()V

    :cond_0
    return-void
.end method

.method public resume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->pcmPlayer:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->resumePlay()V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->pcmPlayer:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public start(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 35
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getPcmEntity()Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    move-result-object v0

    iget v0, v0, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->pcmPlayer:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;

    if-eqz p0, :cond_3

    .line 48
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->markDataWriteComplete()V

    goto :goto_0

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->pcmPlayer:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;

    if-eqz p0, :cond_3

    .line 43
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getPcmEntity()Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;

    move-result-object p1

    iget-object p1, p1, Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;->pcmData:[B

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->writePCMData([B)V

    goto :goto_0

    .line 38
    :cond_2
    new-instance v0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;-><init>(Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$1;)V

    iput-object v0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->pcmPlayer:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;

    .line 39
    invoke-virtual {v0, p1}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->startPlay(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public stop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer;->pcmPlayer:Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/PcmMediaPlayer$PcmPlayer;->stopPlay()V

    :cond_0
    return-void
.end method
