.class public Lcom/zte/aivoice/AIVoiceManager;
.super Ljava/lang/Object;
.source "AIVoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/AIVoiceManager$ASR;,
        Lcom/zte/aivoice/AIVoiceManager$TTS;
    }
.end annotation


# instance fields
.field private asr:Lcom/zte/aivoice/AIVoiceManager$ASR;

.field private tts:Lcom/zte/aivoice/AIVoiceManager$TTS;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/zte/aivoice/AIVoiceManager$ASR;

    invoke-direct {v0, p1}, Lcom/zte/aivoice/AIVoiceManager$ASR;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/aivoice/AIVoiceManager;->asr:Lcom/zte/aivoice/AIVoiceManager$ASR;

    .line 23
    new-instance v0, Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-direct {v0, p1}, Lcom/zte/aivoice/AIVoiceManager$TTS;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/aivoice/AIVoiceManager;->tts:Lcom/zte/aivoice/AIVoiceManager$TTS;

    return-void
.end method

.method protected constructor <init>(Lcom/zte/aivoice/AIVoiceManager$ASR;Lcom/zte/aivoice/AIVoiceManager$TTS;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/zte/aivoice/AIVoiceManager;->asr:Lcom/zte/aivoice/AIVoiceManager$ASR;

    .line 28
    iput-object p2, p0, Lcom/zte/aivoice/AIVoiceManager;->tts:Lcom/zte/aivoice/AIVoiceManager$TTS;

    return-void
.end method

.method public static getASRSource()Lcom/zte/aivoice/asr/ASRSource;
    .locals 1

    .line 36
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$ASR;->getClient()Lcom/zte/aivoice/asr/ASRClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aivoice/asr/ASRClient;->getSource()Lcom/zte/aivoice/asr/ASRSource;

    move-result-object v0

    return-object v0
.end method

.method public static getTTSDurationByWords(Ljava/lang/String;)J
    .locals 2

    .line 111
    invoke-static {}, Lcom/zte/aivoice/AIVoiceClient;->tts()Lcom/zte/aivoice/tts/TTSClient;

    invoke-static {p0}, Lcom/zte/aivoice/tts/TTSClient;->getTTSDurationByWords(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTTSSource()Lcom/zte/aivoice/tts/TTSSource;
    .locals 1

    .line 40
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/TTSClient;->getSource()Lcom/zte/aivoice/tts/TTSSource;

    move-result-object v0

    return-object v0
.end method

.method public static switchSource(Lcom/zte/aivoice/tts/TTSSource;Lcom/zte/aivoice/asr/ASRSource;)V
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/zte/aivoice/AIVoiceClient;->switchSource(Lcom/zte/aivoice/tts/TTSSource;Lcom/zte/aivoice/asr/ASRSource;)V

    return-void
.end method


# virtual methods
.method public isMuteTTS()Z
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager;->tts:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-virtual {p0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->isMute()Z

    move-result p0

    return p0
.end method

.method public muteTTS()V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager;->tts:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-virtual {p0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->mute()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager;->tts:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-virtual {v0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->onDestroy()V

    .line 125
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager;->asr:Lcom/zte/aivoice/AIVoiceManager$ASR;

    invoke-virtual {p0}, Lcom/zte/aivoice/AIVoiceManager$ASR;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager;->tts:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-virtual {v0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->onPause()V

    .line 116
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager;->asr:Lcom/zte/aivoice/AIVoiceManager$ASR;

    invoke-virtual {p0}, Lcom/zte/aivoice/AIVoiceManager$ASR;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager;->tts:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-virtual {p0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->onResume()V

    return-void
.end method

.method public pauseTTS()V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager;->tts:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-virtual {p0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->pause()V

    return-void
.end method

.method public resumeTTS()V
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager;->tts:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-virtual {p0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->resume()V

    return-void
.end method

.method public setTTSVolume(F)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager;->tts:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/AIVoiceManager$TTS;->setVolume(F)V

    return-void
.end method

.method public startASR(Lcom/zte/aivoice/asr/method/base/ASREntry;Lcom/zte/aivoice/asr/OnASRClientListener;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager;->asr:Lcom/zte/aivoice/AIVoiceManager$ASR;

    new-instance v1, Lcom/zte/aivoice/AIVoiceManager$1;

    invoke-direct {v1, p0, p2}, Lcom/zte/aivoice/AIVoiceManager$1;-><init>(Lcom/zte/aivoice/AIVoiceManager;Lcom/zte/aivoice/asr/OnASRClientListener;)V

    invoke-static {v0, p1, v1}, Lcom/zte/aivoice/AIVoiceManager$ASR;->access$000(Lcom/zte/aivoice/AIVoiceManager$ASR;Lcom/zte/aivoice/asr/method/base/ASREntry;Lcom/zte/aivoice/asr/OnASRClientListener;)V

    return-void
.end method

.method public startTTS(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager;->tts:Lcom/zte/aivoice/AIVoiceManager$TTS;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/zte/aivoice/AIVoiceManager$TTS;->start(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V

    return-void
.end method

.method public stopASR()V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager;->asr:Lcom/zte/aivoice/AIVoiceManager$ASR;

    invoke-static {p0}, Lcom/zte/aivoice/AIVoiceManager$ASR;->access$100(Lcom/zte/aivoice/AIVoiceManager$ASR;)V

    return-void
.end method

.method public stopTTS()V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager;->tts:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-virtual {p0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->stop()V

    return-void
.end method

.method public unmuteTTS()V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager;->tts:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-virtual {p0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->unmute()V

    return-void
.end method
