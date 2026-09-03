.class public Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "CarouselLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;,
        Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$PostLayoutListener;,
        Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;,
        Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$OnCenterItemSelectionListener;,
        Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;
    }
.end annotation


# static fields
.field private static final CIRCLE_LAYOUT:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_POSITION:I = -0x1

.field public static final MAX_VISIBLE_ITEMS:I = 0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mCenterItemPosition:I

.field private final mCircleLayout:Z

.field private mDecoratedChildHeight:Ljava/lang/Integer;

.field private mDecoratedChildWidth:Ljava/lang/Integer;

.field private mItemsCount:I

.field private final mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

.field private mLinearInterpolate:Z

.field private final mOnCenterItemSelectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$OnCenterItemSelectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientation:I

.field private mPendingCarouselSavedState:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;

.field private mPendingScrollPosition:I

.field private mViewPostLayout:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$PostLayoutListener;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    .line 86
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 58
    new-instance v0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOnCenterItemSelectionListeners:Ljava/util/List;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mCenterItemPosition:I

    const/4 v2, 0x0

    .line 66
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLinearInterpolate:Z

    if-eqz p1, :cond_1

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation should be HORIZONTAL or VERTICAL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_1
    :goto_0
    iput p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOrientation:I

    .line 91
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mCircleLayout:Z

    .line 92
    iput v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingScrollPosition:I

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->selectItemCenterPosition(I)V

    return-void
.end method

