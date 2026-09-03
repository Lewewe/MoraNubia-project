.class Lcom/zte/aivoice/AIVoiceClient;
.super Ljava/lang/Object;
.source "AIVoiceClient.java"


# static fields
.field private static asrClient:Lcom/zte/aivoice/asr/ASRClient;

.field private static ttsClient:Lcom/zte/aivoice/tts/TTSClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/zte/aivoice/tts/TTSClient;

    invoke-direct {v0}, Lcom/zte/aivoice/tts/TTSClient;-><init>()V

    sput-object v0, Lcom/zte/aivoice/AIVoiceClient;->ttsClient:Lcom/zte/aivoice/tts/TTSClient;

    .line 10
    new-instance v0, Lcom/zte/aivoice/asr/ASRClient;

    invoke-direct {v0}, Lcom/zte/aivoice/asr/ASRClient;-><init>()V

    sput-object v0, Lcom/zte/aivoice/AIVoiceClient;->asrClient:Lcom/zte/aivoice/asr/ASRClient;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asr()Lcom/zte/aivoice/asr/ASRClient;
    .locals 1

    .line 30
    sget-object v0, Lcom/zte/aivoice/AIVoiceClient;->asrClient:Lcom/zte/aivoice/asr/ASRClient;

    return-object v0
.end method

.method public static switchSource(Lcom/zte/aivoice/tts/TTSSource;Lcom/zte/aivoice/asr/ASRSource;)V
    .locals 1

    .line 13
    sget-object v0, Lcom/zte/aivoice/AIVoiceClient;->ttsClient:Lcom/zte/aivoice/tts/TTSClient;

    invoke-virtual {v0, p0}, Lcom/zte/aivoice/tts/TTSClient;->setSource(Lcom/zte/aivoice/tts/TTSSource;)V

    .line 14
    sget-object p0, Lcom/zte/aivoice/AIVoiceClient;->asrClient:Lcom/zte/aivoice/asr/ASRClient;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/asr/ASRClient;->setSource(Lcom/zte/aivoice/asr/ASRSource;)V

    return-void
.end method

.method public static tts()Lcom/zte/aivoice/tts/TTSClient;
    .locals 1

    .line 22
    sget-object v0, Lcom/zte/aivoice/AIVoiceClient;->ttsClient:Lcom/zte/aivoice/tts/TTSClient;

    return-object v0
.end method
