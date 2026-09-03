.class Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;
.super Ljava/lang/Object;
.source "Audio2TextSession.java"

# interfaces
.implements Lcom/zte/aivoice/asr/OnASRClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->startExecute(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private counter:Lcn/nubia/redmagickyi/util/Counter;

.field private isHasReceivedWords:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

.field final synthetic val$botMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

.field final synthetic val$userMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

.field private words:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$botMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$userMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p5, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->isHasReceivedWords:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    const-string p1, ""

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->words:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;)Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->words:Ljava/lang/String;

    return-object p0
.end method

.method private startCountdown()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->counter:Lcn/nubia/redmagickyi/util/Counter;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    .line 155
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/util/Counter;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;)V

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;-><init>(Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 169
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->ofFloat([F)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->isHasReceivedWords:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x2710

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x7530

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Counter;->setDuration(J)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->setInterpolator(Landroid/view/animation/Interpolator;)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/Counter;->postToMainThread(Z)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->start()Lcn/nubia/redmagickyi/util/Counter;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->counter:Lcn/nubia/redmagickyi/util/Counter;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method synthetic lambda$onRecognizeCompleted$0$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Audio2TextSession$2(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 8

    .line 181
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->isHasReceivedWords:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 185
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->startCountdown()V

    .line 186
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->words:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onChatCompleted(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;IZ)Z

    move-result p3

    if-nez p3, :cond_1

    .line 188
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setMsg(Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1, v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->updateRecord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    :cond_1
    return-void
.end method

.method synthetic lambda$onRecognizeFailed$1$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Audio2TextSession$2(Lcom/zte/aivoice/code/ErrorCode;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Landroid/content/Context;)V
    .locals 2

    .line 208
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 209
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    invoke-virtual {p0, p2, p3, p4, v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    goto :goto_0

    .line 210
    :cond_0
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p1, v0, :cond_2

    .line 211
    invoke-static {p5}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 212
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    invoke-virtual {p0, p2, p3, p4, v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p3, p4, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    goto :goto_0

    .line 216
    :cond_2
    sget-object p3, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    if-ne p1, p3, :cond_3

    .line 217
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->stopAudio2TextSession(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRecognizeBegin()V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->startCountdown()V

    return-void
.end method

.method public onRecognizeCompleted(Ljava/lang/String;Z)V
    .locals 3

    .line 179
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "startSession received: result={}, isEnd={}"

    invoke-static {v0, v1, p2}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$botMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$userMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    new-instance v2, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p1, v1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    invoke-virtual {p2, v2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 9

    .line 200
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startSession onFailure: result={}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->counter:Lcn/nubia/redmagickyi/util/Counter;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/Counter;->cancel()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->stopASR()V

    .line 207
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$userMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v6, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$botMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$context:Landroid/content/Context;

    new-instance v8, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;Lcom/zte/aivoice/code/ErrorCode;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRecordingCompleted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRecordingVolumeUpdated(III)V
    .locals 0

    return-void
.end method
