.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;
.super Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;
.source "SpringBackDraggable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$SpringBackAnimCallback;
    }
.end annotation


# static fields
.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1


# instance fields
.field private mSpringBackAnimCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$SpringBackAnimCallback;

.field private final mSpringBackOrientation:I

.field private mTouchMoving:Z

.field private mViewDownX:F

.field private mViewDownY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;-><init>()V

    .line 42
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mSpringBackOrientation:I

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot pass in directions other than horizontal or vertical"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public calculateAnimationDuration(FF)J
    .locals 2

    sub-float/2addr p2, p1

    .line 275
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    float-to-long p0, p0

    const-wide/16 v0, 0xc8

    .line 276
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x320

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method protected dispatchSpringBackAnimationEndCallback(Landroid/animation/Animator;)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mSpringBackAnimCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$SpringBackAnimCallback;

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getEasyWindow()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->enableAnim(Z)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 307
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mSpringBackAnimCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$SpringBackAnimCallback;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getEasyWindow()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$SpringBackAnimCallback;->onSpringBackAnimationEnd(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;Landroid/animation/Animator;)V

    return-void
.end method

.method protected dispatchSpringBackAnimationStartCallback(Landroid/animation/Animator;)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mSpringBackAnimCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$SpringBackAnimCallback;

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getEasyWindow()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->enableAnim(Z)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 295
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mSpringBackAnimCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$SpringBackAnimCallback;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getEasyWindow()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$SpringBackAnimCallback;->onSpringBackAnimationStart(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;Landroid/animation/Animator;)V

    return-void
.end method

.method public dispatchSpringBackViewToScreenEdge()V
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getViewOnScreenX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getViewOnScreenY()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->dispatchSpringBackViewToScreenEdge(FFZ)V

    return-void
.end method

