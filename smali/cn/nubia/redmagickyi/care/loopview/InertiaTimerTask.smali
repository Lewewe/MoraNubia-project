.class final Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;
.super Ljava/lang/Object;
.source "InertiaTimerTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:F

.field final loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

.field final velocityY:F


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/loopview/LoopView;F)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    .line 19
    iput p2, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->velocityY:F

    const/high16 p1, 0x4f000000

    .line 20
    iput p1, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->a:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 25
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->a:F

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 26
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->velocityY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 27
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->velocityY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 28
    iput v2, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->a:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x3b060000    # -2000.0f

    .line 30
    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->a:F

    goto :goto_0

    .line 33
    :cond_1
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->velocityY:F

    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->a:F

    .line 36
    :cond_2
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x41a00000    # 20.0f

    if-ltz v0, :cond_3

    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/loopview/LoopView;->cancelFuture()V

    .line 38
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->handler:Landroid/os/Handler;

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 41
    :cond_3
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->a:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 42
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    .line 43
    iget v4, v3, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    sub-int/2addr v4, v0

    iput v4, v3, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    .line 44
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    iget-boolean v0, v0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->isLoop:Z

    if-nez v0, :cond_5

    .line 45
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    iget v0, v0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->lineSpacingMultiplier:F

    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    iget v3, v3, Lcn/nubia/redmagickyi/care/loopview/LoopView;->maxTextHeight:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    .line 46
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    iget v3, v3, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    iget-object v4, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    iget v4, v4, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    if-gt v3, v4, :cond_4

    const/high16 v3, 0x42200000    # 40.0f

    .line 47
    iput v3, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->a:F

    .line 48
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    iget v4, v3, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, v3, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    goto :goto_1

    .line 49
    :cond_4
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    iget v3, v3, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    iget-object v4, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    iget-object v4, v4, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    iget v5, v5, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    if-lt v3, v4, :cond_5

    .line 50
    iget-object v3, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    iget-object v4, v3, Lcn/nubia/redmagickyi/care/loopview/LoopView;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    iget v5, v5, Lcn/nubia/redmagickyi/care/loopview/LoopView;->initPosition:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, v3, Lcn/nubia/redmagickyi/care/loopview/LoopView;->totalScrollY:I

    const/high16 v0, -0x3de00000    # -40.0f

    .line 51
    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->a:F

    .line 54
    :cond_5
    :goto_1
    iget v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->a:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    add-float/2addr v0, v2

    .line 55
    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->a:F

    goto :goto_2

    :cond_6
    sub-float/2addr v0, v2

    .line 57
    iput v0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->a:F

    .line 59
    :goto_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/loopview/InertiaTimerTask;->loopView:Lcn/nubia/redmagickyi/care/loopview/LoopView;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/loopview/LoopView;->handler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
