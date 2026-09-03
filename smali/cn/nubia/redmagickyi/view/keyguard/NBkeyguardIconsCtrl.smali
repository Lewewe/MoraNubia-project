.class Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;
.super Ljava/lang/Object;
.source "NBkeyguardIconsCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;,
        Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$DrawListener;,
        Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;,
        Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$WaveAnimationListener;,
        Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPromitingListener;,
        Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPressedUpTargetIconListener;
    }
.end annotation


# static fields
.field private static final ANSWERED:Ljava/lang/String; = "answered"

.field private static final DELAY_TIMES:J = 0x7d0L

.field private static final MSG_ON_TOUCH_MOVED:I = 0x2

.field private static final MSG_RESET_TARGET_ICON_POSITION:I = 0x3

.field private static final MSG_START_ANIMATION:I = 0x0

.field private static final MSG_START_WAVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NBkeyguardIconsCtrl"


# instance fields
.field private mAnimatorMoveAdsorpted:Landroid/animation/AnimatorSet;

.field private mAnimatorPressed:Landroid/animation/AnimatorSet;

.field private mAnimatorPressedUp:Landroid/animation/AnimatorSet;

.field private mAnimatorPromiting:Landroid/animation/AnimatorSet;

.field private mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

.field private mCenterX:I

.field private mCenterY:I

.field private final mContext:Landroid/content/Context;

.field private mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

.field private mDrawListener:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$DrawListener;

.field private mGuidePoint:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

.field private final mHandler:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

.field private mIsAdsorpted:Z

.field private mMyNBRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;

.field private mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

.field private mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

.field private mWaves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mIsAdsorpted:Z

    .line 103
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mHandler:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

    .line 106
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initIcons(Landroid/content/Context;)V

    .line 107
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initPromitingAnimation()V

    .line 108
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initPressedAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->startAnimationEx()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->startNewWave()V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mHandler:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->handleTouchMove(I)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->handleTargetIconPositionReset(Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;Z)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$DrawListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDrawListener:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$DrawListener;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPromiting:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private closeAnimatorSets()V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->stopAnimation()V

    return-void
.end method

.method private closeAsyncThread()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mHandler:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;->removeMessages(I)V

    .line 148
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mHandler:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;->removeMessages(I)V

    .line 149
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mHandler:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;->removeMessages(I)V

    .line 150
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mHandler:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;->removeMessages(I)V

    return-void
.end method

.method private closeWaves()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mWaves:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;

    .line 156
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->close()V

    goto :goto_0

    .line 158
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mWaves:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method private getOffset(I)I
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->getDeclineY()I

    move-result v0

    .line 310
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->getAnswerY()I

    move-result v1

    if-ge p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 318
    :cond_1
    :goto_0
    iget p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mCenterY:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private handleAnimatorOnTouchDown()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPromiting:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 233
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPressedUp:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 236
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPressed:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private handleAnimatorOnTouchUp(I)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPromiting:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 324
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPressed:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 325
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initPressedUpAnimation(I)V

    .line 326
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPressedUp:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private handleAnimatorWhenStartAnimationEx()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPressedUp:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 408
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mGuidePoint:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_1

    .line 409
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mGuidePoint:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->initAnimation(J)V

    .line 411
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorMoveAdsorpted:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 412
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 414
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPressed:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 415
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPromiting:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 416
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPromiting:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private handleTargetIconPositionReset(Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;Z)V
    .locals 1

    .line 648
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handleTargetIconPositionReset. answered: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NBkeyguardIconsCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 651
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->getAnswerY()I

    move-result p1

    goto :goto_0

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->getDeclineY()I

    move-result p1

    .line 655
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->onTouchUp(I)V

    return-void
.end method

.method private handleTouchMove(I)V
    .locals 2

    .line 280
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->getDeclineY()I

    move-result v0

    .line 281
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->getAnswerY()I

    move-result v1

    if-ge p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 288
    :cond_1
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mCenterY:I

    sub-int/2addr p1, v0

    .line 289
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPressed:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 290
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setVisibility(Z)V

    .line 291
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->setVisibility(Z)V

    .line 292
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->setOffsetY(I)V

    .line 293
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->setScale(F)V

    .line 294
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->resetAnswerAndDeclineIcon(I)V

    return-void
.end method

.method private handleUIOnTouchDown()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setVisibility(Z)V

    .line 241
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setIsClipping(Z)V

    .line 242
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->setVisibility(Z)V

    .line 243
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mGuidePoint:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->setVisibility(Z)V

    .line 244
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    .line 245
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    return-void
.end method

