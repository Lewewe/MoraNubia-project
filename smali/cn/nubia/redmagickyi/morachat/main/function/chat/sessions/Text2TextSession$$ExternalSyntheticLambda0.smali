.class public final synthetic Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;


# direct methods
.method public synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$$ExternalSyntheticLambda0;->f$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$$ExternalSyntheticLambda0;->f$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    check-cast p1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->lambda$stopSession$0$cn-nubia-redmagickyi-morachat-main-function-chat-sessions-Text2TextSession(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)Z

    move-result p0

    return p0
.end method
