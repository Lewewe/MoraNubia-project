.class public Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AnimatedFrameLayout.java"


# static fields
.field private static final ANIM_DURATION:I = 0x12c

.field private static CLICK_SCALE:F = 0.95f

.field private static LONG_PRESS_DELAY:I = 0xc8

.field private static LONG_PRESS_SCALE:F = 0.9f


# instance fields
.field private animationSet:Landroid/view/animation/AnimationSet;

.field private clickInterpolator:Landroid/view/animation/PathInterpolator;

.field private duration:J

.field private fromAlpha:F

.field private fromScale:F

.field private handler:Landroid/os/Handler;

.field private isLongPressed:Z

.field private longPressRunnable:Ljava/lang/Runnable;

.field private onLongClickListener:Landroid/view/View$OnLongClickListener;

.field private onShortClickListener:Landroid/view/View$OnClickListener;

.field private originalScaleX:F

.field private originalScaleY:F

.field private repeatCount:I

.field private repeatMode:I

.field private toAlpha:F

.field private toScale:F


# direct methods
.method public static synthetic $r8$lambda$S1eHkZsenDofSR16-MjOMxoCEFI(Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->handleLongPress()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x3e8

    .line 20
    iput-wide v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->duration:J

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromAlpha:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toAlpha:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 23
    iput v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromScale:F

    .line 24
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toScale:F

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatCount:I

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatMode:I

    .line 34
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->isLongPressed:Z

    .line 42
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x3e8

    .line 20
    iput-wide v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->duration:J

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromAlpha:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toAlpha:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 23
    iput v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromScale:F

    .line 24
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toScale:F

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatCount:I

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatMode:I

    .line 34
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->isLongPressed:Z

    .line 47
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->init()V

    .line 48
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x3e8

    .line 20
    iput-wide v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->duration:J

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromAlpha:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toAlpha:F

    const/high16 p3, 0x3f000000    # 0.5f

    .line 23
    iput p3, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromScale:F

    .line 24
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toScale:F

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatCount:I

    const/4 p3, 0x1

    .line 26
    iput p3, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatMode:I

    .line 34
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->isLongPressed:Z

    .line 53
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->init()V

    .line 54
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createAnimation()V
    .locals 12

    .line 90
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromAlpha:F

    iget v2, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toAlpha:F

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 93
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromScale:F

    iget v7, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toScale:F

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v3, v1

    move v4, v6

    move v5, v7

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 101
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v2, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animationSet:Landroid/view/animation/AnimationSet;

    .line 102
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 103
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 106
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animationSet:Landroid/view/animation/AnimationSet;

    iget-wide v1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->duration:J

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatCount:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animationSet:Landroid/view/animation/AnimationSet;

    iget v1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatMode:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    return-void
.end method

.method private handleLongPress()V
    .locals 3

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->isLongPressed:Z

    .line 164
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->LONG_PRESS_SCALE:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->LONG_PRESS_SCALE:F

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->clickInterpolator:Landroid/view/animation/PathInterpolator;

    .line 167
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 171
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0, p0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 59
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->clickInterpolator:Landroid/view/animation/PathInterpolator;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->handler:Landroid/os/Handler;

    .line 63
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->getScaleX()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->originalScaleX:F

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->getScaleY()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->originalScaleY:F

    .line 67
    new-instance v0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->longPressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/nubia/redmagickyi/main/R$styleable;->AnimatedView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 74
    sget v0, Lcn/nubia/redmagickyi/main/R$styleable;->AnimatedView_animationDuration:I

    iget-wide v1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->duration:J

    long-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->duration:J

    .line 75
    sget v0, Lcn/nubia/redmagickyi/main/R$styleable;->AnimatedView_fromAlpha:I

    iget v1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromAlpha:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromAlpha:F

    .line 76
    sget v0, Lcn/nubia/redmagickyi/main/R$styleable;->AnimatedView_toAlpha:I

    iget v1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toAlpha:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toAlpha:F

    .line 77
    sget v0, Lcn/nubia/redmagickyi/main/R$styleable;->AnimatedView_fromScale:I

    iget v1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromScale:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromScale:F

    .line 78
    sget v0, Lcn/nubia/redmagickyi/main/R$styleable;->AnimatedView_toScale:I

    iget v1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toScale:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toScale:F

    .line 79
    sget v0, Lcn/nubia/redmagickyi/main/R$styleable;->AnimatedView_repeatCount:I

    iget v1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatCount:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatCount:I

    .line 80
    sget v0, Lcn/nubia/redmagickyi/main/R$styleable;->AnimatedView_repeatMode:I

    iget v1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatMode:I

    .line 81
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->createAnimation()V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 225
    iget-wide v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->duration:J

    return-wide v0
.end method

.method public getFromAlpha()F
    .locals 0

    .line 236
    iget p0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromAlpha:F

    return p0
.end method

.method public getFromScale()F
    .locals 0

    .line 254
    iget p0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromScale:F

    return p0
.end method

.method public getRepeatCount()I
    .locals 0

    .line 272
    iget p0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatCount:I

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    .line 283
    iget p0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatMode:I

    return p0
.end method

.method public getToAlpha()F
    .locals 0

    .line 245
    iget p0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toAlpha:F

    return p0
.end method

.method public getToScale()F
    .locals 0

    .line 263
    iget p0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toScale:F

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    .line 158
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 131
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->longPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->isLongPressed:Z

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->originalScaleX:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->originalScaleY:F

    .line 136
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 137
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->clickInterpolator:Landroid/view/animation/PathInterpolator;

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->originalScaleX:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->originalScaleY:F

    .line 143
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 144
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->clickInterpolator:Landroid/view/animation/PathInterpolator;

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 148
    :goto_0
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->isLongPressed:Z

    if-nez p1, :cond_2

    .line 149
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->onShortClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_2

    .line 150
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 154
    :cond_2
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->isLongPressed:Z

    return v4

    .line 117
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->CLICK_SCALE:F

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->CLICK_SCALE:F

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 119
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->clickInterpolator:Landroid/view/animation/PathInterpolator;

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 124
    iget-object p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->longPressRunnable:Ljava/lang/Runnable;

    sget v2, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->LONG_PRESS_DELAY:I

    int-to-long v2, v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->isLongPressed:Z

    return v4
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animationSet:Landroid/view/animation/AnimationSet;

    if-eqz p0, :cond_0

    .line 219
    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public setClickScale(F)V
    .locals 0

    .line 190
    sput p1, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->CLICK_SCALE:F

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 229
    iput-wide p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->duration:J

    .line 230
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animationSet:Landroid/view/animation/AnimationSet;

    if-eqz p0, :cond_0

    .line 231
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    :cond_0
    return-void
.end method

.method public setFromAlpha(F)V
    .locals 0

    .line 240
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromAlpha:F

    .line 241
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->createAnimation()V

    return-void
.end method

.method public setFromScale(F)V
    .locals 0

    .line 258
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->fromScale:F

    .line 259
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->createAnimation()V

    return-void
.end method

.method public setLongPressDelay(I)V
    .locals 0

    .line 200
    sput p1, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->LONG_PRESS_DELAY:I

    return-void
.end method

.method public setLongPressScale(F)V
    .locals 0

    .line 195
    sput p1, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->LONG_PRESS_SCALE:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 184
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iput-object p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->onShortClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 178
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 179
    iput-object p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    .line 276
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatCount:I

    .line 277
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animationSet:Landroid/view/animation/AnimationSet;

    if-eqz p0, :cond_0

    .line 278
    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    :cond_0
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 287
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->repeatMode:I

    .line 288
    iget-object p0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animationSet:Landroid/view/animation/AnimationSet;

    if-eqz p0, :cond_0

    .line 289
    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    :cond_0
    return-void
.end method

.method public setToAlpha(F)V
    .locals 0

    .line 249
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toAlpha:F

    .line 250
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->createAnimation()V

    return-void
.end method

.method public setToScale(F)V
    .locals 0

    .line 267
    iput p1, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->toScale:F

    .line 268
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->createAnimation()V

    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->clearAnimation()V

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->animationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/guidance/view/AnimatedFrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
