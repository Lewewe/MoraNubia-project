.class public Lcom/zte/aivoice/AIVoiceManager$ASR;
.super Ljava/lang/Object;
.source "AIVoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/AIVoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASR"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$ASR;->getClient()Lcom/zte/aivoice/asr/ASRClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/asr/ASRClient;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/aivoice/AIVoiceManager$ASR;Lcom/zte/aivoice/asr/method/base/ASREntry;Lcom/zte/aivoice/asr/OnASRClientListener;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/zte/aivoice/AIVoiceManager$ASR;->start(Lcom/zte/aivoice/asr/method/base/ASREntry;Lcom/zte/aivoice/asr/OnASRClientListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/aivoice/AIVoiceManager$ASR;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/zte/aivoice/AIVoiceManager$ASR;->stop()V

    return-void
.end method

.method protected static getClient()Lcom/zte/aivoice/asr/ASRClient;
    .locals 1

    .line 134
    invoke-static {}, Lcom/zte/aivoice/AIVoiceClient;->asr()Lcom/zte/aivoice/asr/ASRClient;

    move-result-object v0

    return-object v0
.end method

.method private start(Lcom/zte/aivoice/asr/method/base/ASREntry;Lcom/zte/aivoice/asr/OnASRClientListener;)V
    .locals 0

    .line 138
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$ASR;->getClient()Lcom/zte/aivoice/asr/ASRClient;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/zte/aivoice/asr/ASRClient;->start(Lcom/zte/aivoice/asr/method/base/ASREntry;Lcom/zte/aivoice/asr/OnASRClientListener;)V

    return-void
.end method

.method private stop()V
    .locals 0

    .line 142
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$ASR;->getClient()Lcom/zte/aivoice/asr/ASRClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/asr/ASRClient;->stop()V

    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 0

    .line 150
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$ASR;->getClient()Lcom/zte/aivoice/asr/ASRClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/asr/ASRClient;->release()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 146
    invoke-static {}, Lcom/zte/aivoice/AIVoiceManager$ASR;->getClient()Lcom/zte/aivoice/asr/ASRClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zte/aivoice/asr/ASRClient;->stop()V

    return-void
.end method
