.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$4;
.super Ljava/lang/Object;
.source "ChatMsgAdapter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->startLoadingWord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

.field final synthetic val$target:Ljava/lang/String;

.field final synthetic val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 463
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$4;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$4;->val$target:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$4;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 466
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$4;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 467
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 468
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$4;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$4;->val$target:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->access$402(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$4;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iget-object v0, v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$4;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$4;->val$target:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$4;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$4;->val$userMsg:Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;->onUserItemProcessingWord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    :cond_0
    return-void
.end method
