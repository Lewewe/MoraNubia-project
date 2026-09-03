.class public final synthetic Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;

.field public final synthetic f$1:Lcom/zte/aivoice/code/ErrorCode;

.field public final synthetic f$2:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

.field public final synthetic f$3:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

.field public final synthetic f$4:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

.field public final synthetic f$5:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;Lcom/zte/aivoice/code/ErrorCode;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;->f$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;->f$1:Lcom/zte/aivoice/code/ErrorCode;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;->f$2:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;->f$3:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p5, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;->f$4:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p6, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;->f$5:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;->f$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;->f$1:Lcom/zte/aivoice/code/ErrorCode;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;->f$2:Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;->f$3:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;->f$4:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2$$ExternalSyntheticLambda0;->f$5:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Audio2TextSession$2;->lambda$onRecognizeFailed$1$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Audio2TextSession$2(Lcom/zte/aivoice/code/ErrorCode;Lcn/nubia/redmagickyi/morachat/main/function/speech/SpeechManager;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Landroid/content/Context;)V

    return-void
.end method