.method private bindChild(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Z)Landroid/view/View;
    .locals 0

    .line 570
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    .line 572
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->addView(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 573
    invoke-virtual {p0, p1, p2, p2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    return-object p1
.end method

.method private calculateScrollForSelectingPosition(ILandroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 394
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    .line 395
    :goto_0
    iget p2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOrientation:I

    if-ne v1, p2, :cond_1

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method private detectOnItemSelectionChanged(FLandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 417
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->makeScrollPositionInRange0ToCount(FI)F

    move-result p1

    .line 418
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 420
    iget p2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mCenterItemPosition:I

    if-eq p2, p1, :cond_0

    .line 421
    iput p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mCenterItemPosition:I

    .line 422
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$2;

    invoke-direct {v0, p0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$2;-><init>(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private fillChildItem(IIIILcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;Landroidx/recyclerview/widget/RecyclerView$Recycler;IZ)V
    .locals 1

    .line 470
    invoke-static {p5}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;->access$600(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;)I

    move-result v0

    invoke-direct {p0, v0, p6, p8}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->bindChild(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Z)Landroid/view/View;

    move-result-object p6

    int-to-float p7, p7

    .line 471
    invoke-virtual {p6, p7}, Landroid/view/View;->setElevation(F)V

    .line 473
    iget-object p7, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mViewPostLayout:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$PostLayoutListener;

    if-eqz p7, :cond_0

    .line 474
    invoke-static {p5}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;->access$500(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;)F

    move-result p5

    iget p8, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOrientation:I

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$000(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result v0

    invoke-interface {p7, p6, p5, p8, v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$PostLayoutListener;->transformChild(Landroid/view/View;FII)Lcn/nubia/redmagickyi/view/gallery/ItemTransformation;

    move-result-object p5

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    if-nez p5, :cond_1

    .line 477
    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    int-to-float p1, p1

    .line 479
    iget p7, p5, Lcn/nubia/redmagickyi/view/gallery/ItemTransformation;->mTranslationX:F

    add-float/2addr p1, p7

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p2

    iget p7, p5, Lcn/nubia/redmagickyi/view/gallery/ItemTransformation;->mTranslationY:F

    add-float/2addr p2, p7

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    int-to-float p3, p3

    iget p7, p5, Lcn/nubia/redmagickyi/view/gallery/ItemTransformation;->mTranslationX:F

    add-float/2addr p3, p7

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p4, p4

    iget p7, p5, Lcn/nubia/redmagickyi/view/gallery/ItemTransformation;->mTranslationY:F

    add-float/2addr p4, p7

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 480
    iget p1, p5, Lcn/nubia/redmagickyi/view/gallery/ItemTransformation;->mScaleX:F

    invoke-virtual {p6, p1}, Landroid/view/View;->setScaleX(F)V

    .line 481
    iget p1, p5, Lcn/nubia/redmagickyi/view/gallery/ItemTransformation;->mScaleY:F

    invoke-virtual {p6, p1}, Landroid/view/View;->setScaleY(F)V

    .line 483
    iget p1, p5, Lcn/nubia/redmagickyi/view/gallery/ItemTransformation;->mAlpha:F

    invoke-virtual {p6, p1}, Landroid/view/View;->setAlpha(F)V

    .line 485
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mViewPostLayout:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$PostLayoutListener;

    invoke-interface {p0, p6}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$PostLayoutListener;->onChildLayout(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private fillData(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 5

    .line 399
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getCurrentScrollPosition()F

    move-result v0

    .line 400
    invoke-direct {p0, v0, p2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->generateLayoutOrder(FLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 401
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 403
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getWidthNoPadding()I

    move-result v1

    .line 404
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getHeightNoPadding()I

    move-result v2

    const/4 v3, 0x1

    .line 405
    iget v4, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOrientation:I

    if-ne v3, v4, :cond_0

    .line 406
    invoke-direct {p0, p1, v1, v2, p3}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->fillDataVertical(Landroidx/recyclerview/widget/RecyclerView$Recycler;IIZ)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-direct {p0, p1, v1, v2, p3}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->fillDataHorizontal(Landroidx/recyclerview/widget/RecyclerView$Recycler;IIZ)V

    .line 411
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 413
    invoke-direct {p0, v0, p2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->detectOnItemSelectionChanged(FLandroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method private fillDataHorizontal(Landroidx/recyclerview/widget/RecyclerView$Recycler;IIZ)V
    .locals 15

    move-object v9, p0

    .line 453
    iget-object v0, v9, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v10, v0, 0x2

    .line 454
    iget-object v0, v9, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v11, v10, v0

    .line 456
    iget-object v0, v9, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v12, v0, 0x2

    .line 458
    iget-object v0, v9, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$400(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)[Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    move-result-object v0

    array-length v13, v0

    const/4 v0, 0x0

    move v14, v0

    :goto_0
    if-ge v14, v13, :cond_0

    .line 459
    iget-object v0, v9, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$400(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)[Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    move-result-object v0

    aget-object v5, v0, v14

    .line 460
    invoke-static {v5}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;->access$500(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getCardOffsetByPositionDiff(F)I

    move-result v0

    add-int v1, v12, v0

    .line 462
    iget-object v0, v9, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v3, v1, v0

    move-object v0, p0

    move v2, v10

    move v4, v11

    move-object/from16 v6, p1

    move v7, v14

    move/from16 v8, p4

    .line 463
    invoke-direct/range {v0 .. v8}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->fillChildItem(IIIILcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;Landroidx/recyclerview/widget/RecyclerView$Recycler;IZ)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fillDataVertical(Landroidx/recyclerview/widget/RecyclerView$Recycler;IIZ)V
    .locals 15

    move-object v9, p0

    .line 438
    iget-object v0, v9, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v10, v0, 0x2

    .line 439
    iget-object v0, v9, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v11, v10, v0

    .line 441
    iget-object v0, v9, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v12, v0, 0x2

    .line 443
    iget-object v0, v9, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$400(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)[Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    move-result-object v0

    array-length v13, v0

    const/4 v0, 0x0

    move v14, v0

    :goto_0
    if-ge v14, v13, :cond_0

    .line 444
    iget-object v0, v9, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$400(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)[Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;

    move-result-object v0

    aget-object v5, v0, v14

    .line 445
    invoke-static {v5}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;->access$500(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getCardOffsetByPositionDiff(F)I

    move-result v0

    add-int v2, v12, v0

    .line 447
    iget-object v0, v9, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v4, v2, v0

    move-object v0, p0

    move v1, v10

    move v3, v11

    move-object/from16 v6, p1

    move v7, v14

    move/from16 v8, p4

    .line 448
    invoke-direct/range {v0 .. v8}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->fillChildItem(IIIILcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutOrder;Landroidx/recyclerview/widget/RecyclerView$Recycler;IZ)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateLayoutOrder(FLandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 11

    .line 520
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mItemsCount:I

    .line 521
    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->makeScrollPositionInRange0ToCount(FI)F

    move-result p1

    .line 522
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 524
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mCircleLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mItemsCount:I

    if-ge v1, v0, :cond_2

    .line 525
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$000(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    iget v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mItemsCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 527
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->initLayoutOrder(I)V

    .line 529
    div-int/lit8 v2, v0, 0x2

    move v3, v1

    :goto_0
    if-gt v3, v2, :cond_0

    int-to-float v4, v3

    sub-float v5, p1, v4

    .line 532
    iget v6, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mItemsCount:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mItemsCount:I

    rem-int/2addr v5, v6

    .line 533
    iget-object v6, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    sub-int v7, v2, v3

    int-to-float v8, p2

    sub-float/2addr v8, p1

    sub-float/2addr v8, v4

    invoke-virtual {v6, v7, v5, v8}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, -0x1

    move v4, v3

    :goto_1
    add-int/lit8 v5, v2, 0x1

    if-lt v4, v5, :cond_1

    int-to-float v5, v4

    sub-float v6, p1, v5

    int-to-float v7, v0

    add-float/2addr v6, v7

    .line 537
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v8, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mItemsCount:I

    rem-int/2addr v6, v8

    .line 538
    iget-object v8, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    add-int/lit8 v9, v4, -0x1

    int-to-float v10, p2

    sub-float/2addr v10, p1

    add-float/2addr v10, v7

    sub-float/2addr v10, v5

    invoke-virtual {v8, v9, v6, v10}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 540
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    int-to-float v0, p2

    sub-float/2addr v0, p1

    invoke-virtual {p0, v3, p2, v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    goto :goto_4

    .line 543
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$000(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result v0

    sub-int v0, p2, v0

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 544
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$000(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result v2

    add-int/2addr v2, p2

    add-int/2addr v2, v1

    iget v3, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mItemsCount:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v3, v2, v0

    add-int/lit8 v4, v3, 0x1

    .line 547
    iget-object v5, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-virtual {v5, v4}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->initLayoutOrder(I)V

    move v5, v0

    :goto_2
    if-gt v5, v2, :cond_5

    if-ne v5, p2, :cond_3

    .line 551
    iget-object v6, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    int-to-float v7, v5

    sub-float/2addr v7, p1

    invoke-virtual {v6, v3, v5, v7}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    goto :goto_3

    :cond_3
    if-ge v5, p2, :cond_4

    .line 553
    iget-object v6, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    sub-int v7, v5, v0

    int-to-float v8, v5

    sub-float/2addr v8, p1

    invoke-virtual {v6, v7, v5, v8}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    goto :goto_3

    .line 555
    :cond_4
    iget-object v6, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    sub-int v7, v5, p2

    sub-int v7, v4, v7

    sub-int/2addr v7, v1

    int-to-float v8, v5

    sub-float/2addr v8, p1

    invoke-virtual {v6, v7, v5, v8}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    return-void
.end method

.method private getCurrentScrollPosition()F
    .locals 2

    .line 494
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getMaxScrollOffset()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 498
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$100(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getScrollItemSize()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method private getMaxScrollOffset()I
    .locals 1

    .line 505
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getScrollItemSize()I

    move-result v0

    iget p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mItemsCount:I

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr v0, p0

    return v0
.end method

.method private getScrollDirection(I)F
    .locals 2

    .line 249
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getCurrentScrollPosition()F

    move-result v0

    iget v1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mItemsCount:I

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->makeScrollPositionInRange0ToCount(FI)F

    move-result v0

    .line 251
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mCircleLayout:Z

    if-eqz v1, :cond_1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 253
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mItemsCount:I

    int-to-float p0, p0

    sub-float/2addr p1, p0

    .line 254
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    .line 255
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    mul-float/2addr p0, p1

    return p0

    :cond_0
    return v0

    :cond_1
    int-to-float p0, p1

    sub-float/2addr v0, p0

    return v0
.end method

.method private static makeScrollPositionInRange0ToCount(FI)F
    .locals 1

    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, v0, p0

    if-lez v0, :cond_0

    int-to-float v0, p1

    add-float/2addr p0, v0

    goto :goto_0

    .line 708
    :cond_0
    :goto_1
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lt v0, p1, :cond_1

    int-to-float v0, p1

    sub-float/2addr p0, v0

    goto :goto_1

    :cond_1
    return p0
.end method

.method private selectItemCenterPosition(I)V
    .locals 1

    .line 432
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOnCenterItemSelectionListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$OnCenterItemSelectionListener;

    .line 433
    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$OnCenterItemSelectionListener;->onCenterItemChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnItemSelectionListener(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$OnCenterItemSelectionListener;)V
    .locals 0

    .line 181
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOnCenterItemSelectionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOrientation:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrollVertically()Z
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 234
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 237
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getScrollDirection(I)F

    move-result p1

    .line 239
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    .line 241
    iget p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 242
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    .line 244
    :cond_1
    new-instance p0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method protected convertItemPositionDiffToSmoothPositionDiff(F)D
    .locals 8

    .line 628
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    .line 631
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$000(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    float-to-double v4, v2

    const-wide v6, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static {v4, v5, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v4

    cmpl-double v2, v0, v4

    if-lez v2, :cond_0

    .line 633
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$000(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {p0, p1, v0, v1}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p0

    return-wide p0

    .line 638
    :cond_0
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLinearInterpolate:Z

    if-eqz p1, :cond_1

    .line 639
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$000(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v3

    float-to-double p0, p0

    goto :goto_0

    :cond_1
    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    .line 641
    :goto_0
    invoke-static {v0, v1, p0, p1}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 144
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method protected getCardOffsetByPositionDiff(F)I
    .locals 5

    .line 593
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->convertItemPositionDiffToSmoothPositionDiff(F)D

    move-result-wide v0

    const/4 v2, 0x1

    .line 596
    iget v3, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOrientation:I

    if-ne v2, v3, :cond_0

    .line 597
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getHeightNoPadding()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getWidthNoPadding()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 602
    :goto_0
    iget-boolean v3, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLinearInterpolate:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    cmpg-float v4, p1, v3

    if-gez v4, :cond_1

    .line 604
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$000(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    :goto_1
    int-to-float p1, p0

    goto :goto_2

    :cond_1
    cmpl-float v3, p1, v3

    if-lez v3, :cond_3

    .line 606
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$000(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result p0

    goto :goto_1

    .line 609
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    :cond_3
    :goto_2
    int-to-float p0, v2

    mul-float/2addr p1, p0

    float-to-double p0, p1

    mul-double/2addr p0, v0

    .line 611
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public getCenterItemPosition()I
    .locals 0

    .line 170
    iget p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mCenterItemPosition:I

    return p0
.end method

.method public getHeightNoPadding()I
    .locals 2

    .line 566
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getPaddingStart()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getMaxVisibleItems()I
    .locals 0

    .line 131
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$000(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result p0

    return p0
.end method

.method protected getOffsetCenterView()I
    .locals 2

    .line 681
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getCurrentScrollPosition()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getScrollItemSize()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$100(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method protected getOffsetForCurrentView(Landroid/view/View;)I
    .locals 0

    .line 685
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 686
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getScrollDirection(I)F

    move-result p1

    .line 688
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getScrollItemSize()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 153
    iget p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOrientation:I

    return p0
.end method

.method protected getScrollItemSize()I
    .locals 2

    const/4 v0, 0x1

    .line 649
    iget v1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    .line 650
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 652
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getWidthNoPadding()I
    .locals 2

    .line 562
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public isLinearInterpolate()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLinearInterpolate:Z

    return p0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 343
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 345
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->removeAllViews()V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .line 352
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 354
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->selectItemCenterPosition(I)V

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 360
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 361
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->addView(Landroid/view/View;)V

    .line 362
    invoke-virtual {p0, v0, v3, v3}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 364
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    .line 365
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    .line 366
    invoke-virtual {p0, v0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 368
    iget v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingScrollPosition:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingCarouselSavedState:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;

    if-nez v0, :cond_1

    .line 369
    iget v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mCenterItemPosition:I

    iput v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingScrollPosition:I

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 375
    :goto_0
    iget v4, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingScrollPosition:I

    if-eq v1, v4, :cond_4

    .line 376
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-nez v4, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    sub-int/2addr v4, v2

    .line 377
    iget v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingScrollPosition:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1
    iput v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 379
    :cond_4
    iget v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingScrollPosition:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    .line 380
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-direct {p0, v2, p2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->calculateScrollForSelectingPosition(ILandroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    invoke-static {v4, v2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$102(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;I)I

    .line 381
    iput v1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 382
    iput-object v3, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingCarouselSavedState:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;

    goto :goto_2

    .line 383
    :cond_5
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingCarouselSavedState:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;

    if-eqz v2, :cond_6

    .line 384
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;->access$200(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->calculateScrollForSelectingPosition(ILandroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$102(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;I)I

    .line 385
    iput-object v3, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingCarouselSavedState:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;

    goto :goto_2

    .line 386
    :cond_6
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->didStructureChange()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mCenterItemPosition:I

    if-eq v1, v2, :cond_7

    .line 387
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-direct {p0, v2, p2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->calculateScrollForSelectingPosition(ILandroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$102(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;I)I

    .line 390
    :cond_7
    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->fillData(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 1

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    .line 335
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 668
    instance-of v0, p1, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;

    if-eqz v0, :cond_0

    .line 669
    check-cast p1, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingCarouselSavedState:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;

    .line 671
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;->access$700(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 673
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 658
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingCarouselSavedState:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;

    if-eqz v0, :cond_0

    .line 659
    new-instance v0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingCarouselSavedState:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;-><init>(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;)V

    return-object v0

    .line 661
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 662
    iget p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mCenterItemPosition:I

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;->access$202(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$CarouselSavedState;I)I

    return-object v0
.end method

.method public removeOnItemSelectionListener(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$OnCenterItemSelectionListener;)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOnCenterItemSelectionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 293
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_1

    goto :goto_3

    .line 300
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mCircleLayout:Z

    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$112(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;I)I

    .line 305
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getScrollItemSize()I

    move-result v0

    iget v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mItemsCount:I

    mul-int/2addr v0, v2

    .line 306
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$100(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result v2

    if-gez v2, :cond_2

    .line 307
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$112(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;I)I

    goto :goto_0

    .line 309
    :cond_2
    :goto_1
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$100(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result v2

    if-le v2, v0, :cond_3

    .line 310
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$120(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;I)I

    goto :goto_1

    .line 313
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$120(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;I)I

    goto :goto_2

    .line 315
    :cond_4
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->getMaxScrollOffset()I

    move-result v0

    .line 317
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$100(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result v2

    add-int/2addr v2, p1

    if-gez v2, :cond_5

    .line 318
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$100(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result p1

    neg-int p1, p1

    goto :goto_2

    .line 319
    :cond_5
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$100(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result v2

    add-int/2addr v2, p1

    if-le v2, v0, :cond_6

    .line 320
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$100(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;)I

    move-result p1

    sub-int p1, v0, p1

    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    .line 326
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$112(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;I)I

    .line 327
    invoke-direct {p0, p2, p3, v1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->fillData(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    :cond_7
    return p1

    :cond_8
    :goto_3
    return v1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    const/4 v0, 0x1

    .line 274
    iget v1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 277
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public scrollToPosition(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 197
    iput p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 198
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->requestLayout()V

    return-void

    .line 195
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "position can\'t be less then 0. position is : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 266
    iget v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 269
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public setCenterItemPosition(I)V
    .locals 0

    .line 174
    iput p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mCenterItemPosition:I

    return-void
.end method

.method public setLinearInterpolate(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLinearInterpolate:Z

    return-void
.end method

.method public setMaxVisibleItems(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 121
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mLayoutHelper:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;->access$002(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$LayoutHelper;I)I

    .line 122
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->requestLayout()V

    return-void

    .line 119
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxVisibleItems can\'t be less then 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPostLayoutListener(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$PostLayoutListener;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->mViewPostLayout:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$PostLayoutListener;

    .line 106
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->requestLayout()V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 204
    new-instance p2, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$1;-><init>(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;Landroid/content/Context;)V

    .line 227
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 228
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
