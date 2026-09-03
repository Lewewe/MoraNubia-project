.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;
.super Ljava/lang/Object;
.source "NPRefreshAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;
    }
.end annotation


# static fields
.field public static final COMPLETE_FAIL:I = 0x7

.field public static final COMPLETE_NO_CONNECT:I = 0x8

.field public static final COMPLETE_SUCCESS:I = 0x6

.field public static final COMPLETE_WAITING:I = 0x9

.field private static final ON_COMPLETE_STATE:I = 0x5

.field private static final ON_IDLE_STATE:I = 0x1

.field private static final ON_LOADING_STATE:I = 0x4

.field private static final ON_NORMAL_STATE:I = 0x2

.field private static final ON_STRETCHING_STATE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NPRefreshAnimationController"


# instance fields
.field private loadTextView:Landroid/widget/TextView;

.field private mBackAnimationListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;

.field private mDragIsReadyStr:Ljava/lang/String;

.field private mDragStr:Ljava/lang/String;

.field private mFailStr:Ljava/lang/String;

.field private mLoadingAnimator:Landroid/animation/ValueAnimator;

.field private mLoadingRotation:F

.field private mLoadingStr:Ljava/lang/String;

.field private mNoConnectStr:Ljava/lang/String;

.field private mNumStr:Ljava/lang/String;

.field private mState:I

.field private mSuccessStr:Ljava/lang/String;

.field private mWaitingStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x1

    .line 60
    iput p3, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    .line 63
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->initView(Landroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->resetArrowRotation()V

    .line 65
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->initStr(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$016(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;F)F
    .locals 1

    .line 16
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mLoadingRotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mLoadingRotation:F

    return v0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;)Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mBackAnimationListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;

    return-object p0
.end method

.method static synthetic access$202(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->resetArrowRotation()V

    return-void
.end method

.method private doScrollBackAnimation(FF)V
    .locals 2

    const/4 v0, 0x2

    .line 221
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 222
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 223
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    new-instance p2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$2;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$2;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 231
    new-instance p2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$3;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$3;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private doScrollBackToLoadingAnimation(FFZ)V
    .locals 2

    const/4 v0, 0x2

    .line 244
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 245
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 246
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    new-instance p2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$4;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$4;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 254
    new-instance p2, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$5;

    invoke-direct {p2, p0, p3}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$5;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 268
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private initStr(Landroid/content/Context;)V
    .locals 1

    .line 100
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->loadTextView:Landroid/widget/TextView;

    sget v0, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_loading_loading:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x102000b

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->loadTextView:Landroid/widget/TextView;

    return-void
.end method

.method private resetArrowRotation()V
    .locals 0

    return-void
.end method

.method private startArrowAnimator(FF)V
    .locals 0

    return-void
.end method

.method private startLoadingAnimator()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mLoadingRotation:F

    const/4 v0, 0x2

    .line 123
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x3e8

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 125
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 126
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$1;-><init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 139
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method canResetState()Z
    .locals 3

    .line 169
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 173
    iput v1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    .line 179
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->resetArrowRotation()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method processBackEventUp(FF)V
    .locals 2

    .line 186
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 187
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->doScrollBackAnimation(FF)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mBackAnimationListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;->animationEnd()V

    :goto_0
    return-void
.end method

.method processBackLoadingEventUp(FF)V
    .locals 3

    .line 195
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    invoke-direct {p0, p1, p2, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->doScrollBackToLoadingAnimation(FFZ)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 198
    invoke-direct {p0, p1, p2, v2}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->doScrollBackToLoadingAnimation(FFZ)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mBackAnimationListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;

    invoke-interface {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;->animationEnd()V

    :goto_0
    return-void
.end method

.method processDragState()V
    .locals 3

    .line 143
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 144
    iput v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 146
    iput v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    const/high16 v0, 0x43340000    # 180.0f

    const/4 v1, 0x0

    .line 147
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->startArrowAnimator(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method processDragStretchingState()V
    .locals 3

    .line 153
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 154
    iput v2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    .line 161
    :cond_0
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x3

    .line 162
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    const/4 v0, 0x0

    const/high16 v1, 0x43340000    # 180.0f

    .line 163
    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->startArrowAnimator(FF)V

    :cond_1
    return-void
.end method

.method reSetState()V
    .locals 1

    const/4 v0, 0x1

    .line 340
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    .line 341
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 348
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->resetArrowRotation()V

    return-void
.end method

.method reStartLoadingAnimation()Z
    .locals 2

    .line 326
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    .line 327
    iput v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method setBackAnimationListener(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mBackAnimationListener:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController$ScrollBackAnimationListener;

    return-void
.end method

.method stopLoading(Ljava/lang/String;I)V
    .locals 0

    .line 272
    iget p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x5

    .line 280
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    .line 281
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    .line 282
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method updateSyncTip(Ljava/lang/String;I)V
    .locals 0

    const/4 p1, 0x5

    .line 303
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mState:I

    .line 304
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/refresh/NPRefreshAnimationController;->mLoadingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 305
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
