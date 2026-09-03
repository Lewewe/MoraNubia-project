.class Lcom/zte/aivoice/AIVoiceManager$TTS$1;
.super Ljava/lang/Object;
.source "AIVoiceManager.java"

# interfaces
.implements Lcom/zte/aivoice/tts/OnTTSClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aivoice/AIVoiceManager$TTS;->start(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/aivoice/AIVoiceManager$TTS;

.field final synthetic val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

.field final synthetic val$oid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/aivoice/AIVoiceManager$TTS;Lcom/zte/aivoice/tts/OnTTSClientListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->this$0:Lcom/zte/aivoice/AIVoiceManager$TTS;

    iput-object p2, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    iput-object p3, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$oid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->this$0:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-static {v0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->access$200(Lcom/zte/aivoice/AIVoiceManager$TTS;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->clone()Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    move-result-object p1

    .line 197
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setId(Ljava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V

    :cond_0
    return-void
.end method

.method public onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->this$0:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-static {v0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->access$200(Lcom/zte/aivoice/AIVoiceManager$TTS;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->clone()Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    move-result-object p1

    .line 233
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setId(Ljava/lang/String;)V

    .line 234
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method public onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->this$0:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-static {v0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->access$200(Lcom/zte/aivoice/AIVoiceManager$TTS;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->clone()Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setId(Ljava/lang/String;)V

    .line 207
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method public onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->this$0:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-static {v0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->access$200(Lcom/zte/aivoice/AIVoiceManager$TTS;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->clone()Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    move-result-object p1

    .line 224
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setId(Ljava/lang/String;)V

    .line 225
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method public onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->this$0:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-static {v0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->access$200(Lcom/zte/aivoice/AIVoiceManager$TTS;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->clone()Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setId(Ljava/lang/String;)V

    .line 216
    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method public onSynthesisBegin(Ljava/lang/String;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->this$0:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-static {v0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->access$200(Lcom/zte/aivoice/AIVoiceManager$TTS;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$oid:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisBegin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSynthesisCompleted(Ljava/lang/String;Z)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->this$0:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-static {v0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->access$200(Lcom/zte/aivoice/AIVoiceManager$TTS;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$oid:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisCompleted(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 1

    .line 184
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p2, v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->this$0:Lcom/zte/aivoice/AIVoiceManager$TTS;

    invoke-static {v0}, Lcom/zte/aivoice/AIVoiceManager$TTS;->access$200(Lcom/zte/aivoice/AIVoiceManager$TTS;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    iget-object p1, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$oid:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    iget-object p0, p0, Lcom/zte/aivoice/AIVoiceManager$TTS$1;->val$oid:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method
