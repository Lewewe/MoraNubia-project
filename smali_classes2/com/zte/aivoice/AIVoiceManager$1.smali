.class Lcom/zte/aivoice/AIVoiceManager$1;
.super Ljava/lang/Object;
.source "AIVoiceManager.java"

# interfaces
.implements Lcom/zte/aivoice/asr/OnASRClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aivoice/AIVoiceManager;->startASR(Lcom/zte/aivoice/asr/method/base/ASREntry;Lcom/zte/aivoice/asr/OnASRClientListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aivoice/AIVoiceManager;

.field final synthetic val$listener:Lcom/zte/aivoice/asr/OnASRClientListener;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/AIVoiceManager;Lcom/zte/aivoice/asr/OnASRClientListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/zte/aivoice/AIVoiceManager$1;->this$0:Lcom/zte/aivoice/AIVoiceManager;

    iput-object p2, p0, Lcom/zte/aivoice/AIVoiceManager$1;->val$listener:Lcom/zte/aivoice/asr/OnASRClientListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecognizeBegin()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager$1;->this$0:Lcom/zte/aivoice/AIVoiceManager;

    invoke-virtual {v0}, Lcom/zte/aivoice/AIVoiceManager;->stopTTS()V

    .line 49
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$1;->val$listener:Lcom/zte/aivoice/asr/OnASRClientListener;

    invoke-interface {p0}, Lcom/zte/aivoice/asr/OnASRClientListener;->onRecognizeBegin()V

    return-void
.end method

.method public onRecognizeCompleted(Ljava/lang/String;Z)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$1;->val$listener:Lcom/zte/aivoice/asr/OnASRClientListener;

    invoke-interface {p0, p1, p2}, Lcom/zte/aivoice/asr/OnASRClientListener;->onRecognizeCompleted(Ljava/lang/String;Z)V

    return-void
.end method

.method public onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$1;->val$listener:Lcom/zte/aivoice/asr/OnASRClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/asr/OnASRClientListener;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    return-void
.end method

.method public onRecordingCompleted(Ljava/lang/String;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$1;->val$listener:Lcom/zte/aivoice/asr/OnASRClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/asr/OnASRClientListener;->onRecordingCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public onRecordingVolumeUpdated(III)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$1;->val$listener:Lcom/zte/aivoice/asr/OnASRClientListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/zte/aivoice/asr/OnASRClientListener;->onRecordingVolumeUpdated(III)V

    return-void
.end method
