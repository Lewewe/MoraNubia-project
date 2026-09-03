.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChatMsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BotHolder"
.end annotation


# instance fields
.field public ivCopy:Landroid/widget/ImageView;

.field public ivDislike:Landroid/widget/ImageView;

.field public ivLike:Landroid/widget/ImageView;

.field public ivOptionsMoreRight:Landroid/view/View;

.field public ivSpeech:Landroid/widget/ImageView;

.field public layoutMore:Landroid/view/View;

.field public layoutReceive:Landroid/view/View;

.field public spaceMoreBottom:Landroid/widget/Space;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

.field public tvAiTip:Landroid/widget/TextView;

.field public tvLoading:Landroid/view/View;

.field public tvReceive:Landroid/widget/TextView;

.field public tvTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 581
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    .line 582
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 583
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_receive:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->layoutReceive:Landroid/view/View;

    .line 584
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_receive:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvReceive:Landroid/widget/TextView;

    .line 585
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_loading:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvLoading:Landroid/view/View;

    .line 586
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_ai_tip:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvAiTip:Landroid/widget/TextView;

    .line 587
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_options_more_right:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivOptionsMoreRight:Landroid/view/View;

    .line 588
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->space_options_bottom:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->spaceMoreBottom:Landroid/widget/Space;

    .line 589
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_options:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->layoutMore:Landroid/view/View;

    .line 590
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_speech:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivSpeech:Landroid/widget/ImageView;

    .line 591
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_like:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivLike:Landroid/widget/ImageView;

    .line 592
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_dislike:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivDislike:Landroid/widget/ImageView;

    .line 593
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_copy:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivCopy:Landroid/widget/ImageView;

    .line 594
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvTime:Landroid/widget/TextView;

    .line 595
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvAiTip:Landroid/widget/TextView;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils$AIGC;->isZteModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_ai_tip_warn_zte:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_ai_tip_warn_redmagic:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->setClick()V

    .line 597
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 598
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvReceive:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_13p75_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 599
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvAiTip:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 601
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvReceive:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 602
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvAiTip:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_11_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    return-void
.end method

