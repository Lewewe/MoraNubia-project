.class Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$1;
.super Ljava/lang/Object;
.source "Audio2TextSession.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->startCountdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCounterValueChanged(FZ)V
    .locals 6

    if-eqz p2, :cond_2

    .line 159
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$botMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result p1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    if-eqz p1, :cond_1

    .line 163
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;->stopASR()V

    .line 165
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->access$200()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->access$400(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "startSession completed: result={}, isEnd={}"

    invoke-static {p1, v0, p2}, Lcn/nubia/redmagickyi/util/Logs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->access$000(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;)Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;

    move-result-object v0

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;

    iget-object v1, p1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$userMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;

    iget-object v2, p1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->val$botMessage:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$1;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->access$400(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/morachat/main/function/chat/AbstractChatManager;->onChatCompleted(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/String;IZ)Z

    :cond_2
    return-void
.end method
