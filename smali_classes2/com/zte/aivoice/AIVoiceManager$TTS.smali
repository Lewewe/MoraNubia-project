.class public Lcom/zte/aivoice/AIVoiceManager$TTS;
.super Ljava/lang/Object;
.source "AIVoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/AIVoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TTS"
.end annotation


# instance fields
.field private ttsId:Ljava/lang/String;

.field private words:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/TTSClient;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/aivoice/AIVoiceManager$TTS;)Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS;->ttsId:Ljava/lang/String;

    return-object p0
.end method

.method protected static getClient()Lcom/zte/aivoice/tts/TTSClient;
    .locals 1

    .line 161
    invoke-static {}, Lcom/zte/aivoice/AIVoiceClient;->tts()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isMute()Z
    .locals 0

    .line 265
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/TTSClient;->isMute()Z

    move-result p0

    return p0
.end method

.method public mute()V
    .locals 0

    .line 257
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/TTSClient;->mute()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 279
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/TTSClient;->release()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 269
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/TTSClient;->block()V

    .line 270
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/TTSClient;->pause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 274
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/TTSClient;->unblock()V

    .line 275
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/TTSClient;->resume()V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 245
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/TTSClient;->pause()V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 249
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/TTSClient;->resume()V

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 253
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/TTSClient;->setVolume(F)V

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V
    .locals 6

    .line 165
    iput-object p1, p0, Lcom/zte/aivoice/AIVoiceManager$TTS;->ttsId:Ljava/lang/String;

    .line 166
    iput-object p2, p0, Lcom/zte/aivoice/AIVoiceManager$TTS;->words:Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/AIVoiceManager$TTS;->ttsId:Ljava/lang/String;

    new-instance v5, Lcom/zte/aivoice/AIVoiceManager$TTS$1;

    invoke-direct {v5, p0, p5, p1}, Lcom/zte/aivoice/AIVoiceManager$TTS$1;-><init>(Lcom/zte/aivoice/AIVoiceManager$TTS;Lcom/zte/aivoice/tts/OnTTSClientListener;Ljava/lang/String;)V

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zte/aivoice/tts/TTSClient;->start(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 241
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/TTSClient;->stop()V

    return-void
.end method

.method public unmute()V
    .locals 0

    .line 261
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$TTS;->getClient()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/tts/TTSClient;->unmute()V

    return-void
.end method
