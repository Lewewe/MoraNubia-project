.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatMsgAdapter.java"


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


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 474
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;->val$target:Ljava/lang/String;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 487
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 488
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->access$302(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 489
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->loadingWord:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 477
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 478
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;->val$target:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->access$402(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Ljava/lang/String;)Ljava/lang/String;

    .line 479
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->loadingWord:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iget-object p1, p1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;->val$target:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;->this$1:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->access$302(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method