.method public dispatchSpringBackViewToScreenEdge(FFZ)V
    .locals 5

    .line 138
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getWindowInvisibleWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 139
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getWindowInvisibleHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 142
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mSpringBackOrientation:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    goto :goto_2

    .line 166
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownX:F

    sub-float/2addr p1, v0

    .line 168
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownY:F

    sub-float/2addr p2, v0

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 171
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getWindowHeight()I

    move-result v0

    .line 173
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getViewOnScreenY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getViewHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    int-to-float v0, v0

    div-float v1, v0, v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 183
    :goto_0
    invoke-virtual {p0, p1, p2, v2, p3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->startVerticalAnimation(FFFZ)V

    goto :goto_2

    .line 145
    :cond_2
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownX:F

    sub-float/2addr p1, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 148
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getWindowWidth()I

    move-result v0

    .line 150
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getViewOnScreenX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getViewWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    int-to-float v0, v0

    div-float v1, v0, v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_3

    goto :goto_1

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 160
    :goto_1
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownY:F

    sub-float/2addr p2, v0

    .line 163
    invoke-virtual {p0, p1, v2, p2, p3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->startHorizontalAnimation(FFFZ)V

    :goto_2
    return-void
.end method

.method protected dispatchStartDraggingCallback()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getEasyWindow()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->enableAnim(Z)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 120
    invoke-super {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->dispatchStartDraggingCallback()V

    return-void
.end method

.method public equalsWithRelativeTolerance(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 203
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3727c5ac    # 1.0E-5f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTouchMoving()Z
    .locals 0

    .line 314
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mTouchMoving:Z

    return p0
.end method

.method synthetic lambda$startHorizontalAnimation$0$cn-nubia-redmagickyi-morachat-window-gameagent-view-easywindow-draggable-SpringBackDraggable(FZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 219
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0, p3, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->updateLocation(FFZ)V

    return-void
.end method

.method synthetic lambda$startVerticalAnimation$1$cn-nubia-redmagickyi-morachat-window-gameagent-view-easywindow-draggable-SpringBackDraggable(FZLandroid/animation/ValueAnimator;)V
    .locals 0

    .line 235
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p0, p1, p3, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->updateLocation(FFZ)V

    return-void
.end method

.method protected onScreenRotateInfluenceCoordinateChangeFinish()V
    .locals 0

    .line 192
    invoke-super {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->onScreenRotateInfluenceCoordinateChangeFinish()V

    .line 193
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->dispatchSpringBackViewToScreenEdge()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 55
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    goto/16 :goto_2

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getWindowInvisibleWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr p1, v3

    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getWindowInvisibleHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 67
    iget v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownX:F

    sub-float/2addr p1, v4

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 68
    iget v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownY:F

    sub-float/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 71
    invoke-virtual {p0, p1, v2, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->updateLocation(FFZ)V

    .line 73
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mTouchMoving:Z

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->dispatchExecuteDraggingCallback()V

    goto/16 :goto_2

    .line 75
    :cond_1
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, v2, v3, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->isFingerMove(FFFF)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 77
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mTouchMoving:Z

    .line 78
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->dispatchStartDraggingCallback()V

    goto/16 :goto_2

    .line 83
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mTouchMoving:Z

    if-eqz p1, :cond_6

    .line 85
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mSpringBackOrientation:I

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getViewOnScreenY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownY:F

    sub-float/2addr v3, v4

    add-float/2addr p1, v3

    cmpl-float v3, p1, v2

    if-lez v3, :cond_5

    .line 92
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getViewHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p1, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getWindowHeight()I

    move-result v3

    :goto_0
    int-to-float v3, v3

    cmpg-float p1, p1, v3

    goto :goto_1

    .line 87
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getViewOnScreenX()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownX:F

    sub-float/2addr v3, v4

    add-float/2addr p1, v3

    cmpl-float v3, p1, v2

    if-lez v3, :cond_5

    .line 88
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getViewWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr p1, v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getWindowWidth()I

    move-result v3

    goto :goto_0

    .line 98
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->getEasyWindow()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->enableAnim(Z)Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 100
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->dispatchStopDraggingCallback()V

    .line 101
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p0, p1, p2, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->dispatchSpringBackViewToScreenEdge(FFZ)V

    .line 104
    :cond_6
    :try_start_0
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mTouchMoving:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iput v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownX:F

    .line 108
    iput v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownY:F

    .line 109
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mTouchMoving:Z

    return p1

    :catchall_0
    move-exception p1

    .line 107
    iput v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownX:F

    .line 108
    iput v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownY:F

    .line 109
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mTouchMoving:Z

    .line 110
    throw p1

    .line 58
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownX:F

    .line 59
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mViewDownY:F

    .line 60
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mTouchMoving:Z

    :cond_8
    :goto_2
    return v0
.end method

.method public setSpringBackAnimCallback(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$SpringBackAnimCallback;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->mSpringBackAnimCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$SpringBackAnimCallback;

    return-void
.end method

.method public startAnimation(FFJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2

    const/4 v0, 0x2

    .line 242
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 243
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p5, :cond_0

    .line 245
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 247
    :cond_0
    new-instance p2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$1;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 259
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startHorizontalAnimation(FFFJZ)V
    .locals 6

    .line 219
    new-instance v5, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, p3, p6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;FZ)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->startAnimation(FFJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public startHorizontalAnimation(FFFZ)V
    .locals 7

    .line 207
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->calculateAnimationDuration(FF)J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->startHorizontalAnimation(FFFJZ)V

    return-void
.end method

.method public startVerticalAnimation(FFFJZ)V
    .locals 6

    .line 235
    new-instance v5, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1, p6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;FZ)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->startAnimation(FFJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public startVerticalAnimation(FFFZ)V
    .locals 7

    .line 223
    invoke-virtual {p0, p2, p3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->calculateAnimationDuration(FF)J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/SpringBackDraggable;->startVerticalAnimation(FFFJZ)V

    return-void
.end method
