.class public Lcn/nubia/redmagickyi/user/widget/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/user/widget/WheelView$OnScrollListener;,
        Lcn/nubia/redmagickyi/user/widget/WheelView$Formatter;,
        Lcn/nubia/redmagickyi/user/widget/WheelView$OnValueChangeListener;,
        Lcn/nubia/redmagickyi/user/widget/WheelView$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x4

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x4

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x9

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TWO_DIGIT_FORMATTER:Lcn/nubia/redmagickyi/user/widget/WheelView$TwoDigitFormatter;


# instance fields
.field private final EDGE_ALPHA:I

.field private final ENHANCED_ALPHA:I

.field private final MIDDLE_ALPHA:I

.field private mAdjustDrawPos:I

.field private mAdjustScroller:Landroid/widget/Scroller;

.field private mCurrentAlpha:I

.field private mCurrentLocationX:F

.field private mCurrentLocationY:F

.field private mCurrentScrollOffset:I

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcn/nubia/redmagickyi/user/widget/WheelView$Formatter;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInitialScrollOffset:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMaxValue:I

.field private mMaximumFlingVelocity:I

.field private mMiddleBottom:I

.field private mMiddleBottomEnd:I

.field private mMiddleTop:I

.field private mMiddleTopEnd:I

.field private mMiddleY:F

.field private mMinValue:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcn/nubia/redmagickyi/user/widget/WheelView$OnScrollListener;

.field private mOnValueChangeListener:Lcn/nubia/redmagickyi/user/widget/WheelView$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectedWheelPaint:Landroid/graphics/Paint;

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorTextGapHeightNotWrap:I

.field private mTextBound:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextShowRect:Landroid/graphics/Rect;

.field private mTextSize:I

