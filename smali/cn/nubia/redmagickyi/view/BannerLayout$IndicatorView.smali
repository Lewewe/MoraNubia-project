.class Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;
.super Landroid/widget/FrameLayout;
.source "BannerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/BannerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IndicatorView"
.end annotation


# instance fields
.field private indicatorDividerWidth:I

.field private indicatorMarginLeft:I

.field private indicatorRadius:I

.field private indicatorSelectedColor:I

.field private indicatorSelectedPaint:Landroid/graphics/Paint;

.field private indicatorUnSelectedColor:I

.field private indicatorUnselectedPaint:Landroid/graphics/Paint;

.field private indicatorsPath:[Landroid/graphics/Path;

.field final synthetic this$0:Lcn/nubia/redmagickyi/view/BannerLayout;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/view/BannerLayout;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;-><init>(Lcn/nubia/redmagickyi/view/BannerLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/view/BannerLayout;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;-><init>(Lcn/nubia/redmagickyi/view/BannerLayout;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/redmagickyi/view/BannerLayout;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->this$0:Lcn/nubia/redmagickyi/view/BannerLayout;

    .line 124
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;[Landroid/graphics/Path;)[Landroid/graphics/Path;
    .locals 0

    .line 107
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorsPath:[Landroid/graphics/Path;

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->setWillNotDraw(Z)V

    .line 131
    sget v0, Lcn/nubia/redmagickyi/main/R$color;->yellow_FFFED084:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorSelectedColor:I

    .line 132
    sget v0, Lcn/nubia/redmagickyi/main/R$color;->white_FFFFFFFF:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorUnSelectedColor:I

    .line 134
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorDividerWidth:I

    .line 135
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorRadius:I

    .line 136
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2p88_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorMarginLeft:I

    return-void
.end method

.method private initIndicatorsPath()V
    .locals 7

    .line 159
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorsPath:[Landroid/graphics/Path;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->this$0:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/BannerLayout;->access$100(Lcn/nubia/redmagickyi/view/BannerLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->this$0:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/BannerLayout;->access$100(Lcn/nubia/redmagickyi/view/BannerLayout;)I

    move-result v0

    new-array v0, v0, [Landroid/graphics/Path;

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorsPath:[Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 161
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorsPath:[Landroid/graphics/Path;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 162
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 163
    iget v3, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorMarginLeft:I

    iget v4, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorRadius:I

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v1

    mul-int/2addr v5, v4

    add-int/2addr v3, v5

    iget v5, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorDividerWidth:I

    mul-int/2addr v5, v0

    add-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v5, v4

    int-to-float v4, v4

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 164
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorsPath:[Landroid/graphics/Path;

    aput-object v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupPaints()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorSelectedPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorSelectedPaint:Landroid/graphics/Paint;

    .line 148
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorSelectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorSelectedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorUnselectedPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorUnselectedPaint:Landroid/graphics/Paint;

    .line 153
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorUnselectedPaint:Landroid/graphics/Paint;

    iget p0, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorUnSelectedColor:I

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 171
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 172
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->initIndicatorsPath()V

    .line 173
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorsPath:[Landroid/graphics/Path;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->this$0:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/BannerLayout;->access$200(Lcn/nubia/redmagickyi/view/BannerLayout;)Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/BannerLayout$BannerRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->this$0:Lcn/nubia/redmagickyi/view/BannerLayout;

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/BannerLayout;->access$100(Lcn/nubia/redmagickyi/view/BannerLayout;)I

    move-result v1

    rem-int/2addr v0, v1

    const/4 v1, 0x0

    .line 176
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorsPath:[Landroid/graphics/Path;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 177
    aget-object v2, v2, v1

    if-ne v1, v0, :cond_0

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorSelectedPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->indicatorUnselectedPaint:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 142
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/BannerLayout$IndicatorView;->setupPaints()V

    return-void
.end method
