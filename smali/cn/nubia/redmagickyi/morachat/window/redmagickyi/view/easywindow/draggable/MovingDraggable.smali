.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;
.super Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;
.source "MovingDraggable.java"


# instance fields
.field private mTouchMoving:Z

.field private mViewDownX:F

.field private mViewDownY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;-><init>()V

    return-void
.end method


# virtual methods
.method protected dispatchStartDraggingCallback()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->getEasyWindow()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->enableAnim(Z)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 77
    invoke-super {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;->dispatchStartDraggingCallback()V

    return-void
.end method

.method protected dispatchStopDraggingCallback()V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->getEasyWindow()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;->enableAnim(Z)Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/EasyWindow;

    .line 83
    invoke-super {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/BaseDraggable;->dispatchStopDraggingCallback()V

    return-void
.end method

.method public isTouchMoving()Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->mTouchMoving:Z

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->getWindowInvisibleWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->getWindowInvisibleHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 36
    iget v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->mViewDownX:F

    sub-float/2addr p1, v3

    .line 37
    iget v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->mViewDownY:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 40
    invoke-virtual {p0, p1, v2, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->updateLocation(FFZ)V

    .line 42
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->mTouchMoving:Z

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->dispatchExecuteDraggingCallback()V

    goto :goto_0

    .line 44
    :cond_1
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->mViewDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->mViewDownY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, v2, v3, p2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->isFingerMove(FFFF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 46
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->mTouchMoving:Z

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->dispatchStartDraggingCallback()V

    goto :goto_0

    .line 52
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->mTouchMoving:Z

    if-eqz p1, :cond_3

    .line 53
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->dispatchStopDraggingCallback()V

    .line 56
    :cond_3
    :try_start_0
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->mTouchMoving:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->mTouchMoving:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->mTouchMoving:Z

    .line 60
    throw p1

    .line 25
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->mViewDownX:F

    .line 26
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->mViewDownY:F

    .line 27
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/easywindow/draggable/MovingDraggable;->mTouchMoving:Z

    :cond_5
    :goto_0
    return v0
.end method
