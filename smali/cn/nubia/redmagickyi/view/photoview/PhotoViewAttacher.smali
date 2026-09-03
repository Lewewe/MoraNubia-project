.class public Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;,
        Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
    }
.end annotation


# static fields
.field private static DEFAULT_MAX_SCALE:F = 3.0f

.field private static DEFAULT_MID_SCALE:F = 1.75f

.field private static DEFAULT_MIN_SCALE:F = 1.0f

.field private static DEFAULT_ZOOM_DURATION:I = 0xc8

.field private static final HORIZONTAL_EDGE_BOTH:I = 0x2

.field private static final HORIZONTAL_EDGE_LEFT:I = 0x0

.field private static final HORIZONTAL_EDGE_NONE:I = -0x1

.field private static final HORIZONTAL_EDGE_RIGHT:I = 0x1

.field private static SINGLE_TOUCH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhotoViewAttacher"

.field private static final VERTICAL_EDGE_BOTH:I = 0x2

.field private static final VERTICAL_EDGE_BOTTOM:I = 0x1

.field private static final VERTICAL_EDGE_NONE:I = -0x1

.field private static final VERTICAL_EDGE_TOP:I


# instance fields
.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseRotation:F

.field private mBlockParentIntercept:Z

.field private mCurrentFlingRunnable:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHorizontalScrollEdge:I

.field private mImageView:Landroid/widget/ImageView;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcn/nubia/redmagickyi/view/photoview/OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnViewDragListener:Lcn/nubia/redmagickyi/view/photoview/OnViewDragListener;

.field private mOutsidePhotoTapListener:Lcn/nubia/redmagickyi/view/photoview/OnOutsidePhotoTapListener;

.field private mPhotoTapListener:Lcn/nubia/redmagickyi/view/photoview/OnPhotoTapListener;

.field private mScaleChangeListener:Lcn/nubia/redmagickyi/view/photoview/OnScaleChangedListener;

.field private mScaleDragDetector:Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mSingleFlingListener:Lcn/nubia/redmagickyi/view/photoview/OnSingleFlingListener;

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mVerticalScrollEdge:I

.field private mViewTapListener:Lcn/nubia/redmagickyi/view/photoview/OnViewTapListener;

.field private mZoomDuration:I

.field private mZoomEnabled:Z

