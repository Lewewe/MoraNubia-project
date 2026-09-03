.class Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;
.super Ljava/lang/Object;
.source "FloatWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchGestureDetector"
.end annotation


# instance fields
.field private mDistance:F

.field private mDownX:F

.field private mDownY:F

.field private mLastX:F

.field private mLastY:F

.field private mOldDistance:F

.field private mPointId:I

.field private mScale:F

.field private mScreenX:F

.field private mScreenY:F

.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 440
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 445
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScale:F

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$1;)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;-><init>(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;)F
    .locals 0

    .line 440
    iget p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScale:F

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;F)V
    .locals 0

    .line 440
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->updateViewSize(F)V

    return-void
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 3

    const/4 p0, 0x0

    .line 574
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    sub-float/2addr v0, v2

    .line 575
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr p0, p1

    mul-float/2addr v0, v0

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    float-to-double p0, v0

    .line 576
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private onScaleTouch(Landroid/view/MotionEvent;)V
    .locals 3

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 451
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->distance(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mDistance:F

    .line 452
    iget v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mOldDistance:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 453
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mOldDistance:F

    .line 456
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScale:F

    mul-float/2addr v0, p1

    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mOldDistance:F

    div-float/2addr v0, p1

    .line 457
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->updateViewSize(F)V

    .line 458
    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mDistance:F

    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mOldDistance:F

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 460
    :cond_2
    iput v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mDistance:F

    iput v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mOldDistance:F

    :cond_3
    :goto_0
    return-void
.end method

.method private updateViewPosition()V
    .locals 5

    .line 515
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v0, v1

    .line 516
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v1, v2

    .line 517
    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScreenX:F

    add-float/2addr v3, v4

    iget v4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mLastX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 518
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    iget v4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScreenY:F

    add-float/2addr v2, v4

    iget v4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mLastY:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 520
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$800(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$900(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateViewSize(F)V
    .locals 6

    .line 524
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$1000(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I

    move-result v0

    .line 525
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$1100(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I

    move-result v1

    .line 526
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result v2

    .line 527
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenHeight()I

    move-result v3

    .line 528
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v4}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$1200(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I

    move-result v4

    if-gez v4, :cond_0

    .line 529
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v4}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$800(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$1202(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;I)I

    .line 531
    :cond_0
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v4}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$1300(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I

    move-result v4

    if-gez v4, :cond_1

    .line 532
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v4}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$800(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$1302(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;I)I

    .line 534
    :cond_1
    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v4}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$1200(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 535
    iget-object v5, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v5}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$1300(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-le v4, v2, :cond_2

    int-to-float p1, v2

    .line 537
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$1200(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 538
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$1200(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 539
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$1300(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    goto :goto_0

    :cond_2
    if-ge v4, v0, :cond_3

    .line 541
    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScale:F

    .line 542
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 543
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_3
    :goto_0
    if-le v5, v3, :cond_4

    int-to-float p1, v3

    .line 546
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$1300(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 547
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$1200(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 548
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$1300(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    goto :goto_1

    :cond_4
    if-ge v5, v1, :cond_5

    .line 550
    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScale:F

    .line 551
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 552
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 554
    :cond_5
    :goto_1
    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScale:F

    .line 555
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr p1, v4

    .line 556
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v0, v5

    .line 557
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 558
    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 561
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v2}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v1, v2

    .line 562
    invoke-static {}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->getScreenHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v2, v3

    .line 564
    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v4}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v4, p1

    int-to-float p1, v4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 565
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v3, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v3}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    int-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 567
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateViewSize, wmParams.x = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", wmParams.y = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", wmParams.width = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FloatWindow"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$800(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$700(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$900(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$FloatView;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onDragTouch(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScreenX:F

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScreenY:F

    const/4 v0, 0x0

    .line 469
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 471
    iget v2, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mPointId:I

    if-eq v1, v2, :cond_0

    .line 472
    iput v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mPointId:I

    .line 473
    iget v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScreenX:F

    iput v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mLastX:F

    .line 474
    iget v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScreenY:F

    iput v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mLastY:F

    .line 476
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    goto :goto_1

    .line 482
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->updateViewPosition()V

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-gt p1, v3, :cond_3

    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScreenX:F

    iget v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mDownX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-gez p1, :cond_3

    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScreenY:F

    iget v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mDownY:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_5

    goto :goto_0

    .line 488
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-gt p1, v3, :cond_3

    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScreenX:F

    iget v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mDownX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-gez p1, :cond_3

    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScreenY:F

    iget v1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mDownY:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_5

    :cond_3
    :goto_0
    move v0, v3

    goto :goto_1

    .line 478
    :cond_4
    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScreenX:F

    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mDownX:F

    .line 479
    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScreenY:F

    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mDownY:F

    .line 495
    :cond_5
    :goto_1
    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScreenX:F

    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mLastX:F

    .line 496
    iget p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mScreenY:F

    iput p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->mLastY:F

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 502
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$500(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->onScaleTouch(Landroid/view/MotionEvent;)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;->access$600(Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/pose/mobile/view/FloatWindow$TouchGestureDetector;->onDragTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
