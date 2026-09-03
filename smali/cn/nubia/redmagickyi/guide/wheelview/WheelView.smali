.class public Lcn/nubia/redmagickyi/guide/wheelview/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I

.field private static final PADDING:I


# instance fields
.field private SHADOWS_COLORS:[I

.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/guide/wheelview/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/guide/wheelview/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private drawShadows:Z

.field private firstItem:I

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/widget/LinearLayout;

.field label:Ljava/lang/String;

.field private recycle:Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;

.field private scroller:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

.field scrollingListener:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private viewAdapter:Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

.field private visibleItems:I

.field private wheelBackground:I

.field private wheelForeground:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_4_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->PADDING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 116
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, -0x191a04

    const v1, 0xffffff

    .line 35
    filled-new-array {v0, v1, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->SHADOWS_COLORS:[I

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    const/4 v1, 0x5

    .line 50
    iput v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->visibleItems:I

    .line 53
    iput v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemHeight:I

    .line 59
    sget v1, Lcn/nubia/redmagickyi/main/R$color;->app_start_guide_birth_trans:I

    iput v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->wheelBackground:I

    .line 60
    sget v1, Lcn/nubia/redmagickyi/main/R$color;->app_start_guide_birth_trans:I

    iput v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->wheelForeground:I

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->drawShadows:Z

    .line 75
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isCyclic:Z

    .line 87
    new-instance v0, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;-><init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->recycle:Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->changingListeners:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->clickingListeners:Ljava/util/List;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->label:Ljava/lang/String;

    .line 130
    new-instance v0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;-><init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingListener:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;

    .line 209
    new-instance v0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$2;-><init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 117
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, -0x191a04

    const v0, 0xffffff

    .line 35
    filled-new-array {p2, v0, v0}, [I

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->SHADOWS_COLORS:[I

    const/4 p2, 0x0

    .line 47
    iput p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    const/4 v0, 0x5

    .line 50
    iput v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->visibleItems:I

    .line 53
    iput p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemHeight:I

    .line 59
    sget v0, Lcn/nubia/redmagickyi/main/R$color;->app_start_guide_birth_trans:I

    iput v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->wheelBackground:I

    .line 60
    sget v0, Lcn/nubia/redmagickyi/main/R$color;->app_start_guide_birth_trans:I

    iput v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->wheelForeground:I

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->drawShadows:Z

    .line 75
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isCyclic:Z

    .line 87
    new-instance p2, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;-><init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->recycle:Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;

    .line 90
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->changingListeners:Ljava/util/List;

    .line 91
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    .line 92
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->clickingListeners:Ljava/util/List;

    .line 94
    const-string p2, ""

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->label:Ljava/lang/String;

    .line 130
    new-instance p2, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;-><init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingListener:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;

    .line 209
    new-instance p2, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$2;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$2;-><init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 109
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, -0x191a04

    const p3, 0xffffff

    .line 35
    filled-new-array {p2, p3, p3}, [I

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->SHADOWS_COLORS:[I

    const/4 p2, 0x0

    .line 47
    iput p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    const/4 p3, 0x5

    .line 50
    iput p3, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->visibleItems:I

    .line 53
    iput p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemHeight:I

    .line 59
    sget p3, Lcn/nubia/redmagickyi/main/R$color;->app_start_guide_birth_trans:I

    iput p3, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->wheelBackground:I

    .line 60
    sget p3, Lcn/nubia/redmagickyi/main/R$color;->app_start_guide_birth_trans:I

    iput p3, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->wheelForeground:I

    const/4 p3, 0x1

    .line 67
    iput-boolean p3, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->drawShadows:Z

    .line 75
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isCyclic:Z

    .line 87
    new-instance p2, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;-><init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->recycle:Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;

    .line 90
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->changingListeners:Ljava/util/List;

    .line 91
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    .line 92
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->clickingListeners:Ljava/util/List;

    .line 94
    const-string p2, ""

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->label:Ljava/lang/String;

    .line 130
    new-instance p2, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$1;-><init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingListener:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;

    .line 209
    new-instance p2, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$2;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView$2;-><init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 101
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isScrollingPerformed:Z

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scroller:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    return-object p0
.end method

.method private addViewItem(IZ)Z
    .locals 1

    .line 922
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 925
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 927
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private buildViewForMeasuring()V
    .locals 4

    .line 899
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 900
    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->recycle:Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;

    iget v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    new-instance v3, Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;

    invoke-direct {v3}, Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcn/nubia/redmagickyi/guide/wheelview/ItemsRange;)I

    goto :goto_0

    .line 902
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->createItemsLayout()V

    .line 906
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->visibleItems:I

    div-int/lit8 v0, v0, 0x2

    .line 907
    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    add-int/2addr v1, v0

    :goto_1
    iget v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    const/4 v2, 0x1

    .line 908
    invoke-direct {p0, v1, v2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 909
    iput v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private calculateLayoutWidth(II)I
    .locals 4

    .line 542
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->initResourcesIfNecessary()V

    .line 545
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 547
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 546
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 548
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    sget v3, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 556
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 563
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    sget p2, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->PADDING:I

    mul-int/lit8 p2, p2, 0x2

    sub-int p2, p1, p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 564
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 563
    invoke-virtual {p0, p2, v0}, Landroid/widget/LinearLayout;->measure(II)V

    return p1
.end method

.method private createItemsLayout()V
    .locals 2

    .line 888
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 889
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 p0, 0x1

    .line 890
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method private doScroll(I)V
    .locals 7

    .line 732
    iget v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    .line 734
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getItemHeight()I

    move-result p1

    .line 735
    iget v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    div-int/2addr v0, p1

    .line 737
    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    sub-int/2addr v1, v0

    .line 738
    iget-object v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->viewAdapter:Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    invoke-interface {v2}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 740
    iget v3, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    rem-int/2addr v3, p1

    .line 741
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v5, p1, 0x2

    const/4 v6, 0x0

    if-gt v4, v5, :cond_0

    move v3, v6

    .line 744
    :cond_0
    iget-boolean v4, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isCyclic:Z

    if-eqz v4, :cond_4

    if-lez v2, :cond_4

    if-lez v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_0
    if-gez v1, :cond_3

    add-int/2addr v1, v2

    goto :goto_0

    .line 756
    :cond_3
    rem-int/2addr v1, v2

    goto :goto_1

    :cond_4
    if-gez v1, :cond_5

    .line 760
    iget v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    move v1, v6

    goto :goto_1

    :cond_5
    if-lt v1, v2, :cond_6

    .line 763
    iget v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    :cond_6
    if-lez v1, :cond_7

    if-lez v3, :cond_7

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    if-gez v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 774
    :cond_8
    :goto_1
    iget v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    .line 775
    iget v3, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    if-eq v1, v3, :cond_9

    .line 776
    invoke-virtual {p0, v1, v6}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setCurrentItem(IZ)V

    goto :goto_2

    .line 778
    :cond_9
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->invalidate()V

    :goto_2
    mul-int/2addr v0, p1

    sub-int/2addr v2, v0

    .line 782
    iput v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    .line 783
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getHeight()I

    move-result p1

    if-le v2, p1, :cond_a

    .line 784
    iget p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getHeight()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    :cond_a
    return-void
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 9

    .line 669
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 670
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getItemHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 678
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, 0xff0000

    .line 679
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 682
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sub-int v2, v0, v1

    int-to-float v6, v2

    .line 684
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getWidth()I

    move-result v2

    int-to-float v5, v2

    const/4 v3, 0x0

    move-object v2, p1

    move v4, v6

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v0, v1

    int-to-float v6, v0

    .line 686
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getWidth()I

    move-result p0

    int-to-float v5, p0

    move v4, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 3

    .line 653
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 655
    iget v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getItemHeight()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 656
    sget v1, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->PADDING:I

    int-to-float v1, v1

    neg-int v0, v0

    iget v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 658
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 660
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 4

    .line 636
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getItemHeight()I

    .line 639
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 640
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 643
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 644
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 509
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemHeight:I

    .line 513
    :cond_0
    iget p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemHeight:I

    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->visibleItems:I

    mul-int/2addr p1, v1

    div-int/lit8 v0, v0, 0x32

    sub-int/2addr p1, v0

    .line 514
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getSuggestedMinimumHeight()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getItemHeight()I
    .locals 2

    .line 523
    iget v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    return v0

    .line 527
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemHeight:I

    return v0

    .line 531
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getHeight()I

    move-result v0

    iget p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->visibleItems:I

    div-int/2addr v0, p0

    return v0
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 2

    .line 954
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->viewAdapter:Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 957
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->viewAdapter:Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 958
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 959
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->viewAdapter:Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->recycle:Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0, p0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    .line 966
    :cond_2
    rem-int/2addr p1, v0

    .line 967
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->viewAdapter:Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->recycle:Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, p1, v1, p0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getItemsRange()Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;
    .locals 5

    .line 805
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getItemHeight()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 809
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    const/4 v1, 0x1

    .line 812
    :goto_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 817
    :cond_1
    iget v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    if-eqz v2, :cond_3

    if-lez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 824
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getItemHeight()I

    move-result p0

    div-int/2addr v2, p0

    sub-int/2addr v0, v2

    int-to-double v3, v1

    int-to-double v1, v2

    .line 826
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    add-double/2addr v3, v1

    double-to-int v1, v3

    .line 828
    :cond_3
    new-instance p0, Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;-><init>(II)V

    return-object p0
.end method

.method private initData(Landroid/content/Context;)V
    .locals 2

    .line 126
    new-instance p1, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingListener:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;

    invoke-direct {p1, v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scroller:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 3

    .line 487
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->wheelForeground:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    .line 491
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 492
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 495
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 496
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 499
    :cond_2
    iget v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->wheelBackground:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setBackgroundResource(I)V

    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 1

    .line 943
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->viewAdapter:Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->viewAdapter:Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    .line 944
    invoke-interface {p0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result p0

    if-ge p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private layout(II)V
    .locals 1

    .line 606
    sget v0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    .line 608
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method private rebuildItems()Z
    .locals 6

    .line 838
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getItemsRange()Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;

    move-result-object v0

    .line 839
    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 840
    iget-object v4, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->recycle:Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;

    iget v5, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    invoke-virtual {v4, v1, v5, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcn/nubia/redmagickyi/guide/wheelview/ItemsRange;)I

    move-result v1

    .line 841
    iget v4, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    if-eq v4, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 842
    :goto_0
    iput v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    goto :goto_1

    .line 844
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->createItemsLayout()V

    move v4, v3

    :goto_1
    if-nez v4, :cond_4

    .line 849
    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;->getFirst()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;->getCount()I

    move-result v4

    if-eq v1, v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v3

    .line 852
    :cond_4
    :goto_3
    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;->getFirst()I

    move-result v5

    if-le v1, v5, :cond_6

    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;->getLast()I

    move-result v5

    if-gt v1, v5, :cond_6

    .line 853
    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    sub-int/2addr v1, v3

    :goto_4
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;->getFirst()I

    move-result v5

    if-lt v1, v5, :cond_7

    .line 854
    invoke-direct {p0, v1, v3}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->addViewItem(IZ)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    .line 857
    :cond_5
    iput v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 860
    :cond_6
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;->getFirst()I

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    .line 863
    :cond_7
    :goto_5
    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    .line 864
    iget-object v3, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    :goto_6
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 865
    iget v5, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    add-int/2addr v5, v3

    invoke-direct {p0, v5, v2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->addViewItem(IZ)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 869
    :cond_9
    iput v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    return v4
.end method

.method private updateView()V
    .locals 2

    .line 878
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->calculateLayoutWidth(II)I

    .line 880
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->layout(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelChangedListener;)V
    .locals 0

    .line 245
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addClickingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelClickedListener;)V
    .locals 0

    .line 311
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScrollingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;)V
    .locals 0

    .line 275
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public drawShadows()Z
    .locals 0

    .line 420
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->drawShadows:Z

    return p0
.end method

.method public getCurrentItem()I
    .locals 0

    .line 338
    iget p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    return p0
.end method

.method public getViewAdapter()Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;
    .locals 0

    .line 205
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->viewAdapter:Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    return-object p0
.end method

.method public getVisibleItems()I
    .locals 0

    .line 185
    iget p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->visibleItems:I

    return p0
.end method

.method public invalidateWheel(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 470
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->recycle:Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->clearAll()V

    .line 471
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 472
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    const/4 p1, 0x0

    .line 474
    iput p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    goto :goto_0

    .line 475
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 477
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->recycle:Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;

    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->firstItem:I

    new-instance v2, Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;

    invoke-direct {v2}, Lcn/nubia/redmagickyi/guide/wheelview/ItemsRange;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcn/nubia/redmagickyi/guide/wheelview/ItemsRange;)I

    .line 480
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->invalidate()V

    return-void
.end method

.method public isCyclic()Z
    .locals 0

    .line 401
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isCyclic:Z

    return p0
.end method

.method protected notifyChangingListeners(II)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/guide/wheelview/OnWheelChangedListener;

    .line 265
    invoke-interface {v1, p0, p1, p2}, Lcn/nubia/redmagickyi/guide/wheelview/OnWheelChangedListener;->onChanged(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/guide/wheelview/OnWheelClickedListener;

    .line 328
    invoke-interface {v1, p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/OnWheelClickedListener;->onItemClicked(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;

    .line 301
    invoke-interface {v1, p0}, Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;->onScrollingFinished(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;

    .line 292
    invoke-interface {v1, p0}, Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;->onScrollingStarted(Lcn/nubia/redmagickyi/guide/wheelview/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 613
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 615
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->viewAdapter:Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 616
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->updateView()V

    .line 618
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 619
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    .line 622
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->drawShadows:Z

    if-eqz v0, :cond_1

    .line 623
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->drawShadows(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 596
    invoke-direct {p0, p4, p5}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->layout(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 571
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 572
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 573
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 574
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 576
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->buildViewForMeasuring()V

    .line 578
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->calculateLayoutWidth(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 587
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    .line 591
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 692
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getViewAdapter()Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 696
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 705
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isScrollingPerformed:Z

    if-nez v0, :cond_4

    .line 706
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getHeight()I

    move-result v1

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 708
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    .line 710
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 712
    :goto_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 713
    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 714
    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->notifyClickListenersAboutClick(I)V

    goto :goto_1

    .line 699
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 700
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 723
    :cond_4
    :goto_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scroller:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_5
    :goto_2
    return v1
.end method

.method public removeChangingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelChangedListener;)V
    .locals 0

    .line 254
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeClickingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelClickedListener;)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeScrollingListener(Lcn/nubia/redmagickyi/guide/wheelview/OnWheelScrollListener;)V
    .locals 0

    .line 284
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scroll(II)V
    .locals 1

    .line 795
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getItemHeight()I

    move-result v0

    mul-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    sub-int/2addr p1, v0

    .line 796
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scroller:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->scroll(II)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 4

    .line 348
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->viewAdapter:Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 352
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->viewAdapter:Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_3

    .line 354
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isCyclic:Z

    if-eqz v1, :cond_7

    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    .line 358
    :cond_2
    rem-int/2addr p1, v0

    .line 363
    :cond_3
    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    if-eq p1, v1, :cond_7

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    sub-int p2, p1, v1

    .line 366
    iget-boolean v3, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isCyclic:Z

    if-eqz v3, :cond_5

    .line 367
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    .line 368
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_5

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_1

    :cond_4
    neg-int p1, v0

    move p2, p1

    .line 372
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, v2}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scroll(II)V

    goto :goto_2

    .line 374
    :cond_6
    iput v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scrollingOffset:I

    .line 377
    iput p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->currentItem:I

    .line 379
    invoke-virtual {p0, v1, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->notifyChangingListeners(II)V

    .line 381
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->invalidate()V

    :cond_7
    :goto_2
    return-void
.end method

.method public setCyclic(Z)V
    .locals 0

    .line 410
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->isCyclic:Z

    const/4 p1, 0x0

    .line 411
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public setDrawShadows(Z)V
    .locals 0

    .line 429
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->drawShadows:Z

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scroller:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setShadowColor(III)V
    .locals 0

    .line 440
    filled-new-array {p1, p2, p3}, [I

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->SHADOWS_COLORS:[I

    return-void
.end method

.method public setViewAdapter(Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->viewAdapter:Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 231
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->viewAdapter:Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;

    if-eqz p1, :cond_1

    .line 233
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Lcn/nubia/redmagickyi/guide/wheelview/adapter/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    const/4 p1, 0x1

    .line 236
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0

    .line 196
    iput p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->visibleItems:I

    return-void
.end method

.method public setWheelBackground(I)V
    .locals 0

    .line 449
    iput p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->wheelBackground:I

    .line 450
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->setBackgroundResource(I)V

    return-void
.end method

.method public setWheelForeground(I)V
    .locals 1

    .line 459
    iput p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->wheelForeground:I

    .line 460
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->wheelForeground:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->centerDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public stopScrolling()V
    .locals 0

    .line 974
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelView;->scroller:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->stopScrolling()V

    return-void
.end method