.field private onGestureListener:Lcn/nubia/redmagickyi/view/photoview/OnGestureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 58
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    const/16 v0, 0x9

    .line 61
    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMatrixValues:[F

    .line 62
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 63
    sget v0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->DEFAULT_ZOOM_DURATION:I

    iput v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mZoomDuration:I

    .line 64
    sget v0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->DEFAULT_MIN_SCALE:F

    iput v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMinScale:F

    .line 65
    sget v0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->DEFAULT_MID_SCALE:F

    iput v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMidScale:F

    .line 66
    sget v0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->DEFAULT_MAX_SCALE:F

    iput v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMaxScale:F

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    const/4 v1, 0x2

    .line 85
    iput v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 86
    iput v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 89
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 90
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 92
    new-instance v0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$1;-><init>(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->onGestureListener:Lcn/nubia/redmagickyi/view/photoview/OnGestureListener;

    .line 153
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    .line 154
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 156
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 161
    new-instance v0, Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->onGestureListener:Lcn/nubia/redmagickyi/view/photoview/OnGestureListener;

    invoke-direct {v0, v1, v2}, Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;-><init>(Landroid/content/Context;Lcn/nubia/redmagickyi/view/photoview/OnGestureListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;

    .line 162
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$2;-><init>(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 187
    new-instance p1, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$3;

    invoke-direct {p1, p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$3;-><init>(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)V

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/OnViewDragListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mOnViewDragListener:Lcn/nubia/redmagickyi/view/photoview/OnViewDragListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;Landroid/widget/ImageView;)I
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)F
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMaxScale:F

    return p0
.end method

.method static synthetic access$1300(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/OnScaleChangedListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcn/nubia/redmagickyi/view/photoview/OnScaleChangedListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/OnSingleFlingListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mSingleFlingListener:Lcn/nubia/redmagickyi/view/photoview/OnSingleFlingListener;

    return-object p0
.end method

.method static synthetic access$1600()F
    .locals 1

    .line 40
    sget v0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->DEFAULT_MIN_SCALE:F

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .line 40
    sget v0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->SINGLE_TOUCH:I

    return v0
.end method

.method static synthetic access$1800(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/OnViewTapListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mViewTapListener:Lcn/nubia/redmagickyi/view/photoview/OnViewTapListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/OnPhotoTapListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcn/nubia/redmagickyi/view/photoview/OnPhotoTapListener;

    return-object p0
.end method

.method static synthetic access$2100(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/OnOutsidePhotoTapListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcn/nubia/redmagickyi/view/photoview/OnOutsidePhotoTapListener;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/OnGestureListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->onGestureListener:Lcn/nubia/redmagickyi/view/photoview/OnGestureListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)I
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mZoomDuration:I

    return p0
.end method

.method static synthetic access$2400(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Landroid/widget/ImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)I
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    return p0
.end method

.method static synthetic access$800(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)I
    .locals 0

    .line 40
    iget p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    return p0
.end method

.method static synthetic access$900(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;)Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;

    return-object p0
.end method

.method static synthetic access$902(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;)Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;

    return-object p1
.end method

.method private cancelFling()V
    .locals 1

    .line 719
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    const/4 v0, 0x0

    .line 721
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$FlingRunnable;

    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .line 551
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private checkMatrixBounds()Z
    .locals 13

    .line 649
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 653
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 655
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v4}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v4

    .line 657
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "height <= viewHeight :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-float v4, v4

    cmpg-float v6, v2, v4

    const/4 v7, 0x1

    if-gtz v6, :cond_1

    move v8, v7

    goto :goto_0

    :cond_1
    move v8, v1

    :goto_0
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "PhotoViewAttacher"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-gtz v6, :cond_4

    .line 660
    sget-object v6, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v12, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v12

    aget v6, v6, v12

    if-eq v6, v10, :cond_3

    if-eq v6, v9, :cond_2

    sub-float/2addr v4, v2

    div-float/2addr v4, v8

    .line 668
    iget v2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :cond_2
    sub-float/2addr v4, v2

    .line 665
    iget v2, v0, Landroid/graphics/RectF;->top:F

    :goto_1
    sub-float/2addr v4, v2

    goto :goto_2

    .line 662
    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v2

    .line 671
    :goto_2
    iput v10, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    goto :goto_3

    .line 672
    :cond_4
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v11

    if-lez v2, :cond_5

    .line 673
    iput v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 674
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v4, v2

    goto :goto_3

    .line 675
    :cond_5
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_6

    .line 676
    iput v7, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    .line 677
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v2

    goto :goto_3

    .line 679
    :cond_6
    iput v5, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mVerticalScrollEdge:I

    move v4, v11

    .line 682
    :goto_3
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v6, v3, v2

    if-gtz v6, :cond_9

    .line 684
    sget-object v1, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v5, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v10, :cond_8

    if-eq v1, v9, :cond_7

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    .line 692
    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_4

    :cond_7
    sub-float/2addr v2, v3

    .line 689
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_4
    sub-float/2addr v2, v0

    move v11, v2

    goto :goto_5

    .line 686
    :cond_8
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    move v11, v0

    .line 695
    :goto_5
    iput v10, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    goto :goto_6

    .line 696
    :cond_9
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v11

    if-lez v3, :cond_a

    .line 697
    iput v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 698
    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v11, v0

    goto :goto_6

    .line 699
    :cond_a
    iget v1, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b

    .line 700
    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v11, v2, v0

    .line 701
    iput v7, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    goto :goto_6

    .line 703
    :cond_b
    iput v5, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mHorizontalScrollEdge:I

    .line 706
    :goto_6
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v11, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return v7
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 4

    .line 563
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 566
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 567
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    .line 501
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 502
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 503
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 1

    .line 715
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 1

    .line 711
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .line 522
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 523
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMatrixValues:[F

    aget p0, p0, p2

    return p0
.end method

.method private resetMatrix()V
    .locals 1

    .line 530
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 531
    iget v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 532
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 533
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 539
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcn/nubia/redmagickyi/view/photoview/OnMatrixChangedListener;

    if-eqz v0, :cond_0

    .line 540
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 542
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcn/nubia/redmagickyi/view/photoview/OnMatrixChangedListener;

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 581
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    .line 582
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    .line 583
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 584
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    .line 585
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, v2

    div-float v3, v0, v2

    int-to-float p1, p1

    div-float v4, v1, p1

    .line 588
    iget-object v5, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    .line 589
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 590
    :cond_1
    iget-object v5, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    if-ne v5, v6, :cond_3

    .line 591
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 592
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 597
    invoke-static {}, Lcn/nubia/redmagickyi/view/photoview/Util;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-static {}, Lcn/nubia/redmagickyi/view/photoview/Util;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v8, v2

    div-float/2addr v8, p1

    .line 600
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "screenWhRadio :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PhotoViewAttacher"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "imageWhRadio :"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v4, v8, v4

    if-gez v4, :cond_2

    .line 604
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v9, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 606
    :cond_2
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 610
    :cond_3
    iget-object v5, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v5, v6, :cond_4

    .line 611
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 612
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 613
    iget-object v4, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    mul-float/2addr p1, v3

    sub-float/2addr v1, p1

    div-float/2addr v1, v7

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 616
    :cond_4
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v9, v9, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 617
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v9, v9, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 618
    iget v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseRotation:F

    float-to-int v0, v0

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_5

    .line 619
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v9, v9, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 621
    :cond_5
    sget-object p1, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    goto :goto_0

    .line 632
    :cond_6
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 629
    :cond_7
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 626
    :cond_8
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_0

    .line 623
    :cond_9
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 638
    :goto_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->resetMatrix()V

    return-void
.end method


# virtual methods
.method public displyRectIsFromTop()Z
    .locals 2

    .line 643
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 645
    :cond_0
    iget p0, p0, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .line 490
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .line 259
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 260
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 0

    .line 507
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getMaximumScale()F
    .locals 0

    .line 311
    iget p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMaxScale:F

    return p0
.end method

.method public getMediumScale()F
    .locals 0

    .line 302
    iget p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMidScale:F

    return p0
.end method

.method public getMinimumScale()F
    .locals 0

    .line 293
    iget p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMinScale:F

    return p0
.end method

.method public getScale()F
    .locals 6

    .line 320
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x3

    .line 321
    invoke-direct {p0, v1, v4}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result p0

    float-to-double v4, p0

    .line 320
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p0, v1

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 329
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .line 497
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public isZoomEnabled()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return p0
.end method

.method public isZoomable()Z
    .locals 0

    .line 466
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return p0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    .line 344
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 351
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/photoview/Util;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 352
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v3, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    .line 369
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 371
    new-instance v9, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getScale()F

    move-result v5

    iget v6, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMinScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v3, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    .line 375
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 377
    new-instance v9, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getScale()F

    move-result v5

    iget v6, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p1, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    move p1, v2

    goto :goto_2

    .line 354
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 358
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 362
    :cond_3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->cancelFling()V

    :cond_4
    :goto_1
    move p1, v1

    .line 384
    :goto_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;

    if-eqz v0, :cond_8

    .line 385
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;->isScaling()Z

    move-result p1

    .line 386
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;->isDragging()Z

    move-result v0

    .line 387
    iget-object v3, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;

    invoke-virtual {v3, p2}, Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez p1, :cond_5

    .line 388
    iget-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;->isScaling()Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    if-nez v0, :cond_6

    .line 389
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/photoview/CustomGestureDetector;->isDragging()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    move v1, v2

    .line 390
    :cond_7
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBlockParentIntercept:Z

    move v1, v3

    goto :goto_5

    :cond_8
    move v1, p1

    .line 393
    :goto_5
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_9

    move v1, v2

    :cond_9
    return v1
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    .line 401
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    return-void
.end method

.method public setBaseRotation(F)V
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    .line 276
    iput p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseRotation:F

    .line 277
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->update()V

    .line 278
    iget p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mBaseRotation:F

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setRotationBy(F)V

    .line 279
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 267
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 270
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 271
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    const/4 p0, 0x1

    return p0

    .line 265
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Matrix cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaximumScale(F)V
    .locals 2

    .line 315
    iget v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcn/nubia/redmagickyi/view/photoview/Util;->checkZoomLevels(FFF)V

    .line 316
    iput p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMaxScale:F

    return-void
.end method

.method public setMediumScale(F)V
    .locals 2

    .line 306
    iget v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcn/nubia/redmagickyi/view/photoview/Util;->checkZoomLevels(FFF)V

    .line 307
    iput p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMidScale:F

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2

    .line 297
    iget v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lcn/nubia/redmagickyi/view/photoview/Util;->checkZoomLevels(FFF)V

    .line 298
    iput p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMinScale:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 242
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnMatrixChangeListener(Lcn/nubia/redmagickyi/view/photoview/OnMatrixChangedListener;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcn/nubia/redmagickyi/view/photoview/OnMatrixChangedListener;

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcn/nubia/redmagickyi/view/photoview/OnOutsidePhotoTapListener;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mOutsidePhotoTapListener:Lcn/nubia/redmagickyi/view/photoview/OnOutsidePhotoTapListener;

    return-void
.end method

.method public setOnPhotoTapListener(Lcn/nubia/redmagickyi/view/photoview/OnPhotoTapListener;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcn/nubia/redmagickyi/view/photoview/OnPhotoTapListener;

    return-void
.end method

.method public setOnScaleChangeListener(Lcn/nubia/redmagickyi/view/photoview/OnScaleChangedListener;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleChangeListener:Lcn/nubia/redmagickyi/view/photoview/OnScaleChangedListener;

    return-void
.end method

.method public setOnSingleFlingListener(Lcn/nubia/redmagickyi/view/photoview/OnSingleFlingListener;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mSingleFlingListener:Lcn/nubia/redmagickyi/view/photoview/OnSingleFlingListener;

    return-void
.end method

.method public setOnViewDragListener(Lcn/nubia/redmagickyi/view/photoview/OnViewDragListener;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mOnViewDragListener:Lcn/nubia/redmagickyi/view/photoview/OnViewDragListener;

    return-void
.end method

.method public setOnViewTapListener(Lcn/nubia/redmagickyi/view/photoview/OnViewTapListener;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mViewTapListener:Lcn/nubia/redmagickyi/view/photoview/OnViewTapListener;

    return-void
.end method

.method public setRotationBy(F)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 289
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 284
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7

    .line 445
    iget v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    if-eqz p4, :cond_0

    .line 449
    iget-object p4, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    new-instance v6, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;FFFF)V

    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 451
    :cond_0
    iget-object p4, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p4, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 452
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    :goto_0
    return-void

    .line 446
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Scale must be within the range of minScale and maxScale"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScale(FZ)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 0

    .line 405
    invoke-static {p1, p2, p3}, Lcn/nubia/redmagickyi/view/photoview/Util;->checkZoomLevels(FFF)V

    .line 406
    iput p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMinScale:F

    .line 407
    iput p2, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMidScale:F

    .line 408
    iput p3, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mMaxScale:F

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 333
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/photoview/Util;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 334
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 335
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setZoomInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0

    .line 511
    iput p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mZoomDuration:I

    return-void
.end method

.method public setZoomable(Z)V
    .locals 0

    .line 470
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 471
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    .line 475
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 480
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->resetMatrix()V

    :goto_0
    return-void
.end method
