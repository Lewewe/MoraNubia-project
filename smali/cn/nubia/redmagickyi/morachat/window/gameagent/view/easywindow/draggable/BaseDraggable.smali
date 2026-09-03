.class public abstract Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;
.super Ljava/lang/Object;
.source "BaseDraggable.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$DraggingCallback;
    }
.end annotation


# instance fields
.field private mAllowMoveToScreenNotch:Z

.field private mCurrentViewOnScreenX:I

.field private mCurrentViewOnScreenY:I

.field private mCurrentWindowHeight:I

.field private mCurrentWindowInvisibleHeight:I

.field private mCurrentWindowInvisibleWidth:I

.field private mCurrentWindowWidth:I

.field private mDecorView:Landroid/view/View;

.field private mDraggingCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$DraggingCallback;

.field private mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow<",
            "*>;"
        }
    .end annotation
.end field

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mAllowMoveToScreenNotch:Z

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;)I
    .locals 0

    .line 26
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowWidth:I

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;)I
    .locals 0

    .line 26
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowHeight:I

    return p0
.end method

.method public static getSafeInsetRect(Landroid/view/Window;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 408
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 412
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    .line 416
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_3

    .line 421
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    .line 423
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    .line 425
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    .line 427
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    .line 434
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    :cond_3
    return-object v0
.end method

.method public static getWindowRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    if-nez p1, :cond_0

    .line 191
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 193
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-object p1
.end method


# virtual methods
.method protected dispatchExecuteDraggingCallback()V
    .locals 1

    .line 497
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mDraggingCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$DraggingCallback;

    if-nez v0, :cond_0

    return-void

    .line 500
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$DraggingCallback;->onExecuteDragging(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V

    return-void
.end method

.method protected dispatchStartDraggingCallback()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mDraggingCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$DraggingCallback;

    if-nez v0, :cond_0

    return-void

    .line 489
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$DraggingCallback;->onStartDragging(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V

    return-void
.end method

.method protected dispatchStopDraggingCallback()V
    .locals 1

    .line 508
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mDraggingCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$DraggingCallback;

    if-nez v0, :cond_0

    return-void

    .line 511
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-interface {v0, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$DraggingCallback;->onStopDragging(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V

    return-void
.end method

.method public getDecorView()Landroid/view/View;
    .locals 0

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mDecorView:Landroid/view/View;

    return-object p0
.end method

.method public getEasyWindow()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow<",
            "*>;"
        }
    .end annotation

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    return-object p0
.end method

.method protected getMinTouchDistance()F
    .locals 2

    .line 471
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public getSafeInsetRect()Landroid/graphics/Rect;
    .locals 2

    .line 384
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 386
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 390
    :cond_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 395
    :cond_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getSafeInsetRect(Landroid/view/Window;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getViewHeight()I
    .locals 0

    .line 114
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getViewHeight()I

    move-result p0

    return p0
.end method

.method public getViewOnScreenX()I
    .locals 0

    .line 135
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentViewOnScreenX:I

    return p0
.end method

.method public getViewOnScreenY()I
    .locals 0

    .line 142
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentViewOnScreenY:I

    return p0
.end method

.method public getViewWidth()I
    .locals 0

    .line 107
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getViewWidth()I

    move-result p0

    return p0
.end method

.method public getWindowHeight()I
    .locals 2

    .line 96
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowHeight:I

    if-gtz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowHeight:I

    .line 100
    :cond_0
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowHeight:I

    return p0
.end method

.method public getWindowInvisibleHeight()I
    .locals 0

    .line 128
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowInvisibleHeight:I

    return p0
.end method

.method public getWindowInvisibleWidth()I
    .locals 0

    .line 121
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowInvisibleWidth:I

    return p0
.end method

.method public getWindowWidth()I
    .locals 2

    .line 85
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowWidth:I

    if-gtz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowWidth:I

    .line 89
    :cond_0
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowWidth:I

    return p0
.end method

.method public init(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    .line 48
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getDecorView()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mDecorView:Landroid/view/View;

    .line 49
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public isAllowMoveToScreenNotch()Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mAllowMoveToScreenNotch:Z

    return p0
.end method

.method protected isFingerMove(FFFF)Z
    .locals 0

    .line 451
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getMinTouchDistance()F

    move-result p0

    sub-float/2addr p1, p2

    .line 452
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p0

    if-gez p1, :cond_1

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isFollowScreenRotationChanges()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method synthetic lambda$onScreenOrientationChange$1$cn-nubia-redmagickyi-morachat-window-gameagent-view-easywindow-draggable-BaseDraggable()V
    .locals 0

    .line 208
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->refreshWindowInfo()V

    .line 209
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->refreshLocationCoordinate()V

    return-void
.end method

.method synthetic lambda$start$0$cn-nubia-redmagickyi-morachat-window-gameagent-view-easywindow-draggable-BaseDraggable()V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->refreshWindowInfo()V

    .line 61
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->refreshLocationCoordinate()V

    return-void
.end method

.method public onScreenOrientationChange()V
    .locals 17

    move-object/from16 v1, p0

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->isFollowScreenRotationChanges()Z

    move-result v0

    const-wide/16 v6, 0x0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getEasyWindow()Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    move-result-object v0

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$$ExternalSyntheticLambda1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;)V

    invoke-virtual {v0, v2, v6, v7}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 214
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 217
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u5f53\u524d ViewWidth = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\uff0cViewHeight = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget v0, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentViewOnScreenX:I

    iget v3, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowInvisibleWidth:I

    sub-int/2addr v0, v3

    .line 220
    iget v3, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentViewOnScreenY:I

    iget v8, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowInvisibleHeight:I

    sub-int/2addr v3, v8

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getMinTouchDistance()F

    move-result v8

    int-to-float v9, v0

    cmpg-float v10, v9, v8

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-gtz v10, :cond_1

    move v9, v14

    goto :goto_0

    .line 230
    :cond_1
    iget v10, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowWidth:I

    add-int/2addr v0, v2

    sub-int/2addr v10, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_2

    move v9, v11

    goto :goto_0

    .line 234
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    iget v10, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowWidth:I

    sub-int/2addr v10, v2

    int-to-float v10, v10

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-direct {v0, v9, v10}, Ljava/math/BigDecimal;-><init>(D)V

    .line 236
    invoke-virtual {v0, v13, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    move v9, v0

    .line 240
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowHeight:I

    add-int v16, v3, v4

    sub-int v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v15, ", \u5f53\u524d ViewWidth = "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", mCurrentWindowHeight = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v10, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowHeight:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", startY = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", viewHeight = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", minTouchDistance = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, v3

    cmpg-float v3, v0, v8

    if-gtz v3, :cond_3

    move v5, v14

    goto :goto_1

    .line 243
    :cond_3
    iget v3, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowHeight:I

    sub-int v3, v3, v16

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, v8

    if-gez v3, :cond_4

    move v5, v11

    goto :goto_1

    .line 247
    :cond_4
    new-instance v3, Ljava/math/BigDecimal;

    iget v5, v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowHeight:I

    sub-int/2addr v5, v4

    int-to-float v5, v5

    div-float/2addr v0, v5

    float-to-double v10, v0

    invoke-direct {v3, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    .line 249
    invoke-virtual {v3, v13, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    move v5, v0

    .line 252
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_5

    return-void

    .line 260
    :cond_5
    new-instance v10, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;

    move-object v0, v10

    move-object/from16 v1, p0

    move v3, v9

    invoke-direct/range {v0 .. v7}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;IFIFJ)V

    invoke-virtual {v8, v10}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method protected onScreenRotateInfluenceCoordinateChangeFinish()V
    .locals 0

    .line 281
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->refreshWindowInfo()V

    .line 282
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->refreshLocationCoordinate()V

    return-void
.end method

.method public refreshLocationCoordinate()V
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 182
    new-array v1, v1, [I

    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    .line 184
    aget v0, v1, v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentViewOnScreenX:I

    const/4 v0, 0x1

    .line 185
    aget v0, v1, v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentViewOnScreenY:I

    return-void
.end method

.method public refreshWindowInfo()V
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 160
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowWidth:I

    .line 161
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowHeight:I

    .line 163
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowInvisibleWidth:I

    .line 164
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowInvisibleHeight:I

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CurrentWindowWidth = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\uff0cCurrentWindowHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\uff0cCurrentWindowInvisibleWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowInvisibleWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\uff0cCurrentWindowInvisibleHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mCurrentWindowInvisibleHeight:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAllowMoveToScreenNotch(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mAllowMoveToScreenNotch:Z

    return-void
.end method

.method public setDraggingCallback(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$DraggingCallback;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mDraggingCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$DraggingCallback;

    return-void
.end method

.method public start()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->refreshWindowInfo()V

    .line 58
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->refreshLocationCoordinate()V

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mDecorView:Landroid/view/View;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable$$ExternalSyntheticLambda0;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateLocation(FFZ)V
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->isAllowMoveToScreenNotch()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->updateLocation(FFZZ)V

    return-void
.end method

.method public updateLocation(FFZZ)V
    .locals 0

    float-to-int p1, p1

    float-to-int p2, p2

    .line 297
    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->updateLocation(IIZZ)V

    return-void
.end method

.method public updateLocation(IIZZ)V
    .locals 7

    if-eqz p3, :cond_0

    .line 309
    invoke-virtual {p0, p1, p2, p4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->updateWindowCoordinate(IIZ)V

    return-void

    .line 313
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getSafeInsetRect()Landroid/graphics/Rect;

    move-result-object p3

    if-nez p3, :cond_1

    .line 315
    invoke-virtual {p0, p1, p2, p4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->updateWindowCoordinate(IIZ)V

    return-void

    .line 319
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_2

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_2

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_2

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_2

    .line 321
    invoke-virtual {p0, p1, p2, p4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->updateWindowCoordinate(IIZ)V

    return-void

    .line 325
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getViewWidth()I

    move-result v0

    .line 326
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getViewHeight()I

    move-result v1

    .line 328
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowWidth()I

    move-result v2

    .line 329
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowHeight()I

    move-result v3

    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u5f00\u59cb x \u5750\u6807\u4e3a\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u5f00\u59cb y \u5750\u6807\u4e3a\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget v4, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowInvisibleWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge p1, v4, :cond_3

    .line 335
    iget p1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowInvisibleWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 336
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "x \u5750\u6807\u5df2\u7ecf\u89e6\u78b0\u5230\u5c4f\u5e55\u5de6\u4fa7\u7684\u5b89\u5168\u533a\u57df"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :cond_3
    iget v4, p3, Landroid/graphics/Rect;->right:I

    sub-int v4, v2, v4

    sub-int/2addr v4, v0

    if-le p1, v4, :cond_4

    .line 338
    iget p1, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p1

    sub-int p1, v2, v0

    .line 339
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "x \u5750\u6807\u5df2\u7ecf\u89e6\u78b0\u5230\u5c4f\u5e55\u53f3\u4fa7\u7684\u5b89\u5168\u533a\u57df"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6700\u7ec8 x \u5750\u6807\u4e3a\uff1a"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget v0, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowInvisibleHeight()I

    move-result v2

    sub-int/2addr v0, v2

    if-ge p2, v0, :cond_5

    .line 345
    iget p2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->getWindowInvisibleHeight()I

    move-result p3

    sub-int/2addr p2, p3

    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "y \u5750\u6807\u5df2\u7ecf\u89e6\u78b0\u5230\u5c4f\u5e55\u9876\u4fa7\u7684\u5b89\u5168\u533a\u57df"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 347
    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v0

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_6

    .line 348
    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p2

    sub-int p2, v3, v1

    .line 349
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "y \u5750\u6807\u5df2\u7ecf\u89e6\u78b0\u5230\u5c4f\u5e55\u5e95\u90e8\u7684\u5b89\u5168\u533a\u57df"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_6
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u6700\u7ec8 y \u5750\u6807\u4e3a\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {p0, p1, p2, p4}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->updateWindowCoordinate(IIZ)V

    return-void
.end method

.method public updateWindowCoordinate(IIZ)V
    .locals 3

    .line 358
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 367
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x800033

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v1, p2, :cond_1

    return-void

    .line 371
    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 372
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 373
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz p3, :cond_2

    .line 376
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->postUpdate()V

    goto :goto_0

    .line 378
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->mEasyWindow:Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/EasyWindow;->update()V

    .line 380
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/view/easywindow/draggable/BaseDraggable;->refreshLocationCoordinate()V

    return-void
.end method
