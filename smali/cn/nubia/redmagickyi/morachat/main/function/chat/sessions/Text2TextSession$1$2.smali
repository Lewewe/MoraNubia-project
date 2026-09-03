.class Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$2;
.super Ljava/lang/Object;
.source "Text2TextSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->isAccountLogin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 129
    invoke-static {}, Lcom/zte/aimodel/utils/ModelSwitchController;->isIsProModel()Z

    move-result v0

    .line 130
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object v1, v1, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    invoke-static {v1, v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;Z)Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    move-result-object v0

    .line 131
    iget v0, v0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;->status:I

    const/4 v1, -0x2

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 138
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    invoke-virtual {p0, v3, v3, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession$1;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;-><init>()V

    invoke-virtual {p0, v3, v0, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Text2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    :goto_0
    return-void
.end method