.method private setClick()V
    .locals 2

    .line 607
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivSpeech:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivLike:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivDislike:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder$$ExternalSyntheticLambda2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivCopy:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder$$ExternalSyntheticLambda3;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->layoutMore:Landroid/view/View;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder$$ExternalSyntheticLambda4;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setFeedbackStatus(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 751
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivDislike:Landroid/widget/ImageView;

    sget v0, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_morachat_action_thumb_down:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 752
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivLike:Landroid/widget/ImageView;

    sget p1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_morachat_action_thumb_up:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 746
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivDislike:Landroid/widget/ImageView;

    sget v0, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_morachat_action_thumb_down_on:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 747
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivLike:Landroid/widget/ImageView;

    sget p1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_morachat_action_thumb_up:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 742
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivDislike:Landroid/widget/ImageView;

    sget v0, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_morachat_action_thumb_down:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 743
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivLike:Landroid/widget/ImageView;

    sget p1, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_morachat_action_thumb_up_on:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bind(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZIZ)V
    .locals 7

    .line 683
    const-string v0, "ReceiveTextHolder bind data={}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ChatMsgAdapter"

    invoke-static {v2, v0, v1}, Lcn/nubia/redmagickyi/util/Logs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->itemView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->morachat_fs_chat_item_data_tag:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 685
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getFeedbackStatus()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->setFeedbackStatus(I)V

    .line 686
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 689
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvAiTip:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 687
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvAiTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 691
    :goto_1
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 692
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvLoading:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 695
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    :goto_2
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 699
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v5, v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->showBotWords(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Landroid/widget/TextView;Z)V

    goto :goto_3

    .line 701
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$600(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 702
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v5, v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->showBotWords(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Landroid/widget/TextView;Z)V

    goto :goto_3

    .line 704
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v5, v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->showBotWords(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;Landroid/widget/TextView;Z)V

    .line 707
    :goto_3
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->isSaying()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 708
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivSpeech:Landroid/widget/ImageView;

    sget v6, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_morachat_action_stop:I

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 709
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_4

    .line 711
    :cond_5
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivSpeech:Landroid/widget/ImageView;

    sget v6, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_morachat_action_play:I

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 712
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 714
    :goto_4
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 716
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->hideOptionsIcon()V

    .line 717
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p2

    iget-object p4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setContenView(Landroid/widget/TextView;)V

    .line 718
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p2

    iget-object p4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvReceive:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getLineCount()I

    move-result p4

    invoke-virtual {p2, p4}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setLineCount(I)V

    goto :goto_6

    :cond_6
    if-eqz p4, :cond_7

    .line 720
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->isOptionsExpanded()Z

    move-result p4

    if-nez p4, :cond_a

    :cond_7
    if-nez p2, :cond_9

    .line 721
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->isSaying()Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_5

    :cond_8
    move v4, v3

    :cond_9
    :goto_5
    invoke-virtual {p0, v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->isExpandOptions(Z)V

    .line 723
    :cond_a
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->setContenView(Landroid/widget/TextView;)V

    .line 725
    :goto_6
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result p2

    const/4 p4, 0x5

    if-eq p2, p4, :cond_c

    .line 726
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getExecutStatus()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_b

    goto :goto_7

    .line 733
    :cond_b
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->layoutReceive:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 734
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvTime:Landroid/widget/TextView;

    invoke-static {p1, p0, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$700(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;Landroid/widget/TextView;I)V

    goto :goto_8

    .line 729
    :cond_c
    :goto_7
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->layoutReceive:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 730
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    return-void
.end method

.method hideOptionsIcon()V
    .locals 3

    .line 677
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivOptionsMoreRight:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->layoutMore:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->spaceMoreBottom:Landroid/widget/Space;

    invoke-virtual {p0, v1}, Landroid/widget/Space;->setVisibility(I)V

    return-void
.end method

.method isExpandOptions(Z)V
    .locals 4

    .line 667
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivOptionsMoreRight:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->layoutMore:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 669
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->spaceMoreBottom:Landroid/widget/Space;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/Space;->setVisibility(I)V

    return-void
.end method

.method isOptionsExpanded()Z
    .locals 0

    .line 673
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->ivOptionsMoreRight:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method synthetic lambda$setClick$0$cn-nubia-redmagickyi-morachat-fullscreen-chat-adapter-ChatMsgAdapter$BotHolder(Landroid/view/View;)V
    .locals 1

    .line 608
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->itemView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->morachat_fs_chat_item_data_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 609
    instance-of v0, p1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;

    move-result-object p0

    check-cast p1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;->onTTSClicked(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$setClick$1$cn-nubia-redmagickyi-morachat-fullscreen-chat-adapter-ChatMsgAdapter$BotHolder(Landroid/view/View;)V
    .locals 2

    .line 616
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->itemView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->morachat_fs_chat_item_data_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 617
    instance-of v0, p1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    if-eqz v0, :cond_1

    .line 619
    check-cast p1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getFeedbackStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 629
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 630
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;->onFeedbackThumbChanged(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$setClick$2$cn-nubia-redmagickyi-morachat-fullscreen-chat-adapter-ChatMsgAdapter$BotHolder(Landroid/view/View;)V
    .locals 2

    .line 635
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->itemView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->morachat_fs_chat_item_data_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 636
    instance-of v0, p1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    if-eqz v0, :cond_1

    .line 638
    check-cast p1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getFeedbackStatus()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 648
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 649
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;->onFeedbackThumbChanged(ILcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    :cond_1
    return-void
.end method

.method synthetic lambda$setClick$3$cn-nubia-redmagickyi-morachat-fullscreen-chat-adapter-ChatMsgAdapter$BotHolder(Landroid/view/View;)V
    .locals 2

    .line 654
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->itemView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->morachat_fs_chat_item_data_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 655
    instance-of v0, p1, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 656
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getReceivedMsgEntry()Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage$ReceivedMsgEntry;->getMsg()Ljava/lang/String;

    move-result-object p1

    .line 657
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 658
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$ItemListener;->onCopyClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_0
    const-string p0, "ivCopy Click data info error, data={}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ChatMsgAdapter"

    invoke-static {v0, p0, p1}, Lcn/nubia/redmagickyi/util/Logs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$setClick$4$cn-nubia-redmagickyi-morachat-fullscreen-chat-adapter-ChatMsgAdapter$BotHolder(Landroid/view/View;)V
    .locals 0

    .line 0
    const/4 p1, 0x1

    .line 664
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$BotHolder;->isExpandOptions(Z)V

    return-void
.end method
