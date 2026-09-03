.class public Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;
.super Landroid/widget/RelativeLayout;
.source "NBKeyguardIconsLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$MyDrawListener;,
        Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$OperationCallListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NBKeyguardIconsLayout"


# instance fields
.field private mIsHandleEvent:Z

.field private mNeedDispatch:Z

.field private mOperationCallListener:Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$OperationCallListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPointerId:I

.field private mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mPointerId:I

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mIsHandleEvent:Z

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mNeedDispatch:Z

    .line 29
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mPointerId:I

    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mIsHandleEvent:Z

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mNeedDispatch:Z

    .line 34
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 18
    iput p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mPointerId:I

    const/4 p2, 0x0

    .line 20
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mIsHandleEvent:Z

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mNeedDispatch:Z

    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->handleDraw()V

    return-void
.end method

.method private getEffectivePointerIndex(Landroid/view/MotionEvent;)I
    .locals 5

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 186
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mPointerId:I

    if-ne v3, v4, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private handleDraw()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->invalidate()V

    return-void
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 144
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->isAttachCenterPoint(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mPointerId:I

    .line 146
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->onTouchDown()V

    goto :goto_0

    .line 149
    :cond_0
    const-string v0, "handleTouchDown()...not isAttachCenterPoint"

    const-string v3, "NBKeyguardIconsLayout"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 152
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->getDeclineY()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    .line 153
    const-string p0, "handleTouchDown()...not isAttachCenterPoint but y > mRKGController.getDeclineY()"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 104
    const-string v1, " eventY = "

    const/4 v2, 0x0

    const-string v3, "NBKeyguardIconsLayout"

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    const/4 v4, 0x6

    if-eq v0, v4, :cond_3

    goto/16 :goto_0

    .line 111
    :cond_0
    const-string v0, "handleTouchEvent()...ACTION_POINTER_DOWN"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mNeedDispatch:Z

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->onTouchUp(I)V

    goto :goto_0

    .line 133
    :cond_1
    const-string p1, "handleTouchEvent()...ACTION_CANCEL"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_2
    const-string v0, "handleTouchEvent()...ACTION_MOVE"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mIsHandleEvent:Z

    if-eqz v0, :cond_5

    .line 120
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->handleTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 126
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "handleTouchEvent()...ACTION_UP, eventX = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mIsHandleEvent:Z

    if-eqz v0, :cond_5

    .line 128
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->handleTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 106
    :cond_4
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mIsHandleEvent:Z

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "handleTouchEvent()...ACTION_DOWN, mIsHandleEvent = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mIsHandleEvent:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " eventX = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_5
    :goto_0
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mIsHandleEvent:Z

    return p0
.end method

.method private handleTouchMove(Landroid/view/MotionEvent;)V
    .locals 2

    .line 161
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->getEffectivePointerIndex(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 164
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->onTouchMove(I)V

    :cond_0
    return-void
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 172
    iget v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mPointerId:I

    if-ne v1, v2, :cond_1

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 174
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->onAnswerOrDeclineArea(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 175
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->onTouchUp(I)V

    :cond_0
    const/4 p1, -0x1

    .line 177
    iput p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mPointerId:I

    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mIsHandleEvent:Z

    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-direct {v0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    .line 45
    new-instance p1, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$MyDrawListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$MyDrawListener;-><init>(Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$1;)V

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->setDrawListener(Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl$DrawListener;)V

    return-void
.end method

.method private isAttachCenterPoint(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    .line 194
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAttachCenterPoint()...eventX ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " eventY ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NBKeyguardIconsLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->redmagic_call_keygaurd_target_point_touch_area:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 201
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->getCenterX()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v2, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->getCenterY()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isInAnswerArea(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->getCenterY()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->isTargetCircleAdsorpted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInDeclineArea(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 225
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->getCenterY()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->isTargetCircleAdsorpted()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onAnswerOrDeclineArea(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 210
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->isInAnswerArea(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mOperationCallListener:Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$OperationCallListener;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$OperationCallListener;->onAnswer()V

    goto :goto_0

    .line 213
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->isInDeclineArea(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mOperationCallListener:Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$OperationCallListener;

    if-eqz p0, :cond_1

    .line 214
    invoke-interface {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$OperationCallListener;->onDecline()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 49
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->close()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 92
    :cond_0
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mNeedDispatch:Z

    .line 94
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mNeedDispatch:Z

    if-nez v0, :cond_2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dispatchTouchEvent()...mNeedDispatch = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mNeedDispatch:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NBKeyguardIconsLayout"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mNeedDispatch:Z

    if-eqz v0, :cond_3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 54
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 56
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->view_target_point:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, p3, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->setCenterPoint(II)V

    .line 59
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->view_answer_point:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, p3, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->setAnswerPoint(II)V

    .line 62
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->view_decline_point:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p2, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->setDeclinePoint(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setOperationCallListener(Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$OperationCallListener;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mOperationCallListener:Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout$OperationCallListener;

    return-void
.end method

.method public startAnimation()V
    .locals 0

    .line 81
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->startAnimation()V

    return-void
.end method

.method public stopAnimation()V
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/keyguard/NBKeyguardIconsLayout;->mRKGController:Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/keyguard/NBkeyguardIconsCtrl;->stopAnimation()V

    return-void
.end method
