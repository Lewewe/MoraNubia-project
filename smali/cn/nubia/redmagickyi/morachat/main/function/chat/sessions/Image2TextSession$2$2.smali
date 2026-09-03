.class Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$2;
.super Ljava/lang/Object;
.source "Image2TextSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->isAccountLogin(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->access$100(Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;)Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;

    move-result-object v0

    .line 152
    iget v0, v0, Lcn/nubia/redmagickyi/morachat/main/bean/BalanceStatus;->status:I

    const/4 v1, -0x2

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    invoke-virtual {p0, v3, v3, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2$2;->this$1:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession$2;->this$0:Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;-><init>()V

    invoke-virtual {p0, v3, v0, v2}, Lcn/nubia/redmagickyi/morachat/main/function/chat/sessions/Image2TextSession;->endExecute(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V

    :goto_0
    return-void
.end method
