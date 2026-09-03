.class public Lcn/nubia/redmagickyi/view/BannerLayout;
.super Landroid/widget/FrameLayout;
.source "BannerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;,
        Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;
    }
.end annotation


# instance fields
.field private bannerRecyclerView:Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

.field private imageView:Landroid/widget/ImageView;

.field private indicatorView:Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;

.field private itemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/BannerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/view/BannerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/BannerLayout;->init()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/BannerLayout;)I
    .locals 0

    .line 22
    iget p0, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->itemCount:I

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/view/BannerLayout;)Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->bannerRecyclerView:Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    return-object p0
.end method

.method private init()V
    .locals 6

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/BannerLayout;->setWillNotDraw(Z)V

    .line 44
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/BannerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->imageView:Landroid/widget/ImageView;

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->svg_bg_mainscreen_banner:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 47
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->imageView:Landroid/widget/ImageView;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v3, v2}, Lcn/nubia/redmagickyi/view/BannerLayout;->addView(Landroid/view/View;II)V

    .line 49
    new-instance v0, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/BannerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;-><init>(Lcn/nubia/redmagickyi/view/BannerLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->bannerRecyclerView:Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    .line 50
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;->setVisibility(I)V

    .line 51
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_135_dp:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_45_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_3_dp:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 53
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 54
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_3_dp:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 55
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 56
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->bannerRecyclerView:Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    invoke-virtual {p0, v2, v0}, Lcn/nubia/redmagickyi/view/BannerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/BannerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;-><init>(Lcn/nubia/redmagickyi/view/BannerLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->indicatorView:Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;

    .line 59
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->setVisibility(I)V

    .line 60
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 61
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_52_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 62
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->indicatorView:Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/redmagickyi/view/BannerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getView()Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->bannerRecyclerView:Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    return-object p0
.end method

.method public onPageSelected()V
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->indicatorView:Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->invalidate()V

    return-void
.end method

.method public setItemCount(I)V
    .locals 4

    .line 70
    iput p1, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->itemCount:I

    .line 71
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-lez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->bannerRecyclerView:Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    if-lez p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->indicatorView:Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;

    const/4 v3, 0x1

    if-le p1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/BannerLayout;->indicatorView:Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->access$002(Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;[Landroid/graphics/Path;)[Landroid/graphics/Path;

    .line 75
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/BannerLayout;->invalidate()V

    return-void
.end method
