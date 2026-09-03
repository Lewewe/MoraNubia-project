.class Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1$2;
.super Ljava/lang/Object;
.source "Audio2TextSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->isAccountLogin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 116
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;)Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    move-result-object v0

    .line 117
    iget v0, v0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;->status:I

    const/4 v1, -0x2

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    invoke-virtual {v0, p0, v3, v3, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$1;->val$speechManager:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;-><init>()V

    invoke-virtual {v0, p0, v3, v1, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    :goto_0
    return-void
.end method
