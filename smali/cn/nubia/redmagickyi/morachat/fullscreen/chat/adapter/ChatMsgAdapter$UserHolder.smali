.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ChatMsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserHolder"
.end annotation


# instance fields
.field public ivError:Landroid/widget/ImageView;

.field public ivSend:Landroid/widget/ImageView;

.field private lastWord:Ljava/lang/String;

.field public layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

.field public loadingWord:Landroid/view/View;

.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

.field public tvLoading:Landroid/view/View;

.field public tvSend:Landroid/widget/TextView;

.field public tvTime:Landroid/widget/TextView;

.field private typingAnimator:Landroid/animation/ValueAnimator;


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

    .line 251
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    .line 252
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 425
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->lastWord:Ljava/lang/String;

    .line 253
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_send:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    .line 254
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_loading:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvLoading:Landroid/view/View;

    .line 255
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->layout_loading_word:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->loadingWord:Landroid/view/View;

    .line 256
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_send:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    .line 257
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_send:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivSend:Landroid/widget/ImageView;

    .line 258
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 259
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivSend:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$1;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvTime:Landroid/widget/TextView;

    .line 271
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_error:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivError:Landroid/widget/ImageView;

    .line 272
    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$2;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 285
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_13p75_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 242
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->typingAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 242
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->typingAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$402(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 242
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->lastWord:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 0

    .line 242
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->buildTypingSpannable(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object p0

    return-object p0
.end method

.method private buildTypingSpannable(Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 6

    .line 504
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 508
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v2, 0x21

    if-lez p2, :cond_0

    .line 511
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    .line 512
    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$color;->morachat_fs_chat_user_text:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 511
    invoke-virtual {v1, v3, v0, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 519
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_15_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 520
    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$6;

    invoke-direct {v0, p0, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$6;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;I)V

    .line 531
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 520
    invoke-virtual {v1, v0, p0, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private commonPrefixLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 540
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 541
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    .line 543
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ge p0, v0, :cond_2

    .line 545
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0
.end method

.method private stopLoadingWord()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->loadingWord:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->typingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 430
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->typingAnimator:Landroid/animation/ValueAnimator;

    .line 431
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public bind(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;I)V
    .locals 8

    .line 293
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->itemView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->morachat_fs_chat_item_data_tag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 294
    instance-of v0, p2, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    if-eqz v0, :cond_0

    .line 295
    check-cast p2, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 297
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->itemView:Landroid/view/View;

    sget v1, Lcn/nubia/redmagickyi/main/R$id;->morachat_fs_chat_item_data_tag:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 298
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->isPicAttachment()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    .line 299
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 300
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getPaddingLeft()I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getPaddingTop()I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getPaddingRight()I

    move-result v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getPaddingBottom()I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 301
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v0, p2, p2, p2, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->setPadding(IIII)V

    .line 303
    :cond_2
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {p2, v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->setFullRound(Z)V

    .line 304
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivSend:Landroid/widget/ImageView;

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getImageSize()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;

    move-result-object p2

    .line 310
    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getAttachment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getImageSize(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_3

    .line 312
    aget v7, v0, v6

    .line 313
    aget v0, v0, v4

    .line 314
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->getMinWidth()I

    move-result v4

    if-lt v7, v4, :cond_3

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->getWidth()I

    move-result v4

    if-gt v7, v4, :cond_3

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->getMinHeight()I

    move-result v4

    if-lt v0, v4, :cond_3

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->getHeight()I

    move-result p2

    if-gt v0, p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v7, -0x2

    move v0, v7

    .line 319
    :goto_1
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivSend:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 320
    iget v4, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v7, :cond_4

    iget v4, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v0, :cond_5

    .line 321
    :cond_4
    iput v7, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 322
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 323
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivSend:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    :cond_5
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivSend:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v4, Lcn/nubia/redmagickyi/main/R$drawable;->morachat_fs_chat_thumbnail_placeholder:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    invoke-static {v6}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object p2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getAttachment()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$3;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$3;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;)V

    invoke-virtual {p2, v0, v4}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->loadImage(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;)V

    .line 347
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvLoading:Landroid/view/View;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 349
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->stopLoadingWord()V

    .line 350
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getExecuteCode()I

    move-result p2

    if-eqz p2, :cond_6

    .line 351
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getExecuteCode()I

    move-result p2

    if-eq p2, v3, :cond_6

    .line 352
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getExecuteCode()I

    move-result p1

    if-eq p1, v1, :cond_6

    .line 353
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivError:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 355
    :cond_6
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivError:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 357
    :cond_7
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->isAudioAttachment()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 358
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 359
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v7, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 360
    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getPaddingLeft()I

    move-result v7

    if-ne v7, v0, :cond_8

    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getPaddingTop()I

    move-result v7

    if-ne v7, v1, :cond_8

    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getPaddingRight()I

    move-result v7

    if-ne v7, v0, :cond_8

    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v7}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getPaddingBottom()I

    move-result v7

    if-eq v7, v1, :cond_9

    .line 361
    :cond_8
    iget-object v7, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v7, v0, v1, v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->setPadding(IIII)V

    .line 363
    :cond_9
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v0, v6}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->setFullRound(Z)V

    .line 364
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivSend:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getExecuteCode()I

    move-result v0

    if-eqz v0, :cond_e

    if-eq v0, v3, :cond_d

    .line 382
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 384
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvLoading:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 385
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->stopLoadingWord()V

    .line 386
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 389
    :cond_a
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvLoading:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_c

    .line 393
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_2

    :cond_b
    move v4, v6

    .line 396
    :cond_c
    :goto_2
    invoke-virtual {p0, p1, v6, v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->startLoadingWord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V

    goto :goto_3

    .line 375
    :cond_d
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvLoading:Landroid/view/View;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 376
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->stopLoadingWord()V

    .line 377
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_stoped:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 378
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$color;->morachat_fs_chat_user_text:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$color;->morachat_fs_chat_user_stop_text:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-static {v1, p1, p2, v3, v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;Ljava/lang/String;Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 369
    :cond_e
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvLoading:Landroid/view/View;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 370
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->stopLoadingWord()V

    .line 371
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v1

    sget v3, Lcn/nubia/redmagickyi/main/R$color;->morachat_fs_chat_user_text:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const-string v3, ""

    invoke-static {v0, p1, v3, v1, v6}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$200(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;Ljava/lang/String;Ljava/lang/String;II)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :goto_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivError:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 403
    :cond_f
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_16_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 404
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_12_dp:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 405
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getPaddingLeft()I

    move-result v4

    if-ne v4, p2, :cond_10

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getPaddingTop()I

    move-result v4

    if-ne v4, v0, :cond_10

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getPaddingRight()I

    move-result v4

    if-ne v4, p2, :cond_10

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->getPaddingBottom()I

    move-result v4

    if-eq v4, v0, :cond_11

    .line 406
    :cond_10
    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {v4, p2, v0, p2, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->setPadding(IIII)V

    .line 408
    :cond_11
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->layoutSend:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;

    invoke-virtual {p2, v6}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/pop/UserLayout;->setFullRound(Z)V

    .line 409
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivSend:Landroid/widget/ImageView;

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 411
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvLoading:Landroid/view/View;

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 413
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->stopLoadingWord()V

    .line 414
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getExecuteCode()I

    move-result p2

    if-eqz p2, :cond_12

    .line 415
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getExecuteCode()I

    move-result p2

    if-eq p2, v3, :cond_12

    .line 416
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getExecuteCode()I

    move-result p1

    if-eq p1, v1, :cond_12

    .line 417
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivError:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 419
    :cond_12
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->ivError:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method public startLoadingWord(Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;ZZ)V
    .locals 4

    .line 440
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->stopLoadingWord()V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 442
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->loadingWord:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;->getMessageContent()Ljava/lang/String;

    move-result-object p2

    .line 448
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->lastWord:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->commonPrefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 451
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 452
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->lastWord:Ljava/lang/String;

    .line 453
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->loadingWord:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 454
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->buildTypingSpannable(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 459
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    filled-new-array {v1, p3}, [I

    move-result-object p3

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->typingAnimator:Landroid/animation/ValueAnimator;

    .line 460
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->findBestMatcherLanguage(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object p3

    .line 461
    invoke-static {p3}, Lcom/zte/aimodel/feature/chat/method/gemini/FeatureChatGemini;->getTypingDelay(Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;)J

    move-result-wide v2

    .line 462
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->typingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    mul-long/2addr v0, v2

    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 463
    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->typingAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$4;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$4;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/bean/ChatMessage;)V

    invoke-virtual {p3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 474
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->typingAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;

    invoke-direct {p3, p0, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder$5;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 493
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->typingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_3

    .line 494
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 497
    :cond_2
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->lastWord:Ljava/lang/String;

    .line 498
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->loadingWord:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 499
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->tvSend:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/adapter/ChatMsgAdapter$UserHolder;->buildTypingSpannable(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method
