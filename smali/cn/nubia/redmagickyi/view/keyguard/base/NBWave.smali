.class public Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;
.super Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;
.source "NBWave.java"


# instance fields
.field private final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final SCALE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mAlpha:I

.field private mAnimatorWave:Landroid/animation/AnimatorSet;

.field private mRadius:F

.field private mScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;II)V
    .locals 2

    .line 50
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave$1;

    const-class v0, Ljava/lang/Float;

    const-string v1, "NBWave_Scale"

    invoke-direct {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave$1;-><init>(Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->SCALE:Landroid/util/Property;

    .line 36
    new-instance p1, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave$2;

    const-class v0, Ljava/lang/Integer;

    const-string v1, "NBWave_Alpha"

    invoke-direct {p1, p0, v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave$2;-><init>(Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->ALPHA:Landroid/util/Property;

    .line 51
    iput-object p2, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;

    .line 52
    invoke-virtual {p0, p3, p4}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->setPositionXY(II)V

    .line 53
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->initAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;F)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->setScale(F)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->setAlpha(I)V

    return-void
.end method

.method private initAnimation()V
    .locals 8

    .line 57
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mAnimatorWave:Landroid/animation/AnimatorSet;

    .line 61
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->SCALE:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x7d0

    .line 62
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 63
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 65
    iget-object v5, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->ALPHA:Landroid/util/Property;

    const/16 v6, 0xdd

    const/4 v7, 0x0

    filled-new-array {v6, v7}, [I

    move-result-object v6

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 66
    invoke-virtual {v5, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 67
    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mAnimatorWave:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v7

    const/4 v1, 0x1

    aput-object v5, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mAnimatorWave:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method private setAlpha(I)V
    .locals 1

    .line 111
    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 112
    iput p1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mAlpha:I

    .line 113
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;->redraw()V

    :cond_0
    return-void
.end method

.method private setScale(F)V
    .locals 1

    .line 100
    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mScale:F

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iput p1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mScale:F

    .line 102
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;->redraw()V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mAnimatorWave:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method protected draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4

    .line 120
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 122
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 123
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$color;->redmagic_call_ringing_wave_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 125
    iget v1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mAlpha:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x1

    .line 126
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget v1, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mPositionX:I

    int-to-float v1, v1

    iget v2, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mPositionY:I

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mRadius:F

    iget p0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mScale:F

    mul-float/2addr v3, p0

    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    .line 128
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 129
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method getAlpha()I
    .locals 0

    .line 107
    iget p0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mAlpha:I

    return p0
.end method

.method getScale()F
    .locals 0

    .line 96
    iget p0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mScale:F

    return p0
.end method

.method protected initDrawable()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$drawable;->redmagic_call_white_circle_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mRadius:F

    return-void
.end method

.method public isStopped()Z
    .locals 0

    .line 92
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->mAnimatorWave:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected recycle()V
    .locals 0

    return-void
.end method
