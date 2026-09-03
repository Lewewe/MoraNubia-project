.class public Lcn/nubia/redmagickyi/crop/player/OnTouchListener;
.super Ljava/lang/Object;
.source "OnTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/crop/player/OnTouchListener$MySetting;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

.field private mCurrentPos:I

.field private final mDOUBLEPOINTER_DISTANCE:F

.field private mDuration:I

.field private mFirstOnDown:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsDoublePointer:Z

.field private mIsGesturing:Z

.field private mIsHorizontal:Z

.field private final mSINGLEPOINTER_DISTANCE:F

.field private mScallingTimes:I

.field private mSeekMS:I

.field private mSettings:Lcn/nubia/redmagickyi/crop/player/MediaSettings;

.field private mUIBase:Lcn/nubia/redmagickyi/crop/base/BaseView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/redmagickyi/crop/base/BaseController;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "OnTouchListener"

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mIsGesturing:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 23
    iput v1, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mFirstOnDown:F

    .line 24
    iput v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mScallingTimes:I

    .line 25
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mIsDoublePointer:Z

    .line 26
    iput v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mCurrentPos:I

    .line 27
    iput v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mDuration:I

    .line 28
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mIsHorizontal:Z

    .line 29
    iput v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mSeekMS:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 38
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000    # 20.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mSINGLEPOINTER_DISTANCE:F

    .line 39
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mDOUBLEPOINTER_DISTANCE:F

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    .line 42
    invoke-virtual {p2}, Lcn/nubia/redmagickyi/crop/base/BaseController;->getBaseView()Lcn/nubia/redmagickyi/crop/base/BaseView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mUIBase:Lcn/nubia/redmagickyi/crop/base/BaseView;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/crop/player/OnTouchListener;)Lcn/nubia/redmagickyi/crop/base/BaseView;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mUIBase:Lcn/nubia/redmagickyi/crop/base/BaseView;

    return-object p0
.end method

.method private adjustedPlayPos(I)I
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 140
    iget p0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mDuration:I

    if-lez p0, :cond_0

    .line 141
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method private doGesture(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 112
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_2

    .line 116
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->endGesture()V

    :cond_2
    return v1
.end method

.method private endGesture()V
    .locals 1

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mIsGesturing:Z

    .line 124
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mIsHorizontal:Z

    .line 125
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->resetDoublePointerGesture()V

    .line 126
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mUIBase:Lcn/nubia/redmagickyi/crop/base/BaseView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseView;->onEndGestrue()V

    return-void
.end method

.method private isActionUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isGesturing()Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mIsGesturing:Z

    return p0
.end method

.method private isInBottomRect(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 72
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mUIBase:Lcn/nubia/redmagickyi/crop/base/BaseView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseView;->getBottomRect()Landroid/graphics/Rect;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 77
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isInTopRect(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mUIBase:Lcn/nubia/redmagickyi/crop/base/BaseView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseView;->getTopRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetDoublePointerGesture()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 147
    iput v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mFirstOnDown:F

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mScallingTimes:I

    .line 149
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mIsDoublePointer:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 84
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mController:Lcn/nubia/redmagickyi/crop/base/BaseController;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/base/BaseController;->isPrepared()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 88
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mUIBase:Lcn/nubia/redmagickyi/crop/base/BaseView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/base/BaseView;->isHide()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->isInTopRect(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->isInBottomRect(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mUIBase:Lcn/nubia/redmagickyi/crop/base/BaseView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseView;->startHide()V

    const/4 p0, 0x0

    return p0

    .line 93
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mUIBase:Lcn/nubia/redmagickyi/crop/base/BaseView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/base/BaseView;->isHide()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->isActionUp(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 94
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mUIBase:Lcn/nubia/redmagickyi/crop/base/BaseView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseView;->hide()V

    return v0

    .line 97
    :cond_3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->isGesturing()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->isActionUp(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 98
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mUIBase:Lcn/nubia/redmagickyi/crop/base/BaseView;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseView;->show()V

    return v0

    .line 101
    :cond_4
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->mUIBase:Lcn/nubia/redmagickyi/crop/base/BaseView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/base/BaseView;->isLock()Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    .line 105
    :cond_5
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/crop/player/OnTouchListener;->doGesture(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
