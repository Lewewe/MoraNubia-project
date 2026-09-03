.class public final synthetic Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

.field public final synthetic f$3:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda0;->f$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda0;->f$2:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda0;->f$3:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda0;->f$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda0;->f$2:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda0;->f$3:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {v0, v1, v2, p0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2;->lambda$onFailure$1$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Text2TextSession$2(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    return-void
.end method
