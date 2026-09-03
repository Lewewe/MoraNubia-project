.class public Lcn/nubia/redmagickyi/util/BezierAnimator;
.super Ljava/lang/Object;
.source "BezierAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/util/BezierAnimator$BezierEvaluator;,
        Lcn/nubia/redmagickyi/util/BezierAnimator$AnimatorUpdateListener;
    }
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private animatorUpdateListener:Lcn/nubia/redmagickyi/util/BezierAnimator$AnimatorUpdateListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(FFFF)Lcn/nubia/redmagickyi/util/BezierAnimator;
    .locals 3

    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 p0, 0x1

    aput-object v1, v0, p0

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 p2, 0x2

    aput-object p1, v0, p2

    new-instance p1, Landroid/graphics/PointF;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, p3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 p3, 0x3

    aput-object p1, v0, p3

    .line 25
    new-instance p1, Lcn/nubia/redmagickyi/util/BezierAnimator;

    invoke-direct {p1}, Lcn/nubia/redmagickyi/util/BezierAnimator;-><init>()V

    .line 26
    new-instance v1, Lcn/nubia/redmagickyi/util/BezierAnimator$BezierEvaluator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object p0, v0, p0

    aget-object p2, v0, p2

    invoke-direct {v1, p1, p0, p2}, Lcn/nubia/redmagickyi/util/BezierAnimator$BezierEvaluator;-><init>(Lcn/nubia/redmagickyi/util/BezierAnimator;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    aget-object p0, v0, v2

    aget-object p2, v0, p3

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    iput-object p0, p1, Lcn/nubia/redmagickyi/util/BezierAnimator;->animator:Landroid/animation/ValueAnimator;

    return-object p1
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)Lcn/nubia/redmagickyi/util/BezierAnimator;
    .locals 1

    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/BezierAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-object p0
.end method

.method public addUpdateListener(Lcn/nubia/redmagickyi/util/BezierAnimator$AnimatorUpdateListener;)Lcn/nubia/redmagickyi/util/BezierAnimator;
    .locals 1

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/BezierAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 41
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/BezierAnimator;->animatorUpdateListener:Lcn/nubia/redmagickyi/util/BezierAnimator$AnimatorUpdateListener;

    :cond_0
    return-object p0
.end method

.method public cancel()V
    .locals 0

    .line 68
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/BezierAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public isRunning()Z
    .locals 0

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/BezierAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public isStarted()Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/BezierAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    return p0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 32
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 33
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/BezierAnimator;->animatorUpdateListener:Lcn/nubia/redmagickyi/util/BezierAnimator$AnimatorUpdateListener;

    if-eqz p0, :cond_0

    .line 34
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/util/BezierAnimator$AnimatorUpdateListener;->onAnimationUpdate(F)V

    :cond_0
    return-void
.end method

.method public setDuration(J)Lcn/nubia/redmagickyi/util/BezierAnimator;
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/BezierAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public setStartDelay(J)Lcn/nubia/redmagickyi/util/BezierAnimator;
    .locals 1

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/BezierAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-object p0
.end method

.method public start()V
    .locals 0

    .line 64
    iget-object p0, p0, Lcn/nubia/redmagickyi/util/BezierAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
