.class Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;
.super Ljava/lang/Object;
.source "SpeechManager.java"

# interfaces
.implements Lcom/zte/aivoice/tts/OnTTSClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->start(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;

.field final synthetic val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

.field final synthetic val$oid:Ljava/lang/String;

.field final synthetic val$stream:Z

.field final synthetic val$streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

.field final synthetic val$words:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;Lcom/zte/aivoice/tts/OnTTSClientListener;Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
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

    .line 31
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$oid:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$words:Ljava/lang/String;

    iput-boolean p5, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$stream:Z

    iput-object p6, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->clone()Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    move-result-object p1

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setId(Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V

    :cond_0
    return-void
.end method

.method public onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->clone()Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setId(Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method public onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->clone()Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setId(Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method public onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->clone()Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setId(Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method public onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->clone()Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setId(Ljava/lang/String;)V

    .line 89
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method public onSynthesisBegin(Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$oid:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisBegin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSynthesisCompleted(Ljava/lang/String;Z)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$oid:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisCompleted(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 6

    .line 48
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p2, v0, :cond_0

    .line 49
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 50
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$oid:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$oid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 54
    invoke-static {}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->getInstance()Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$oid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager;->isStopAudioPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$oid:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->access$200()Lcom/zte/aivoice/tts/TTSClient;

    move-result-object v0

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$oid:Ljava/lang/String;

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->UNITY:Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/PresetTTSFile;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;->access$002(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$words:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$stream:Z

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$streamType:Lcn/nubia/redmagickyi/util/AudioStreamType;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/zte/aivoice/tts/TTSClient;->start(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V

    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager$TTSImpl$1;->val$oid:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_3
    :goto_0
    return-void
.end method
