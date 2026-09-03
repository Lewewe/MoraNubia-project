.class Lcn/nubia/redmagickyi/unity/UnityPlayerScene$1;
.super Ljava/lang/Object;
.source "UnityPlayerScene.java"

# interfaces
.implements Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/unity/UnityPlayerScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPlayBegin(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 2

    .line 131
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 132
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;-><init>()V

    const/16 v1, 0x403

    .line 133
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;->setMsgID(I)V

    .line 134
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;->setSpeaking(Z)V

    .line 135
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 137
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "handle onAudioPlayBegin, audioAction: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", audioCallback: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UnityPlayerScene"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 139
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayBegin(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    :cond_1
    return-void
.end method

.method public onAudioPlayComplete(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 175
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "handle onAudioPlayComplete, audioAction: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", audioCallback: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UnityPlayerScene"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 177
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayComplete(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method public onAudioPlayPause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "handle onAudioPlayPause, audioAction: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", audioCallback: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UnityPlayerScene"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 147
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayPause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method public onAudioPlayResume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "handle onAudioPlayResume, audioAction: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", audioCallback: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UnityPlayerScene"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 169
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayResume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    :cond_0
    return-void
.end method

.method public onAudioPlayStop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 1

    .line 153
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 154
    new-instance p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;-><init>()V

    const/16 v0, 0x403

    .line 155
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;->setMsgID(I)V

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/unity/messages/UAMessageVoiceAssistantSpeaking;->setSpeaking(Z)V

    .line 157
    invoke-static {p0}, Lcn/nubia/redmagickyi/unity/UnitySDK;->sendToUnity(Lcn/nubia/redmagickyi/unity/messages/UAMessageBase;)V

    .line 159
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "handle onAudioPlayStop, audioAction: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", audioCallback: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UnityPlayerScene"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 161
    invoke-static {}, Lcn/nubia/redmagickyi/unity/UnityPlayerScene;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayStop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    :cond_1
    return-void
.end method
