.class public Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;
.super Ljava/lang/Object;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;
    }
.end annotation


# static fields
.field public static final MIN_DELTA_FOR_SCROLLING:I = 0x1

.field private static final SCROLLING_DURATION:I = 0x96


# instance fields
.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field private animationHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private isScrollingPerformed:Z

.field private lastScrollY:I

.field private lastTouchedY:F

.field private listener:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;

.field private scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$1;-><init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->MESSAGE_SCROLL:I

    const/4 v1, 0x1

    .line 161
    iput v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->MESSAGE_JUSTIFY:I

    .line 182
    new-instance v1, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$2;-><init>(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->animationHandler:Landroid/os/Handler;

    .line 66
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    .line 67
    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 69
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    .line 71
    iput-object p2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->listener:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;

    .line 72
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)I
    .locals 0

    .line 14
    iget p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->lastScrollY:I

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;I)I
    .locals 0

    .line 14
    iput p1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->lastScrollY:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)Landroid/widget/Scroller;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->setNextMessage(I)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->listener:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)Landroid/os/Handler;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->animationHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->justify()V

    return-void
.end method

.method private clearMessages()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->animationHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private justify()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->listener:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;->onJustify()V

    const/4 v0, 0x1

    .line 213
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->setNextMessage(I)V

    return-void
.end method

.method private setNextMessage(I)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->clearMessages()V

    .line 170
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->animationHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private startScrolling()V
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->isScrollingPerformed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->isScrollingPerformed:Z

    .line 222
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->listener:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;->onStarted()V

    :cond_0
    return-void
.end method


# virtual methods
.method finishScrolling()V
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->isScrollingPerformed:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->listener:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;->onFinished()V

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->isScrollingPerformed:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->lastTouchedY:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    if-eqz v0, :cond_2

    .line 124
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->startScrolling()V

    .line 125
    iget-object v2, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->listener:Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;

    invoke-interface {v2, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->lastTouchedY:F

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->lastTouchedY:F

    .line 116
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 117
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->clearMessages()V

    .line 134
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 135
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->justify()V

    :cond_3
    return v1
.end method

.method public scroll(II)V
    .locals 7

    .line 90
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->lastScrollY:I

    .line 94
    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x96

    :goto_0
    move v6, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 95
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->setNextMessage(I)V

    .line 97
    invoke-direct {p0}, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->startScrolling()V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 81
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .line 104
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/wheelview/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method
