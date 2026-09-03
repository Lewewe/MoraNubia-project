.class Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer$1;
.super Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;
.source "AudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer$1;->this$1:Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;

    invoke-direct {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer$1;->this$1:Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object p0

    return-object p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer$1;->this$1:Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVolume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)F
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer$1;->this$1:Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer$VoiceMediaPlayer;->getVolume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)F

    move-result p0

    return p0
.end method
