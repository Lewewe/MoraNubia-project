.class Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;
.super Ljava/lang/Object;
.source "TTSMediaPlayer.java"

# interfaces
.implements Lcom/zte/aivoice/tts/OnTTSClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->start(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

.field final synthetic val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
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

    .line 42
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->this$0:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    iput-object p2, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V
    .locals 1

    .line 65
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->this$0:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->access$000(Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->this$0:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-interface {p2, v0}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayBegin(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 8

    .line 96
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->this$0:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    .line 97
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayComplete(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;-><init>(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->this$0:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    .line 101
    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayStop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 73
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->this$0:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    .line 74
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayPause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 88
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->this$0:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    .line 89
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayResume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 2

    .line 80
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->this$0:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    invoke-static {p1}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->access$000(Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->this$0:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    .line 82
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayStop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSynthesisBegin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSynthesisCompleted(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 3

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->this$0:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSynthesisFailed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", errorCode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", audioAction: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p2, p1, :cond_0

    .line 57
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->this$0:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->onTTSStartFailed(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_0

    .line 58
    :cond_0
    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p2, p1, :cond_1

    .line 59
    iget-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->this$0:Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;

    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer$1;->val$audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/unity/audio/player/TTSMediaPlayer;->onTTSStartFailed(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    :cond_1
    :goto_0
    return-void
.end method
