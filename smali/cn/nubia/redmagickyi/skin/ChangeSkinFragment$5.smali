.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;
.super Ljava/lang/Object;
.source "ChangeSkinFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->initDataView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

.field final synthetic val$age:Landroid/widget/TextView;

.field final synthetic val$age_value:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

.field final synthetic val$birth_day:Landroid/widget/TextView;

.field final synthetic val$birth_day_value:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

.field final synthetic val$blood_type:Landroid/widget/TextView;

.field final synthetic val$blood_type_value:Landroid/widget/TextView;

.field final synthetic val$model_hight:Landroid/widget/TextView;

.field final synthetic val$model_hight_value:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

.field final synthetic val$model_weight:Landroid/widget/TextView;

.field final synthetic val$model_weight_value:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Landroid/widget/TextView;Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;Landroid/widget/TextView;Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;Landroid/widget/TextView;Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;Landroid/widget/TextView;Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
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

    .line 410
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$birth_day:Landroid/widget/TextView;

    iput-object p3, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$birth_day_value:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

    iput-object p4, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$model_hight:Landroid/widget/TextView;

    iput-object p5, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$model_hight_value:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

    iput-object p6, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$model_weight:Landroid/widget/TextView;

    iput-object p7, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$model_weight_value:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

    iput-object p8, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$age:Landroid/widget/TextView;

    iput-object p9, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$age_value:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

    iput-object p10, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$blood_type:Landroid/widget/TextView;

    iput-object p11, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$blood_type_value:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private resize(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 6

    .line 436
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    .line 437
    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 438
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    if-lez v0, :cond_3

    if-lez v2, :cond_3

    if-lez v1, :cond_3

    add-int v3, v0, v1

    if-le v3, v2, :cond_3

    .line 442
    div-int/lit8 v3, v2, 0x2

    sub-int v4, v0, v3

    int-to-float v4, v4

    .line 443
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_10_dp:I

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    cmpg-float p0, v4, p0

    if-gtz p0, :cond_0

    .line 444
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    sub-int/2addr v2, v0

    .line 445
    iput v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 446
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    if-le v0, v3, :cond_1

    if-ge v1, v3, :cond_1

    .line 448
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    sub-int/2addr v2, v1

    .line 449
    iput v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 450
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    if-ge v0, v3, :cond_2

    if-le v1, v3, :cond_2

    .line 452
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    sub-int/2addr v2, v0

    .line 453
    iput v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 454
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 456
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 457
    iput v3, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 458
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 460
    iput v3, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 461
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 413
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$birth_day:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$birth_day_value:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->resize(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 414
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$model_hight:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$model_hight_value:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->resize(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 415
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$model_weight:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$model_weight_value:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->resize(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 416
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$age:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$age_value:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeTextView;

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->resize(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 417
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$blood_type:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->val$blood_type_value:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->resize(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 419
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 420
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 421
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object v2, v2, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x800005

    goto :goto_0

    :cond_0
    const v2, 0x800003

    :goto_0
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 422
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 423
    :cond_1
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_4

    .line 424
    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object v2, v2, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    const/16 v3, 0x14

    const/16 v4, 0x15

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 425
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object v2, v2, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 426
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$800(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    :cond_4
    :goto_2
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/redmagickyi/util/Utils;->isOrientationPortrait(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 429
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$5;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->dataView:Landroid/view/View;

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget p0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_54_dp:I

    goto :goto_3

    :cond_5
    sget p0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_14_dp:I

    :goto_3
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_4

    .line 431
    :cond_6
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_4
    return-void
.end method