.field private mTextsLocation:[F

.field private mTextsScaleX:[F

.field private mTextsSize:[F

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 682
    new-instance v0, Lcn/nubia/redmagickyi/user/widget/WheelView$TwoDigitFormatter;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/user/widget/WheelView$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->TWO_DIGIT_FORMATTER:Lcn/nubia/redmagickyi/user/widget/WheelView$TwoDigitFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    const/16 p2, 0xe1

    .line 32
    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->ENHANCED_ALPHA:I

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->EDGE_ALPHA:I

    const/16 v0, 0x96

    .line 34
    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->MIDDLE_ALPHA:I

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaskPaint:Landroid/graphics/Paint;

    const/16 v0, 0x9

    .line 47
    new-array v1, v0, [I

    iput-object v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndices:[I

    .line 49
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/high16 v1, -0x80000000

    .line 54
    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mInitialScrollOffset:I

    .line 74
    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mScrollState:I

    .line 79
    new-array p2, v0, [F

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsScaleX:[F

    .line 80
    new-array p2, v0, [F

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsSize:[F

    .line 81
    new-array p2, v0, [F

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsLocation:[F

    .line 89
    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    .line 90
    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {v1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p2, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    .line 92
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextPaint:Landroid/graphics/Paint;

    const v0, -0xffff01

    .line 93
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$color;->color_red_100:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    .line 96
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->nubia_wheelview_middle_zone_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 98
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 102
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_wheel_text_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextSize:I

    .line 104
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_wheel_adjust_pos:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mAdjustDrawPos:I

    .line 106
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTouchSlop:I

    .line 108
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinimumFlingVelocity:I

    .line 109
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaximumFlingVelocity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    const/16 p1, 0xe1

    .line 32
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->ENHANCED_ALPHA:I

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->EDGE_ALPHA:I

    const/16 p2, 0x96

    .line 34
    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->MIDDLE_ALPHA:I

    .line 40
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    .line 41
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    .line 42
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaskPaint:Landroid/graphics/Paint;

    const/16 p2, 0x9

    .line 47
    new-array p3, p2, [I

    iput-object p3, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndices:[I

    .line 49
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/high16 p3, -0x80000000

    .line 54
    iput p3, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mInitialScrollOffset:I

    .line 74
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mScrollState:I

    .line 79
    new-array p1, p2, [F

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsScaleX:[F

    .line 80
    new-array p1, p2, [F

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsSize:[F

    .line 81
    new-array p1, p2, [F

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsLocation:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    const/16 p1, 0xe1

    .line 32
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->ENHANCED_ALPHA:I

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->EDGE_ALPHA:I

    const/16 p2, 0x96

    .line 34
    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->MIDDLE_ALPHA:I

    .line 40
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    .line 41
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    .line 42
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaskPaint:Landroid/graphics/Paint;

    const/16 p2, 0x9

    .line 47
    new-array p3, p2, [I

    iput-object p3, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndices:[I

    .line 49
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/high16 p3, -0x80000000

    .line 54
    iput p3, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mInitialScrollOffset:I

    .line 74
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mScrollState:I

    .line 79
    new-array p1, p2, [F

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsScaleX:[F

    .line 80
    new-array p1, p2, [F

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsSize:[F

    .line 81
    new-array p1, p2, [F

    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsLocation:[F

    return-void
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 417
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 420
    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 422
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    iget p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 425
    :cond_1
    iget-object v7, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    iget v11, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 428
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->invalidate()V

    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 444
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 445
    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 447
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 448
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 449
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    .line 451
    aput v0, p1, v1

    .line 452
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 244
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 245
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 249
    :cond_0
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int p0, p1, v1

    .line 254
    aget-object p0, v2, p0

    goto :goto_1

    .line 256
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 250
    :cond_3
    :goto_0
    const-string p0, ""

    .line 259
    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 323
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mInitialScrollOffset:I

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 325
    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mPreviousScrollerY:I

    .line 326
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 330
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/16 v6, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 331
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    .line 488
    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 490
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 492
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 495
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 0

    .line 239
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mFormatter:Lcn/nubia/redmagickyi/user/widget/WheelView$Formatter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/user/widget/WheelView$Formatter;->format(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 240
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final getTwoDigitFormatter()Lcn/nubia/redmagickyi/user/widget/WheelView$Formatter;
    .locals 1

    .line 688
    sget-object v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->TWO_DIGIT_FORMATTER:Lcn/nubia/redmagickyi/user/widget/WheelView$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 1

    .line 220
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 221
    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinValue:I

    sub-int/2addr p1, v0

    sub-int/2addr v0, p0

    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 223
    :cond_0
    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinValue:I

    if-ge p1, p0, :cond_1

    sub-int p1, p0, p1

    sub-int p0, v0, p0

    .line 224
    rem-int/2addr p1, p0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    .line 432
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 433
    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 435
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 436
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 437
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinValue:I

    .line 439
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 440
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    .line 614
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setVerticalFadingEdgeEnabled(Z)V

    .line 615
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 5

    .line 585
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 586
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndices:[I

    .line 587
    array-length v1, v0

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextSize:I

    mul-int/2addr v1, v2

    .line 588
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 589
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 590
    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorTextGapHeight:I

    .line 592
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextSize:I

    mul-int/lit8 v1, v1, 0x5

    .line 593
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 594
    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorTextGapHeightNotWrap:I

    .line 596
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextSize:I

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorTextGapHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorElementHeight:I

    .line 597
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mInitialScrollOffset:I

    .line 598
    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentScrollOffset:I

    .line 599
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorElementHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMiddleTop:I

    .line 600
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorElementHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMiddleBottom:I

    .line 601
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getDrawTextAttri()V

    .line 602
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMiddleTop:I

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMiddleBottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMiddleY:F

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 263
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 264
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndices:[I

    .line 265
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 266
    :goto_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x4

    add-int/2addr v3, v1

    .line 268
    iget-boolean v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 269
    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 271
    :cond_0
    aput v3, v0, v2

    .line 272
    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/user/widget/WheelView;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 396
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 397
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 398
    iget p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 400
    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 402
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 410
    invoke-virtual {p0, p1, v1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    .line 456
    iget-object p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mOnValueChangeListener:Lcn/nubia/redmagickyi/user/widget/WheelView$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 457
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView$OnValueChangeListener;->onValueChange(Lcn/nubia/redmagickyi/user/widget/WheelView;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 202
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 205
    :cond_0
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mScrollState:I

    .line 206
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mOnScrollListener:Lcn/nubia/redmagickyi/user/widget/WheelView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 207
    invoke-interface {v0, p0, p1}, Lcn/nubia/redmagickyi/user/widget/WheelView$OnScrollListener;->onScrollStateChange(Lcn/nubia/redmagickyi/user/widget/WheelView;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->ensureScrollWheelAdjusted()Z

    const/4 p1, 0x0

    .line 197
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->onScrollStateChange(I)V

    :cond_0
    return-void
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 466
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 469
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 470
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 472
    :cond_1
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 473
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 475
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mValue:I

    .line 476
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mValue:I

    if-eqz p2, :cond_2

    .line 478
    invoke-direct {p0, v0, p1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->notifyChange(II)V

    .line 480
    :cond_2
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 481
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->invalidate()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    .line 128
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    .line 130
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 135
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 136
    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 137
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mPreviousScrollerY:I

    .line 139
    :cond_1
    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mPreviousScrollerY:I

    sub-int v2, v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->scrollBy(II)V

    .line 140
    iput v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mPreviousScrollerY:I

    .line 141
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->invalidate()V

    :goto_0
    return-void
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    .line 632
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method public getDrawTextAttri()V
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x3fc90fdb

    float-to-double v1, v1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v1, v3, v1

    double-to-float v1, v1

    .line 504
    iget v2, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorElementHeight:I

    mul-int/lit8 v5, v2, 0x8

    int-to-float v5, v5

    mul-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    .line 508
    iget-object v6, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndices:[I

    .line 509
    iget v7, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentScrollOffset:I

    int-to-float v7, v7

    const/4 v8, 0x0

    .line 510
    :goto_0
    array-length v9, v6

    if-ge v8, v9, :cond_1

    .line 511
    iget v9, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mInitialScrollOffset:I

    int-to-float v9, v9

    sub-float v9, v7, v9

    const v10, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v10, v9

    div-float/2addr v10, v5

    add-float/2addr v10, v1

    .line 514
    iget-object v9, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsSize:[F

    iget v11, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextSize:I

    int-to-double v11, v11

    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v11, v15

    double-to-float v10, v11

    aput v10, v9, v8

    .line 515
    iget-object v9, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsSize:[F

    aget v10, v9, v8

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    .line 516
    aput v11, v9, v8

    .line 518
    :cond_0
    iget-object v9, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsLocation:[F

    iget v10, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mInitialScrollOffset:I

    int-to-float v10, v10

    add-float/2addr v10, v2

    float-to-double v10, v10

    sub-double v15, v13, v3

    .line 519
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    float-to-double v3, v2

    mul-double/2addr v15, v3

    add-double/2addr v10, v15

    iget-object v3, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsSize:[F

    aget v3, v3, v8

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v10, v3

    iget v3, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mAdjustDrawPos:I

    int-to-double v3, v3

    sub-double/2addr v10, v3

    double-to-float v3, v10

    aput v3, v9, v8

    .line 521
    iget-object v3, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsScaleX:[F

    const-wide v9, 0x3fc999999999999aL    # 0.2

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    const-wide v9, 0x3fe999999999999aL    # 0.8

    add-double/2addr v11, v9

    double-to-float v4, v11

    iget v9, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextSize:I

    int-to-float v9, v9

    iget-object v10, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsSize:[F

    aget v10, v10, v8

    div-float/2addr v9, v10

    mul-float/2addr v4, v9

    aput v4, v3, v8

    .line 523
    iget v3, v0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorElementHeight:I

    int-to-float v3, v3

    add-float/2addr v7, v3

    add-int/lit8 v8, v8, 0x1

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getMaxValue()I
    .locals 0

    .line 319
    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaxValue:I

    return p0
.end method

.method public getMiddleBottom()I
    .locals 0

    .line 610
    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMiddleBottom:I

    return p0
.end method

.method public getMiddleTop()I
    .locals 0

    .line 606
    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMiddleTop:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    .line 315
    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinValue:I

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 311
    iget p0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mValue:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 529
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndices:[I

    const/4 v1, 0x0

    move v2, v1

    .line 530
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 531
    aget v3, v0, v2

    .line 532
    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 533
    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsLocation:[F

    aget v4, v4, v2

    iput v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentLocationY:F

    .line 534
    iget v5, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMiddleY:F

    sub-float/2addr v4, v5

    .line 535
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43960000    # 300.0f

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    rsub-int v4, v4, 0x96

    iput v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentAlpha:I

    .line 536
    iget-object v5, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 537
    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 538
    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    .line 539
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    .line 538
    invoke-virtual {v4, v3, v1, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 540
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 541
    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsScaleX:[F

    aget v4, v4, v2

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 542
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getLeft()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    iget-object v6, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iput v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentLocationX:F

    .line 543
    iget-object v6, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsLocation:[F

    aget v6, v6, v2

    iget-object v7, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsScaleX:[F

    aget v7, v7, v2

    mul-float/2addr v6, v7

    iput v6, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentLocationY:F

    .line 544
    iget-object v6, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v6, Landroid/graphics/Rect;->left:I

    .line 545
    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v6, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentLocationY:F

    iget-object v7, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget-object v8, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsScaleX:[F

    aget v8, v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 546
    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v6, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentLocationX:F

    iget-object v7, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 547
    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v6, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentLocationY:F

    iget-object v7, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iget-object v8, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsScaleX:[F

    aget v8, v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 549
    iget v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentLocationX:F

    iget v6, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentLocationY:F

    iget-object v7, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 551
    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    iget v6, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMiddleTop:I

    int-to-float v6, v6

    iget-object v7, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsScaleX:[F

    aget v7, v7, v2

    mul-float/2addr v6, v7

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v6, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMiddleBottom:I

    int-to-float v6, v6

    iget-object v7, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsScaleX:[F

    aget v7, v7, v2

    mul-float/2addr v6, v7

    cmpg-float v4, v4, v6

    if-gez v4, :cond_0

    .line 553
    iget v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMiddleTop:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    add-float/2addr v4, v5

    .line 554
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMiddleBottom:I

    int-to-float v6, v6

    iget-object v7, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextsScaleX:[F

    aget v7, v7, v2

    mul-float/2addr v6, v7

    const/4 v7, 0x0

    .line 553
    invoke-virtual {p1, v7, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 555
    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextShowRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 556
    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    const/16 v5, 0xe1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 557
    iget-object v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTextSize:I

    add-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 558
    iget v4, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentLocationX:F

    iget v5, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentLocationY:F

    iget-object v6, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectedWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 561
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 576
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 578
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->initializeSelectorWheel()V

    .line 579
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->initializeFadingEdges()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 567
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->nubia_wheel_hight:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 570
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 569
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 339
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 340
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 342
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    goto/16 :goto_2

    .line 359
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 360
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mScrollState:I

    if-eq v0, v2, :cond_2

    .line 361
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 362
    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mTouchSlop:I

    if-le v0, v1, :cond_3

    .line 363
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/user/widget/WheelView;->onScrollStateChange(I)V

    goto :goto_0

    .line 366
    :cond_2
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 367
    invoke-virtual {p0, v1, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->scrollBy(II)V

    .line 368
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->invalidate()V

    .line 370
    :cond_3
    :goto_0
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mLastDownOrMoveEventY:F

    goto :goto_2

    .line 374
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 375
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaximumFlingVelocity:I

    int-to-float v0, v0

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 376
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    float-to-int p1, p1

    .line 377
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinimumFlingVelocity:I

    if-le v0, v3, :cond_5

    .line 378
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->fling(I)V

    goto :goto_1

    .line 380
    :cond_5
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->ensureScrollWheelAdjusted()Z

    .line 381
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->onScrollStateChange(I)V

    .line 384
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 385
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    .line 345
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mLastDownEventY:F

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mLastDownOrMoveEventY:F

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mLastDownEventTime:J

    .line 347
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 348
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_7

    .line 349
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 350
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 351
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->onScrollStateChange(I)V

    goto :goto_2

    .line 352
    :cond_7
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_8

    .line 353
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 354
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_8
    :goto_2
    return v2
.end method

.method public scrollBy(II)V
    .locals 4

    .line 150
    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndices:[I

    .line 151
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mWrapSelectorWheel:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    aget v2, p1, v1

    iget v3, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinValue:I

    if-gt v2, v3, :cond_0

    .line 153
    iget p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mInitialScrollOffset:I

    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentScrollOffset:I

    return-void

    :cond_0
    if-nez v0, :cond_1

    if-gez p2, :cond_1

    .line 156
    aget v2, p1, v1

    iget v3, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaxValue:I

    if-lt v2, v3, :cond_1

    .line 158
    iget p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mInitialScrollOffset:I

    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentScrollOffset:I

    return-void

    :cond_1
    if-nez v0, :cond_3

    .line 162
    aget v0, p1, v1

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinValue:I

    if-le v0, v2, :cond_2

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaxValue:I

    if-lt v0, v2, :cond_3

    .line 165
    :cond_2
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorTextGapHeightNotWrap:I

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorTextGapHeight:I

    .line 168
    :cond_3
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentScrollOffset:I

    .line 169
    :cond_4
    :goto_0
    iget p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentScrollOffset:I

    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorTextGapHeight:I

    const/4 v3, 0x1

    if-le v0, v2, :cond_5

    .line 171
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentScrollOffset:I

    .line 172
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->decrementSelectorIndices([I)V

    .line 173
    aget p2, p1, v1

    invoke-direct {p0, p2, v3}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setValueInternal(IZ)V

    .line 174
    iget-boolean p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez p2, :cond_4

    aget p2, p1, v1

    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinValue:I

    if-gt p2, v0, :cond_4

    .line 176
    iget p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mInitialScrollOffset:I

    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentScrollOffset:I

    goto :goto_0

    .line 179
    :cond_5
    :goto_1
    iget p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentScrollOffset:I

    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v0, v2, :cond_6

    .line 180
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentScrollOffset:I

    .line 181
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->incrementSelectorIndices([I)V

    .line 182
    aget p2, p1, v1

    invoke-direct {p0, p2, v3}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setValueInternal(IZ)V

    .line 183
    iget-boolean p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mWrapSelectorWheel:Z

    if-nez p2, :cond_5

    aget p2, p1, v1

    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaxValue:I

    if-lt p2, v0, :cond_5

    .line 185
    iget p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mInitialScrollOffset:I

    iput p2, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mCurrentScrollOffset:I

    goto :goto_1

    .line 188
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->getDrawTextAttri()V

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 624
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 627
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mDisplayedValues:[Ljava/lang/String;

    .line 628
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setFormatter(Lcn/nubia/redmagickyi/user/widget/WheelView$Formatter;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mFormatter:Lcn/nubia/redmagickyi/user/widget/WheelView$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 234
    :cond_0
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mFormatter:Lcn/nubia/redmagickyi/user/widget/WheelView$Formatter;

    .line 235
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 294
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 300
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaxValue:I

    .line 301
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mValue:I

    if-ge p1, v0, :cond_1

    .line 302
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mValue:I

    .line 304
    :cond_1
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 305
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setWrapSelectorWheel(Z)V

    .line 306
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 307
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->invalidate()V

    return-void

    .line 298
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMinValue(I)V
    .locals 1

    .line 277
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 283
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinValue:I

    .line 284
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mValue:I

    if-le p1, v0, :cond_1

    .line 285
    iput p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mValue:I

    .line 287
    :cond_1
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaxValue:I

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndices:[I

    array-length p1, p1

    if-le v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 288
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setWrapSelectorWheel(Z)V

    .line 289
    invoke-direct {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->initializeSelectorWheelIndices()V

    .line 290
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->invalidate()V

    return-void

    .line 281
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnValueChangedListener(Lcn/nubia/redmagickyi/user/widget/WheelView$OnValueChangeListener;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mOnValueChangeListener:Lcn/nubia/redmagickyi/user/widget/WheelView$OnValueChangeListener;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 462
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/user/widget/WheelView;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 212
    iget v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMaxValue:I

    iget v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 213
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    .line 215
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/user/widget/WheelView;->mWrapSelectorWheel:Z

    :cond_2
    return-void
.end method