.method private handleUIOnToucheUp()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setVisibility(Z)V

    .line 331
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setIsClipping(Z)V

    .line 332
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setClipScale(F)V

    .line 333
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->setVisibility(Z)V

    .line 334
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->setScale(F)V

    return-void
.end method

.method private handleUIWhenStartAnimationEx()V
    .locals 3

    .line 396
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setVisibility(Z)V

    .line 397
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setIsClipping(Z)V

    .line 398
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setClipScale(F)V

    .line 399
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->setVisibility(Z)V

    .line 400
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    .line 401
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    return-void
.end method

.method private initADclipAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez p1, :cond_0

    .line 561
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {v4, v2}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    .line 562
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {v4, v3}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    int-to-float p1, p1

    .line 563
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->getPositionY()I

    move-result v4

    iget v5, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mCenterY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr p1, v4

    .line 564
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    iget-object v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->CLIP_SCALE:Landroid/util/Property;

    new-array v1, v1, [F

    aput p1, v1, v3

    aput v0, v1, v2

    invoke-static {p0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    .line 566
    :cond_0
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {v4, v3}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    .line 567
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {v4, v2}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    int-to-float p1, p1

    .line 568
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {v4}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->getPositionY()I

    move-result v4

    iget v5, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mCenterY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr p1, v4

    .line 569
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->CLIP_SCALE:Landroid/util/Property;

    new-array v1, v1, [F

    aput p1, v1, v3

    aput v0, v1, v2

    invoke-static {v4, p0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    const-wide/16 v0, 0x96

    .line 571
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private initCircleOffsetAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 552
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->OFFSET:Landroid/util/Property;

    const/4 v1, 0x0

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    .line 553
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private initCircleScaleAnimator()Landroid/animation/ObjectAnimator;
    .locals 3

    .line 576
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mContext:Landroid/content/Context;

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 577
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->SCALE:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v1, 0x64

    .line 578
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 579
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initFinishAnimator()Landroid/animation/ValueAnimator;
    .locals 5

    const/4 v0, 0x2

    .line 593
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 594
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mGuidePoint:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->getAnimTimeLeft()J

    move-result-wide v1

    const-wide/16 v3, 0x320

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 595
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mGuidePoint:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->getAnimTimeLeft()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_0

    .line 597
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mGuidePoint:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->getAnimTimeLeft()J

    move-result-wide v1

    const-wide/16 v3, 0x9c4

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :goto_0
    const-wide/16 v1, 0x0

    .line 599
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 600
    new-instance v1, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPromitingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPromitingListener;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initIcons(Landroid/content/Context;)V
    .locals 2

    .line 112
    new-instance v0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mMyNBRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mWaves:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    .line 117
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mMyNBRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setRedrawerListener(Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;)V

    .line 119
    new-instance v0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    .line 120
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mMyNBRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->setRedrawerListener(Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;)V

    .line 122
    new-instance v0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    .line 123
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mMyNBRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setRedrawerListener(Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;)V

    .line 125
    new-instance v0, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    .line 126
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mMyNBRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setRedrawerListener(Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;)V

    .line 128
    new-instance v0, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mMyNBRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;

    invoke-direct {v0, p1, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mGuidePoint:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    return-void
.end method

.method private initMoveAdsorptedADClipAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 4

    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 477
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    .line 478
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    goto :goto_0

    .line 480
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    .line 481
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    :goto_0
    const/4 p0, 0x1

    .line 484
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    .line 485
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->getClipScale()F

    move-result v1

    .line 486
    iget-object v2, p1, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->CLIP_SCALE:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v1, v3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v3, p0

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1e

    .line 487
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private initMoveAdsorptedAnimator(I)V
    .locals 2

    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorMoveAdsorpted:Landroid/animation/AnimatorSet;

    .line 461
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->redmagic_call_critical_distance_adsorpted:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 462
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 463
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorMoveAdsorpted:Landroid/animation/AnimatorSet;

    .line 465
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initMoveAdsorptedTargetCircleAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 466
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initMoveAdsorptedADClipAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 467
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorMoveAdsorpted:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    return-void
.end method

.method private initMoveAdsorptedTargetCircleAnimator(I)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 493
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->redmagic_call_distance_between_answer_and_center:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-lez p1, :cond_0

    .line 496
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->OFFSET:Landroid/util/Property;

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    .line 498
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->OFFSET:Landroid/util/Property;

    rsub-int/lit8 v0, v0, 0x0

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-static {p0, v1, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    const-wide/16 v0, 0x1e

    .line 500
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private initPressedAnimation()V
    .locals 4

    .line 509
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initPressedTargetIconClipAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 510
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initPressedTargetCircleScaleAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 512
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPressed:Landroid/animation/AnimatorSet;

    const/4 p0, 0x2

    .line 513
    new-array p0, p0, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, p0, v3

    const/4 v0, 0x1

    aput-object v1, p0, v0

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private initPressedTargetCircleScaleAnimator()Landroid/animation/ObjectAnimator;
    .locals 4

    .line 526
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3fa66666    # 1.3f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 528
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->SCALE:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v1, 0x32

    .line 529
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0xfa

    .line 530
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 531
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initPressedTargetIconClipAnimator()Landroid/animation/ObjectAnimator;
    .locals 3

    .line 517
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mContext:Landroid/content/Context;

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 519
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->CLIP_SCALE:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v1, 0x64

    .line 520
    invoke-virtual {p0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 521
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initPressedUpAnimation(I)V
    .locals 5

    .line 537
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initCircleOffsetAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 538
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initADclipAnimator(I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 539
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initCircleScaleAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 540
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initTargetIconAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 541
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initFinishAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 543
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPressedUp:Landroid/animation/AnimatorSet;

    .line 544
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    .line 545
    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    .line 546
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 547
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPressedUp:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 548
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPressedUp:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private initPromitingAnimation()V
    .locals 9

    .line 420
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPromiting:Landroid/animation/AnimatorSet;

    .line 422
    new-instance v0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$WaveAnimationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$WaveAnimationListener;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;)V

    const/4 v2, 0x1

    .line 423
    invoke-direct {p0, v2, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initPromptingWaveAnimator(ILcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$WaveAnimationListener;)Landroid/animation/ValueAnimator;

    move-result-object v3

    const/4 v4, 0x2

    .line 424
    invoke-direct {p0, v4, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initPromptingWaveAnimator(ILcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$WaveAnimationListener;)Landroid/animation/ValueAnimator;

    move-result-object v5

    const/4 v6, 0x3

    .line 425
    invoke-direct {p0, v6, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initPromptingWaveAnimator(ILcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$WaveAnimationListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 427
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initPromtingFinishAnimator()Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 428
    new-instance v8, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPromitingListener;

    invoke-direct {v8, p0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPromitingListener;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;)V

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 430
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPromiting:Landroid/animation/AnimatorSet;

    new-instance v8, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;

    invoke-direct {v8, p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;)V

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 436
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPromiting:Landroid/animation/AnimatorSet;

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v1, v8

    aput-object v5, v1, v2

    aput-object v0, v1, v4

    aput-object v7, v1, v6

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method private initPromptingWaveAnimator(ILcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$WaveAnimationListener;)Landroid/animation/ValueAnimator;
    .locals 2

    const/16 p0, 0x3e8

    const/16 v0, 0x5dc

    const/16 v1, 0x1f4

    .line 440
    filled-new-array {v1, p0, v0}, [I

    move-result-object p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x3

    if-gt p1, v1, :cond_0

    const/4 v1, 0x2

    .line 444
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    sub-int/2addr p1, v0

    .line 445
    aget p0, p0, p1

    int-to-long p0, p0

    invoke-virtual {v1, p0, p1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 p0, 0x0

    .line 446
    invoke-virtual {v1, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 447
    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initPromtingFinishAnimator()Landroid/animation/ValueAnimator;
    .locals 2

    const/4 p0, 0x2

    .line 453
    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v0, 0x9c4

    .line 454
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v0, 0x0

    .line 455
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initTargetIconAnimator()Landroid/animation/ObjectAnimator;
    .locals 4

    .line 584
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3fa66666    # 1.3f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 585
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    iget-object v2, v1, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->CLIP_SCALE:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 586
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 587
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 588
    new-instance v0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPressedUpTargetIconListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$AnimatorPressedUpTargetIconListener;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$1;)V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private onTouchMoveAdsorped(I)V
    .locals 1

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mIsAdsorpted:Z

    .line 269
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->initMoveAdsorptedAnimator(I)V

    .line 270
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorMoveAdsorpted:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private onTouchMoveBelowAdsorpedPointer(I)V
    .locals 2

    const/4 v0, 0x0

    .line 274
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mIsAdsorpted:Z

    .line 275
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mHandler:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 276
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mHandler:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onTouchMoveResetback(I)V
    .locals 1

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mIsAdsorpted:Z

    .line 264
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->handleTouchMove(I)V

    return-void
.end method

.method private recycleNBIconCommons()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->recycle()V

    .line 140
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->recycle()V

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->recycle()V

    .line 142
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->recycle()V

    .line 143
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mGuidePoint:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->recycle()V

    return-void
.end method

.method private resetAnswerAndDeclineIcon(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p1, :cond_0

    .line 341
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    .line 342
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    int-to-float p1, p1

    .line 343
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->getDeclineY()I

    move-result v0

    iget v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mCenterY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 344
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setClipScale(F)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    .line 347
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {v1, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setVisibilityF(Z)V

    int-to-float p1, p1

    .line 348
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->getAnswerY()I

    move-result v0

    iget v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mCenterY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 349
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setClipScale(F)V

    :goto_0
    return-void
.end method

.method private startAnimationEx()V
    .locals 0

    .line 391
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->handleAnimatorWhenStartAnimationEx()V

    .line 392
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->handleUIWhenStartAnimationEx()V

    return-void
.end method

.method private startNewWave()V
    .locals 5

    .line 354
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mWaves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 356
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mWaves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->isStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mWaves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->close()V

    .line 358
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mWaves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 362
    :cond_1
    new-instance v0, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mMyNBRedrawListener:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyNBRedrawListener;

    iget v3, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mCenterX:I

    iget v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mCenterY:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/view/keyguard/base/BaseNBIconCommon$NBRedrawListener;II)V

    .line 363
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mWaves:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method close()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->closeAsyncThread()V

    .line 133
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->closeAnimatorSets()V

    .line 134
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->closeWaves()V

    .line 135
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->recycleNBIconCommons()V

    return-void
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mWaves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;

    .line 217
    invoke-virtual {v1, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/base/NBWave;->redraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mGuidePoint:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->redraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 220
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->redraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 221
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->redraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 222
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->redraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 223
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->redraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method getAnswerY()I
    .locals 0

    .line 175
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->getPositionY()I

    move-result p0

    return p0
.end method

.method getCenterX()I
    .locals 0

    .line 167
    iget p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mCenterX:I

    return p0
.end method

.method getCenterY()I
    .locals 0

    .line 171
    iget p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mCenterY:I

    return p0
.end method

.method getDeclineY()I
    .locals 0

    .line 179
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->getPositionY()I

    move-result p0

    return p0
.end method

.method isTargetCircleAdsorpted()Z
    .locals 0

    .line 505
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mIsAdsorpted:Z

    return p0
.end method

.method onTouchDown()V
    .locals 0

    .line 227
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->handleAnimatorOnTouchDown()V

    .line 228
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->handleUIOnTouchDown()V

    return-void
.end method

.method onTouchMove(I)V
    .locals 4

    .line 249
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->redmagic_call_critical_distance_adsorpted:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 250
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->redmagic_call_distance_between_answer_and_center:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 251
    iget v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mCenterY:I

    sub-int v2, p1, v2

    .line 253
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v1, :cond_0

    .line 254
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->onTouchMoveResetback(I)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v0, :cond_1

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mIsAdsorpted:Z

    if-nez v1, :cond_1

    .line 256
    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->onTouchMoveAdsorped(I)V

    goto :goto_0

    .line 257
    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 258
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->onTouchMoveBelowAdsorpedPointer(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method onTouchUp(I)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mHandler:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;->removeMessages(I)V

    .line 299
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->getOffset(I)I

    move-result p1

    .line 300
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->handleAnimatorOnTouchUp(I)V

    .line 301
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->handleUIOnToucheUp()V

    return-void
.end method

.method public resetTargetIconPositionDelay(Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;Z)V
    .locals 2

    .line 636
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mHandler:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 638
    iput v1, v0, Landroid/os/Message;->what:I

    .line 639
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 640
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 641
    const-string v1, "answered"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 642
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 643
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mHandler:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

    const-wide/16 p1, 0x7d0

    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method setAnswerPoint(II)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnswerIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setPositionXY(II)V

    return-void
.end method

.method setCenterPoint(II)V
    .locals 1

    .line 183
    iput p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mCenterX:I

    .line 184
    iput p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mCenterY:I

    .line 185
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetIcon:Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetIcon;->setPositionXY(II)V

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mTargetCircle:Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBTargetCircle;->setPositionXY(II)V

    .line 187
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mGuidePoint:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->setPositionXY(II)V

    return-void
.end method

.method setDeclinePoint(II)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDeclineIcon:Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/view/keyguard/NBAnswerAndDeclineIcon;->setPositionXY(II)V

    return-void
.end method

.method setDrawListener(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$DrawListener;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mDrawListener:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$DrawListener;

    return-void
.end method

.method startAnimation()V
    .locals 1

    .line 367
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mHandler:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method stopAnimation()V
    .locals 1

    .line 371
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPromiting:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 375
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mGuidePoint:Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBGuidePoint;->stopAnimation()V

    .line 377
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPressedUp:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 381
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorPressed:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 382
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 385
    :cond_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->mAnimatorMoveAdsorpted:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_3

    .line 386
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_3
    return-void
.end method
