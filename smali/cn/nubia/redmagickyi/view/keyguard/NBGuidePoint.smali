.class public Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;
.super Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;
.source "NBGuidePoint.java"


# static fields
.field private static final GUIDE_POINT_DELAY:I = 0xc8

.field private static final GUIDE_POINT_NUM:I = 0x10


# instance fields
.field private final mGuidePaint:Landroid/graphics/Paint;

.field private mGuidePointAnim:Landroid/animation/ValueAnimator;

.field private mGuidePointBitmap:Landroid/graphics/Bitmap;

.field private final mPointAlpha:[I

.field private final mPointX:[I

.field private final mPointY:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->setRedrawerListener(Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;)V

    const/16 p1, 0x10

    .line 29
    new-array p2, p1, [I

    iput-object p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointX:[I

    .line 30
    new-array p2, p1, [I

    iput-object p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointY:[I

    .line 31
    new-array p2, p1, [I

    iput-object p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointAlpha:[I

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 33
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointAlpha:[I

    const/16 v1, 0x19

    aput v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 36
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-wide/16 p1, 0x0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->initAnimation(J)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->updatePoints(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private updatePoints(Landroid/animation/ValueAnimator;)V
    .locals 13

    .line 86
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    rsub-int/lit8 v1, v0, 0x7

    mul-int/lit16 v1, v1, 0xc8

    int-to-long v1, v1

    int-to-long v3, p1

    cmp-long v5, v3, v1

    const/high16 v6, 0x41c80000    # 25.0f

    const/high16 v7, 0x43660000    # 230.0f

    const/high16 v8, 0x44160000    # 600.0f

    const-wide/16 v9, 0x258

    if-lez v5, :cond_0

    add-long v11, v1, v9

    cmp-long v5, v3, v11

    if-gez v5, :cond_0

    .line 91
    iget-object v5, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointAlpha:[I

    sub-long/2addr v3, v1

    long-to-float v1, v3

    div-float/2addr v1, v8

    mul-float/2addr v1, v7

    add-float/2addr v1, v6

    float-to-int v1, v1

    aput v1, v5, v0

    goto :goto_1

    :cond_0
    add-long/2addr v9, v1

    cmp-long v5, v3, v9

    const-wide/16 v9, 0x4b0

    if-lez v5, :cond_1

    add-long v11, v1, v9

    cmp-long v5, v3, v11

    if-gez v5, :cond_1

    .line 93
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointAlpha:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    goto :goto_1

    :cond_1
    add-long/2addr v9, v1

    cmp-long v5, v3, v9

    if-lez v5, :cond_2

    const-wide/16 v9, 0x708

    add-long/2addr v1, v9

    cmp-long v5, v3, v1

    if-gez v5, :cond_2

    .line 95
    iget-object v5, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointAlpha:[I

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v1, v8

    mul-float/2addr v1, v7

    add-float/2addr v1, v6

    float-to-int v1, v1

    aput v1, v5, v0

    .line 97
    :cond_2
    :goto_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointAlpha:[I

    rsub-int/lit8 v2, v0, 0xf

    aget v3, v1, v0

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_3
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;->redraw()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge p2, v0, :cond_0

    .line 55
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointAlpha:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointX:[I

    aget v1, v1, p2

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointY:[I

    aget v2, v2, p2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAnimTimeLeft()J
    .locals 4

    .line 122
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v2, p0

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getAnimator()Landroid/animation/ValueAnimator;
    .locals 0

    .line 137
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public initAnimation(J)V
    .locals 4

    .line 61
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    move v0, v1

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 64
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointAlpha:[I

    const/16 v3, 0x19

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xdac

    .line 67
    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    .line 68
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 71
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 72
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 73
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint$1;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint$1;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 82
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected initDrawable()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->redmagic_call_guide_point:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected recycle()V
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public setPositionXY(II)V
    .locals 4

    .line 105
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;->setPositionXY(II)V

    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0x10

    if-ge p1, p2, :cond_1

    .line 107
    iget-object p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointX:[I

    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPositionX:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    aput v0, p2, p1

    const/4 p2, 0x7

    if-le p1, p2, :cond_0

    .line 109
    iget-object p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointY:[I

    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPositionY:I

    add-int/lit8 v1, p1, -0x8

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->redmagic_call_guide_point_gap_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->redmagic_call_guide_point_gap_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointBitmap:Landroid/graphics/Bitmap;

    .line 112
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    aput v0, p2, p1

    goto :goto_1

    .line 114
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointY:[I

    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPositionY:I

    rsub-int/lit8 v1, p1, 0x7

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->redmagic_call_guide_point_gap_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->redmagic_call_guide_point_gap_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    aput v0, p2, p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopAnimation()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 128
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mGuidePointAnim:Landroid/animation/ValueAnimator;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 132
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->mPointAlpha:[I

    const/16 v2, 0x19

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
