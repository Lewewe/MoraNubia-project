.class public Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;
.super Landroid/view/ViewGroup;
.source "UpCircleMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$OnMenuItemListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_BANNER_HEIGTH:F

.field public static final DEFAULT_BANNER_WIDTH:F

.field private static final FLINGABLE_VALUE:I = 0x12c

.field private static final NOCLICK_VALUE:I = 0x3

.field private static final QUADRANT_FOUR:I = 0x4

.field private static final QUADRANT_ONE:I = 0x1

.field private static final RADIO_DEFAULT_CHILD_DIMENSION:F

.field private static final RADIO_MARGIN_LAYOUT:F

.field private static final RADIO_PADDING_LAYOUT:F

.field private static final RADIO_TOP_CHILD_DIMENSION:F


# instance fields
.field private INIT_ROTATION:I

.field private RADIO_DEFAULT_CENTERITEM_DIMENSION:F

.field private isTouchUp:Z

.field private mCurrentPosition:I

.field private mDownTime:J

.field private mFlingableValue:I

.field private mItemImgs:[I

.field private mItemTexts:[Ljava/lang/String;

.field private mLastX:F

.field private mLastY:F

.field private mMenuItemCount:I

.field private mOnMenuItemListener:Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$OnMenuItemListener;

.field private mPadding:F

.field private mRadius:I

.field private mStartAngle:F

.field private mTmpAngle:F

.field private mcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_750_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->DEFAULT_BANNER_WIDTH:F

    .line 26
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_420_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->DEFAULT_BANNER_HEIGTH:F

    .line 31
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_58_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->RADIO_DEFAULT_CHILD_DIMENSION:F

    .line 33
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_68_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->RADIO_TOP_CHILD_DIMENSION:F

    .line 42
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_20_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->RADIO_PADDING_LAYOUT:F

    .line 45
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_20_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->RADIO_MARGIN_LAYOUT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x12

    .line 18
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->INIT_ROTATION:I

    const p2, 0x3eaaaaab

    .line 38
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->RADIO_DEFAULT_CENTERITEM_DIMENSION:F

    const/16 p2, 0x12c

    .line 59
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mFlingableValue:I

    const/high16 p2, 0x41200000    # 10.0f

    .line 68
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    const/4 p2, 0x1

    .line 95
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->isTouchUp:Z

    const/4 p2, 0x0

    .line 101
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mCurrentPosition:I

    .line 106
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mcontext:Landroid/content/Context;

    .line 108
    invoke-virtual {p0, p2, p2, p2, p2}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    return p1
.end method

.method private addMenuItems()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 455
    :goto_0
    iget v2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mMenuItemCount:I

    if-ge v1, v2, :cond_0

    .line 457
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 459
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 460
    iget-object v3, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mItemImgs:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 461
    new-instance v3, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$2;

    invoke-direct {v3, p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$2;-><init>(Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private backOrPre()V
    .locals 7

    .line 295
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mOnMenuItemListener:Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$OnMenuItemListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$OnMenuItemListener;->onMenuRollingStateChanged(Z)V

    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->isTouchUp:Z

    .line 297
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mItemImgs:[I

    array-length v2, v2

    const/16 v3, 0xb4

    div-int/2addr v3, v2

    int-to-float v2, v3

    .line 298
    iget v3, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float v5, v3, v4

    rem-float/2addr v5, v2

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    return-void

    :cond_0
    sub-float v4, v3, v4

    const/high16 v5, 0x41a00000    # 20.0f

    rem-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    cmpl-float v6, v5, v4

    if-lez v6, :cond_1

    sub-float v2, v3, v4

    goto :goto_0

    :cond_1
    cmpg-float v5, v5, v4

    if-gez v5, :cond_2

    sub-float v4, v3, v4

    add-float/2addr v2, v4

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    const/4 v4, 0x2

    .line 309
    new-array v4, v4, [F

    aput v3, v4, v1

    aput v2, v4, v0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 310
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 311
    new-instance v1, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$1;

    invoke-direct {v1, p0, v0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$1;-><init>(Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 320
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getAngle(FF)F
    .locals 6

    float-to-double v0, p1

    .line 394
    iget p0, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mRadius:I

    int-to-double v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    float-to-double p1, p2

    int-to-double v2, p0

    div-double/2addr v2, v4

    sub-double/2addr p1, v2

    .line 396
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method private getDefaultWidth()I
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 500
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 501
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 502
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getQuadrant(FF)I
    .locals 1

    .line 407
    iget p0, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mRadius:I

    div-int/lit8 v0, p0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v0, 0x2

    .line 408
    div-int/2addr p0, v0

    int-to-float p0, p0

    sub-float/2addr p2, p0

    float-to-int p0, p2

    if-ltz p1, :cond_1

    if-ltz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_1
    if-ltz p0, :cond_2

    const/4 v0, 0x3

    :cond_2
    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 337
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 346
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->isTouchUp:Z

    const/4 v2, -0x1

    .line 347
    iput v2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mCurrentPosition:I

    .line 351
    iget v2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mLastX:F

    iget v5, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mLastY:F

    invoke-direct {p0, v2, v5}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getAngle(FF)F

    move-result v2

    .line 355
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getAngle(FF)F

    move-result v5

    .line 357
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getQuadrant(FF)I

    move-result v6

    if-eq v6, v3, :cond_2

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getQuadrant(FF)I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    goto :goto_0

    .line 363
    :cond_1
    iget v6, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    sub-float/2addr v2, v5

    add-float/2addr v6, v2

    iput v6, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    .line 364
    iget v5, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mTmpAngle:F

    add-float/2addr v5, v2

    iput v5, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mTmpAngle:F

    goto :goto_1

    .line 358
    :cond_2
    :goto_0
    iget v6, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    sub-float/2addr v5, v2

    add-float/2addr v6, v5

    iput v6, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    .line 359
    iget v2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mTmpAngle:F

    add-float/2addr v2, v5

    iput v2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mTmpAngle:F

    .line 367
    :goto_1
    iget v2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mTmpAngle:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    .line 368
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->requestLayout()V

    .line 371
    :cond_3
    iput v0, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mLastX:F

    .line 372
    iput v1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mLastY:F

    .line 373
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mOnMenuItemListener:Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$OnMenuItemListener;

    invoke-interface {v0, v3}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$OnMenuItemListener;->onMenuRollingStateChanged(Z)V

    goto :goto_2

    .line 377
    :cond_4
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->backOrPre()V

    goto :goto_2

    .line 340
    :cond_5
    iput v0, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mLastX:F

    .line 341
    iput v1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mLastY:F

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mDownTime:J

    .line 343
    iput v4, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mTmpAngle:F

    .line 382
    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    .line 227
    iget v1, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mRadius:I

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getChildCount()I

    move-result v2

    .line 236
    iget-object v3, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mItemImgs:[I

    array-length v3, v3

    const/16 v4, 0xb4

    div-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_5

    .line 239
    invoke-virtual {v0, v5}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 242
    iget v7, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_0

    iget-boolean v7, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->isTouchUp:Z

    if-eqz v7, :cond_0

    .line 243
    sget v7, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->RADIO_TOP_CHILD_DIMENSION:F

    const/4 v8, 0x1

    .line 244
    invoke-virtual {v6, v8}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 246
    :cond_0
    sget v7, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->RADIO_DEFAULT_CHILD_DIMENSION:F

    .line 247
    invoke-virtual {v6, v4}, Landroid/view/View;->setSelected(Z)V

    .line 249
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    move v7, v5

    goto/16 :goto_3

    .line 253
    :cond_1
    iget v8, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    const/high16 v9, 0x43340000    # 180.0f

    rem-float/2addr v8, v9

    iput v8, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    int-to-float v9, v1

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    div-float v10, v7, v10

    sub-float/2addr v9, v10

    .line 257
    iget v10, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mPadding:F

    sub-float/2addr v9, v10

    .line 259
    div-int/lit8 v10, v1, 0x2

    float-to-double v11, v9

    float-to-double v8, v8

    .line 262
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v11

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v13, v7

    float-to-double v13, v13

    sub-double/2addr v8, v13

    .line 261
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    add-int/2addr v8, v10

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v15, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v8, v9

    .line 265
    iget v9, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    move v15, v5

    float-to-double v4, v9

    .line 268
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v11, v4

    sub-double/2addr v11, v13

    .line 267
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/2addr v10, v4

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/redmagickyi/main/R$dimen;->ns_f3_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v10, v4

    int-to-float v4, v8

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v5, v10

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 270
    invoke-virtual {v6, v8, v10, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 278
    iget v4, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mCurrentPosition:I

    const/4 v5, 0x0

    move v7, v15

    if-ne v7, v4, :cond_2

    iget-boolean v8, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->isTouchUp:Z

    if-eqz v8, :cond_2

    .line 279
    invoke-virtual {v6, v5}, Landroid/view/View;->setRotation(F)V

    .line 280
    iget-object v4, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mOnMenuItemListener:Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$OnMenuItemListener;

    invoke-interface {v4, v7}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$OnMenuItemListener;->onItemCenterChanged(I)V

    goto :goto_2

    :cond_2
    const/high16 v8, 0x42b40000    # 90.0f

    if-le v7, v4, :cond_3

    .line 282
    invoke-virtual {v6, v5}, Landroid/view/View;->setRotation(F)V

    .line 283
    iget v4, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    sub-float/2addr v4, v8

    invoke-virtual {v6, v4}, Landroid/view/View;->setRotation(F)V

    goto :goto_2

    :cond_3
    if-ge v7, v4, :cond_4

    .line 285
    invoke-virtual {v6, v5}, Landroid/view/View;->setRotation(F)V

    .line 286
    iget v4, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    sub-float/2addr v4, v8

    invoke-virtual {v6, v4}, Landroid/view/View;->setRotation(F)V

    .line 289
    :cond_4
    :goto_2
    iget v4, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    add-float/2addr v4, v3

    iput v4, v0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    :goto_3
    add-int/lit8 v5, v7, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 118
    iget v0, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    float-to-double v0, v0

    .line 120
    iget-object v2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mItemImgs:[I

    array-length v2, v2

    const/16 v3, 0xb4

    div-int/2addr v3, v2

    int-to-double v2, v3

    .line 124
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 125
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 127
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 128
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v4, 0x40000000    # 2.0f

    if-ne p1, v4, :cond_1

    if-eq p2, v4, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_480_dp:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    move p2, p1

    goto :goto_1

    .line 137
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getDefaultWidth()I

    move-result p1

    int-to-float p2, p1

    .line 139
    sget v5, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->DEFAULT_BANNER_HEIGTH:F

    mul-float/2addr p2, v5

    sget v5, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->DEFAULT_BANNER_WIDTH:F

    div-float/2addr p2, v5

    float-to-int p2, p2

    .line 147
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->setMeasuredDimension(II)V

    .line 150
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mRadius:I

    .line 153
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_2
    if-ge p2, p1, :cond_4

    .line 162
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const-wide v6, 0x4066800000000000L    # 180.0

    rem-double/2addr v0, v6

    .line 164
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    const-wide/16 v8, 0x5a

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->isTouchUp:Z

    if-eqz v6, :cond_2

    .line 165
    iget-object v6, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mOnMenuItemListener:Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$OnMenuItemListener;

    invoke-interface {v6, p2}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$OnMenuItemListener;->itemClick(I)V

    .line 166
    iput p2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mCurrentPosition:I

    .line 167
    sget v6, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->RADIO_TOP_CHILD_DIMENSION:F

    const/4 v7, 0x0

    .line 168
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 170
    :cond_2
    sget v6, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->RADIO_DEFAULT_CHILD_DIMENSION:F

    .line 171
    iget-object v7, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mItemImgs:[I

    aget v7, v7, p2

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    :goto_3
    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    goto :goto_4

    :cond_3
    float-to-int v6, v6

    .line 179
    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 181
    invoke-virtual {v5, v6, v6}, Landroid/widget/ImageView;->measure(II)V

    add-double/2addr v0, v2

    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 185
    :cond_4
    sget p1, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->RADIO_MARGIN_LAYOUT:F

    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mPadding:F

    return-void
.end method

.method public setAngle(I)V
    .locals 3

    .line 419
    iget-object v0, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mItemImgs:[I

    array-length v0, v0

    const/16 v1, 0xb4

    div-int/2addr v1, v0

    int-to-float v0, v1

    .line 420
    iget v1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mCurrentPosition:I

    if-le p1, v1, :cond_0

    .line 421
    iget v2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    sub-int/2addr v1, p1

    int-to-float p1, v1

    mul-float/2addr p1, v0

    add-float/2addr v2, p1

    iput v2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    goto :goto_0

    .line 423
    :cond_0
    iget v2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    sub-float/2addr v2, p1

    iput v2, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    .line 425
    :goto_0
    iget p1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    .line 426
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mStartAngle:F

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->requestLayout()V

    return-void
.end method

.method public setFlingableValue(I)V
    .locals 0

    .line 480
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mFlingableValue:I

    return-void
.end method

.method public setMenuItemIconsAndTexts([I)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mItemImgs:[I

    if-eqz p1, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 443
    :cond_0
    array-length p1, p1

    :goto_0
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mMenuItemCount:I

    .line 444
    invoke-direct {p0}, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->addMenuItems()V

    return-void

    .line 440
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mItemImgs == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnMenuItemListener(Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$OnMenuItemListener;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mOnMenuItemListener:Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout$OnMenuItemListener;

    return-void
.end method

.method public setPadding(F)V
    .locals 0

    .line 489
    iput p1, p0, Lcn/nubia/redmagickyi/alarm/view/UpCircleMenuLayout;->mPadding:F

    return-void
.end method
