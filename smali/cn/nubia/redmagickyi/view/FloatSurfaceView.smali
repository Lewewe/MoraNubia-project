.class public Lcn/nubia/redmagickyi/view/FloatSurfaceView;
.super Landroid/view/SurfaceView;
.source "FloatSurfaceView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/FloatSurfaceView$onDragViewClickListener;
    }
.end annotation


# instance fields
.field private enableAutoStickEdge:Z

.field private endX:I

.field private isMoveable:Z

.field private isMoved:Z

.field private lastX:I

.field private lastY:I

.field private layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

.field private left:I

.field private mContext:Landroid/content/Context;

.field private mLister:Lcn/nubia/redmagickyi/view/FloatSurfaceView$onDragViewClickListener;

.field private marginEdge:I

.field private screenHeight:I

.field private screenWidth:I

.field private startX:I

.field private top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->isMoved:Z

    const/4 p2, 0x1

    .line 22
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->enableAutoStickEdge:Z

    .line 24
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->isMoveable:Z

    .line 32
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)I
    .locals 0

    .line 11
    iget p0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->screenWidth:I

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/view/FloatSurfaceView;I)I
    .locals 0

    .line 11
    iput p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->screenWidth:I

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/view/FloatSurfaceView;I)I
    .locals 0

    .line 11
    iput p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->screenHeight:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    .line 11
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/view/FloatSurfaceView;Landroid/view/ViewGroup$MarginLayoutParams;)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 0

    .line 11
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)I
    .locals 0

    .line 11
    iget p0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->marginEdge:I

    return p0
.end method

.method static synthetic access$302(Lcn/nubia/redmagickyi/view/FloatSurfaceView;I)I
    .locals 0

    .line 11
    iput p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->marginEdge:I

    return p1
.end method

.method private getStatusBarHeight()I
    .locals 4

    .line 166
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private init()V
    .locals 1

    .line 37
    invoke-virtual {p0, p0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 38
    new-instance v0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView$1;-><init>(Lcn/nubia/redmagickyi/view/FloatSurfaceView;)V

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startScroll(IIZ)V
    .locals 3

    int-to-float v0, p1

    int-to-float p2, p2

    const/4 v1, 0x2

    .line 146
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 147
    new-instance v0, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;

    invoke-direct {v0, p0, p3, p1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView$2;-><init>(Lcn/nubia/redmagickyi/view/FloatSurfaceView;ZI)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 158
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getNavigationBarHeight()I
    .locals 4

    .line 178
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "navigation_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMoveable()Z
    .locals 0

    .line 202
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->isMoveable:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 59
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 64
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->isMoveable:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v2, 0x2

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_1

    goto/16 :goto_0

    .line 74
    :cond_1
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->isMoved:Z

    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->lastX:I

    sub-int/2addr v0, v2

    .line 76
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->lastY:I

    sub-int/2addr v2, v3

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v3, v0

    iput v3, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->left:I

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->top:I

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v2

    .line 82
    iget v2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->left:I

    iget v4, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->marginEdge:I

    if-ge v2, v4, :cond_2

    .line 83
    iput v4, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->left:I

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int v3, v4, v2

    .line 86
    :cond_2
    iget v2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->screenWidth:I

    iget v4, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->marginEdge:I

    sub-int v5, v2, v4

    if-le v3, v5, :cond_3

    sub-int/2addr v2, v4

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->left:I

    .line 90
    :cond_3
    iget v2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->top:I

    iget v3, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->marginEdge:I

    if-ge v2, v3, :cond_4

    .line 91
    iput v3, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->top:I

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v3

    .line 94
    :cond_4
    iget v2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->screenHeight:I

    iget v3, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->marginEdge:I

    sub-int v4, v2, v3

    if-le v0, v4, :cond_5

    sub-int/2addr v2, v3

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->top:I

    .line 98
    :cond_5
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->left:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 99
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->top:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 100
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->lastX:I

    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->lastY:I

    goto :goto_0

    .line 106
    :cond_6
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->enableAutoStickEdge:Z

    if-nez v0, :cond_7

    goto :goto_0

    .line 109
    :cond_7
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->isMoved:Z

    if-eqz v0, :cond_8

    .line 110
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 111
    iget v3, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->top:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 112
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->endX:I

    .line 116
    iget v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->startX:I

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/4 v0, 0x5

    const/4 v3, 0x0

    if-ge p2, v0, :cond_9

    return v3

    .line 119
    :cond_9
    iget p2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    add-int/2addr p2, p1

    iget p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->screenWidth:I

    div-int/lit8 v0, p1, 0x2

    if-ge p2, v0, :cond_a

    .line 120
    iget p2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->left:I

    iget v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->marginEdge:I

    sub-int/2addr p2, v0

    div-int/2addr p1, v2

    sub-int/2addr p1, v0

    invoke-direct {p0, p2, p1, v1}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->startScroll(IIZ)V

    goto :goto_0

    .line 122
    :cond_a
    iget p2, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->left:I

    iget v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->marginEdge:I

    sub-int/2addr p2, v0

    div-int/2addr p1, v2

    sub-int/2addr p1, v0

    invoke-direct {p0, p2, p1, v3}, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->startScroll(IIZ)V

    goto :goto_0

    .line 69
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->lastX:I

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->lastY:I

    .line 71
    iget p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->lastX:I

    iput p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->startX:I

    :goto_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->mLister:Lcn/nubia/redmagickyi/view/FloatSurfaceView$onDragViewClickListener;

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {v0}, Lcn/nubia/redmagickyi/view/FloatSurfaceView$onDragViewClickListener;->onDragViewClick()V

    .line 139
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setEnableAutoStickEdge(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->enableAutoStickEdge:Z

    return-void
.end method

.method public setMoveable(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->isMoveable:Z

    return-void
.end method

.method public setOnDragViewClickListener(Lcn/nubia/redmagickyi/view/FloatSurfaceView$onDragViewClickListener;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/FloatSurfaceView;->mLister:Lcn/nubia/redmagickyi/view/FloatSurfaceView$onDragViewClickListener;

    return-void
.end method
