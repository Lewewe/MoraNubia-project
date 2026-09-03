.class public final synthetic Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2;

.field public final synthetic f$1:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

.field public final synthetic f$2:Ljava/lang/StringBuilder;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

.field public final synthetic f$5:I

.field public final synthetic f$6:Z


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/StringBuilder;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;->f$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;->f$1:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;->f$2:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;->f$4:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iput p6, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;->f$5:I

    iput-boolean p7, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;->f$6:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;->f$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;->f$1:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;->f$2:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;->f$4:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    iget v5, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;->f$5:I

    iget-boolean v6, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2$$ExternalSyntheticLambda1;->f$6:Z

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$2;->lambda$onSuccess$0$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Text2TextSession$2(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Ljava/lang/StringBuilder;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;IZ)V

    return-void
.end method
