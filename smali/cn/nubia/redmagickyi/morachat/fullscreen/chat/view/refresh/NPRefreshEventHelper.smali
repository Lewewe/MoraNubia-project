.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;
.super Ljava/lang/Object;
.source "NPRefreshEventHelper.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanScrollVerticallyCallback;,
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanLoadingDataListener;
    }
.end annotation


# static fields
.field private static final DRAG_STATE_DRAGGING:I = 0x2

.field private static final DRAG_STATE_FLING:I = 0x3

.field private static final DRAG_STATE_IDLE:I = 0x1

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NoteBookEventHelper"

.field private static final VIEW_SHIFT:I = 0x25


# instance fields
.field private canScrollVerticallyCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanScrollVerticallyCallback;

.field private mActivePointerId:I

.field private mAnimationController:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

.field private mCanDragToSynchronization:Z

.field private mConditionHeight:F

.field private mContentView:Landroid/view/View;

.field private mDensity:F

.field private mDragState:I

.field private mHeadView:Landroid/view/View;

.field private mIsBeingDragged:Z

.field private mIsLoading:Z

.field private mLastMotionY:F

.field private mListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanLoadingDataListener;

.field private mMaxTranslationHeight:F

.field private mTotalShift:F

.field private mTouchSlop:F

.field private mTranslationY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDragState:I

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mActivePointerId:I

    const/high16 v1, 0x44480000    # 800.0f

    .line 26
    iput v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mMaxTranslationHeight:F

    .line 407
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mCanDragToSynchronization:Z

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDensity:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    .line 38
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTouchSlop:F

    .line 39
    iput-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mContentView:Landroid/view/View;

    .line 40
    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mHeadView:Landroid/view/View;

    .line 41
    new-instance p2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    iget-object p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mHeadView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p3, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mAnimationController:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    .line 42
    invoke-virtual {p2, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->setBackAnimationListener(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;)V

    .line 43
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->processViewVisible()V

    .line 45
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mHeadView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private doDragForFooter(F)V
    .locals 3

    .line 269
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 271
    iput v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    .line 273
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mConditionHeight:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    .line 274
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    .line 276
    :cond_1
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mMaxTranslationHeight:F

    neg-float v1, v0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_2

    neg-float p1, v0

    .line 277
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    .line 279
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mContentView:Landroid/view/View;

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 280
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->doFooterStateChanged()V

    return-void
.end method

.method private doDragForHeader(F)V
    .locals 3

    .line 239
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 241
    iput v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    .line 243
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mConditionHeight:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr p1, v2

    sub-float/2addr v0, p1

    .line 244
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    .line 246
    :cond_1
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mMaxTranslationHeight:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    .line 247
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    .line 250
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mHeadView:Landroid/view/View;

    const/high16 v0, -0x3dec0000    # -37.0f

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDensity:F

    mul-float/2addr v2, v0

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    add-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 251
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mContentView:Landroid/view/View;

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 252
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->doHeaderStateChanged()V

    .line 253
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanLoadingDataListener;

    if-eqz p1, :cond_4

    .line 254
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    cmpl-float p0, p0, v1

    if-lez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanLoadingDataListener;->onHeaderVisibilyChanged(Z)V

    :cond_4
    return-void
.end method

.method private doDragForHeaderOrFooterView(F)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->doDragForHeader(F)V

    return-void
.end method

.method private doEventUpForHeader()V
    .locals 5

    const/4 v0, 0x3

    .line 294
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDragState:I

    .line 295
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTouchSlop:F

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mAnimationController:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->canResetState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iput v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    .line 297
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mHeadView:Landroid/view/View;

    const/high16 v2, -0x3dec0000    # -37.0f

    iget v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDensity:F

    mul-float/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 298
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mContentView:Landroid/view/View;

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 299
    iput v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDragState:I

    goto :goto_0

    .line 300
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    iget v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mConditionHeight:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_1

    cmpl-float v4, v0, v2

    if-lez v4, :cond_1

    .line 301
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mAnimationController:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-virtual {p0, v0, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->processBackEventUp(FF)V

    goto :goto_0

    :cond_1
    cmpl-float v2, v0, v3

    if-ltz v2, :cond_2

    .line 303
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mAnimationController:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    const/high16 v2, 0x42140000    # 37.0f

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDensity:F

    mul-float/2addr p0, v2

    invoke-virtual {v1, v0, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->processBackLoadingEventUp(FF)V

    goto :goto_0

    .line 305
    :cond_2
    iput v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDragState:I

    :goto_0
    return-void
.end method

.method private doEventUpForHeaderOrFooterView()V
    .locals 0

    .line 310
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->doEventUpForHeader()V

    return-void
.end method

.method private doFooterStateChanged()V
    .locals 2

    .line 284
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mConditionHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mAnimationController:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->processDragState()V

    .line 288
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mConditionHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 289
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mAnimationController:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->processDragStretchingState()V

    :cond_1
    return-void
.end method

.method private doHeaderStateChanged()V
    .locals 2

    .line 259
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mConditionHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mAnimationController:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->processDragState()V

    .line 263
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mConditionHeight:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 264
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mAnimationController:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->processDragStretchingState()V

    :cond_1
    return-void
.end method

.method private isListViewReachBottomEdge()Z
    .locals 1

    .line 70
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->canScrollVerticallyCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanScrollVerticallyCallback;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 71
    invoke-interface {p0, v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanScrollVerticallyCallback;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method private isListViewReachTopEdge()Z
    .locals 2

    .line 64
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->canScrollVerticallyCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanScrollVerticallyCallback;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const/4 v1, -0x1

    .line 65
    invoke-interface {p0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanScrollVerticallyCallback;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method private isPCondition()Z
    .locals 6

    .line 77
    const-string v0, "NX616J"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 79
    const-string v0, "NX629J"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v4, 0x40c00000    # 6.0f

    if-nez v0, :cond_2

    const-string v0, "NX563J"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 83
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTotalShift:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTouchSlop:F

    div-float/2addr p0, v4

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 80
    :cond_2
    :goto_1
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTotalShift:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTouchSlop:F

    div-float/2addr p0, v4

    cmpl-float p0, v0, p0

    if-lez p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1

    .line 78
    :cond_4
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_5

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTotalShift:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTouchSlop:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    return v1
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 226
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 227
    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mActivePointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 229
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mLastMotionY:F

    .line 230
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mActivePointerId:I

    :cond_1
    return-void
.end method

.method private processTouchSlop()V
    .locals 3

    .line 55
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->isListViewReachTopEdge()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTotalShift:F

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTouchSlop:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 56
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->isPCondition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    :cond_1
    iput v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTotalShift:F

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsBeingDragged:Z

    const/4 v0, 0x2

    .line 59
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDragState:I

    :cond_2
    return-void
.end method

.method private processViewVisible()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mHeadView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mHeadView:Landroid/view/View;

    const/high16 v1, -0x3dec0000    # -37.0f

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDensity:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x42140000    # 37.0f

    .line 51
    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDensity:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mConditionHeight:F

    return-void
.end method


# virtual methods
.method public animationEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 365
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDragState:I

    return-void
.end method

.method public canLoadingData()V
    .locals 1

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsLoading:Z

    .line 371
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanLoadingDataListener;

    if-eqz p0, :cond_0

    .line 372
    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanLoadingDataListener;->canLoadingData()V

    :cond_0
    return-void
.end method

.method public hideHeaderOrFooter()V
    .locals 3

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsLoading:Z

    const/4 v0, 0x1

    .line 398
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDragState:I

    const/4 v0, 0x0

    .line 399
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    .line 400
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mHeadView:Landroid/view/View;

    const/high16 v1, -0x3dec0000    # -37.0f

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDensity:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 403
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mContentView:Landroid/view/View;

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 404
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mAnimationController:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->reSetState()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 415
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanLoadingDataListener;

    if-eqz p0, :cond_0

    .line 416
    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanLoadingDataListener;->onHeadFooterClicked()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 94
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mCanDragToSynchronization:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 97
    iget-boolean v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsBeingDragged:Z

    if-nez v4, :cond_2

    :cond_1
    iget v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDragState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    :cond_2
    return v3

    :cond_3
    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_a

    const/4 v4, -0x1

    if-eq v0, v3, :cond_9

    if-eq v0, v1, :cond_6

    if-eq v0, v5, :cond_9

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 142
    :cond_4
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 136
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mLastMotionY:F

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mActivePointerId:I

    goto :goto_0

    .line 112
    :cond_6
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mActivePointerId:I

    if-ne v0, v4, :cond_7

    goto :goto_0

    .line 117
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pointerId="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NoteBookEventHelper"

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mLastMotionY:F

    sub-float/2addr v0, v2

    .line 123
    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTotalShift:F

    add-float/2addr v2, v0

    iput v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTotalShift:F

    .line 124
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->processTouchSlop()V

    .line 125
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mLastMotionY:F

    goto :goto_0

    .line 131
    :cond_9
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsBeingDragged:Z

    .line 132
    iput v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mActivePointerId:I

    .line 133
    iput v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDragState:I

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTotalShift:F

    .line 105
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsBeingDragged:Z

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mLastMotionY:F

    .line 107
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mActivePointerId:I

    .line 147
    :goto_0
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsBeingDragged:Z

    return p0
.end method

.method public onScrollBackToLoadingUpdate(F)V
    .locals 2

    .line 352
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    .line 355
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 357
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mHeadView:Landroid/view/View;

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    const/high16 v1, 0x42140000    # 37.0f

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDensity:F

    mul-float/2addr p0, v1

    sub-float/2addr v0, p0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onScrollBackUpdate(F)V
    .locals 2

    .line 339
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    .line 342
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 344
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mHeadView:Landroid/view/View;

    const/high16 v0, -0x3dec0000    # -37.0f

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDensity:F

    mul-float/2addr v1, v0

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    add-float/2addr v1, p0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 151
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mCanDragToSynchronization:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 154
    :cond_0
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsLoading:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_d

    if-nez v0, :cond_1

    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 161
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v2, -0x1

    if-eq v0, v4, :cond_9

    const/4 v3, 0x2

    const/4 v5, 0x3

    if-eq v0, v3, :cond_4

    if-eq v0, v5, :cond_9

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 215
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 208
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mLastMotionY:F

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mActivePointerId:I

    goto/16 :goto_0

    .line 172
    :cond_4
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDragState:I

    if-ne v0, v5, :cond_5

    goto :goto_0

    .line 176
    :cond_5
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mActivePointerId:I

    if-ne v0, v2, :cond_6

    goto :goto_0

    .line 180
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid pointerId="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mActivePointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " in onTouchEvent"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NoteBookEventHelper"

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/util/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mLastMotionY:F

    sub-float/2addr v1, v2

    .line 187
    iget v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTotalShift:F

    add-float/2addr v2, v1

    iput v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTotalShift:F

    .line 188
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsBeingDragged:Z

    if-nez v2, :cond_8

    .line 189
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->processTouchSlop()V

    .line 191
    :cond_8
    iget-boolean v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsBeingDragged:Z

    if-eqz v2, :cond_c

    .line 192
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->doDragForHeaderOrFooterView(F)V

    .line 193
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mLastMotionY:F

    goto :goto_0

    .line 199
    :cond_9
    iput v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mActivePointerId:I

    .line 200
    iget-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsBeingDragged:Z

    if-eqz p1, :cond_a

    .line 201
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsBeingDragged:Z

    .line 202
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->doEventUpForHeaderOrFooterView()V

    goto :goto_0

    .line 204
    :cond_a
    iput v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDragState:I

    goto :goto_0

    .line 164
    :cond_b
    iput v3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTotalShift:F

    .line 165
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsBeingDragged:Z

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mLastMotionY:F

    .line 167
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mActivePointerId:I

    :cond_c
    :goto_0
    return v4

    .line 155
    :cond_d
    :goto_1
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mTranslationY:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_e

    .line 156
    iput v4, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mDragState:I

    .line 157
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mAnimationController:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->canResetState()Z

    :cond_e
    return v4
.end method

.method public setCanDragToSynchronization(Z)V
    .locals 0

    .line 410
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mCanDragToSynchronization:Z

    return-void
.end method

.method public setCanScrollVerticallyCallback(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanScrollVerticallyCallback;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->canScrollVerticallyCallback:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanScrollVerticallyCallback;

    return-void
.end method

.method public setLoadDataListener(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanLoadingDataListener;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper$CanLoadingDataListener;

    return-void
.end method

.method public startLoadingAnimation()V
    .locals 1

    .line 391
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mAnimationController:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->reStartLoadingAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 392
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsLoading:Z

    :cond_0
    return-void
.end method

.method stopLoading(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mIsLoading:Z

    .line 318
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mAnimationController:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->stopLoading(Ljava/lang/String;I)V

    return-void
.end method

.method updateSyncTip(Ljava/lang/String;I)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshEventHelper;->mAnimationController:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->updateSyncTip(Ljava/lang/String;I)V

    return-void
.end method
