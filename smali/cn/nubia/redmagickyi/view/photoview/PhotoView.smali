.class public Lcn/nubia/redmagickyi/view/photoview/PhotoView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "PhotoView.java"


# instance fields
.field private attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

.field private maxTouchCount:I

.field private pendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 54
    new-instance v0, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    .line 57
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_0
    return-void
.end method

.method private onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/16 v1, 0x105

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 262
    :cond_0
    iget p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->maxTouchCount:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->maxTouchCount:I

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAttacher()Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    return-object p0
.end method

.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .line 151
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getDisplayMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 0

    .line 147
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 0

    .line 89
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public getMaxTouchCount()I
    .locals 0

    .line 271
    iget p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->maxTouchCount:I

    return p0
.end method

.method public getMaximumScale()F
    .locals 0

    .line 183
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result p0

    return p0
.end method

.method public getMediumScale()F
    .locals 0

    .line 175
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result p0

    return p0
.end method

.method public getMinimumScale()F
    .locals 0

    .line 167
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result p0

    return p0
.end method

.method public getScale()F
    .locals 0

    .line 191
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getScale()F

    move-result p0

    return p0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 77
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p0

    return-object p0
.end method

.method public getSuppMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->getSuppMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public isZoomable()Z
    .locals 0

    .line 139
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->isZoomable()Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 252
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0

    .line 199
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 0

    .line 155
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result p0

    return p0
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setFrame(IIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 110
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 117
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setMediumScale(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Lcn/nubia/redmagickyi/view/photoview/OnMatrixChangedListener;)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Lcn/nubia/redmagickyi/view/photoview/OnMatrixChangedListener;)V

    return-void
.end method

.method public setOnOutsidePhotoTapListener(Lcn/nubia/redmagickyi/view/photoview/OnOutsidePhotoTapListener;)V
    .locals 0

    .line 215
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setOnOutsidePhotoTapListener(Lcn/nubia/redmagickyi/view/photoview/OnOutsidePhotoTapListener;)V

    return-void
.end method

.method public setOnPhotoTapListener(Lcn/nubia/redmagickyi/view/photoview/OnPhotoTapListener;)V
    .locals 0

    .line 211
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Lcn/nubia/redmagickyi/view/photoview/OnPhotoTapListener;)V

    return-void
.end method

.method public setOnScaleChangeListener(Lcn/nubia/redmagickyi/view/photoview/OnScaleChangedListener;)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setOnScaleChangeListener(Lcn/nubia/redmagickyi/view/photoview/OnScaleChangedListener;)V

    return-void
.end method

.method public setOnSingleFlingListener(Lcn/nubia/redmagickyi/view/photoview/OnSingleFlingListener;)V
    .locals 0

    .line 247
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setOnSingleFlingListener(Lcn/nubia/redmagickyi/view/photoview/OnSingleFlingListener;)V

    return-void
.end method

.method public setOnViewDragListener(Lcn/nubia/redmagickyi/view/photoview/OnViewDragListener;)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setOnViewDragListener(Lcn/nubia/redmagickyi/view/photoview/OnViewDragListener;)V

    return-void
.end method

.method public setOnViewTapListener(Lcn/nubia/redmagickyi/view/photoview/OnViewTapListener;)V
    .locals 0

    .line 219
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setOnViewTapListener(Lcn/nubia/redmagickyi/view/photoview/OnViewTapListener;)V

    return-void
.end method

.method public setRotationBy(F)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setRotationBy(F)V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setRotationTo(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setScale(F)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 0

    .line 231
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScale(FZ)V
    .locals 0

    .line 227
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setScaleLevels(FFF)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    if-nez v0, :cond_0

    .line 82
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->pendingScaleType:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public setSuppMatrix(Landroid/graphics/Matrix;)Z
    .locals 0

    .line 163
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result p0

    return p0
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 0

    .line 143
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/photoview/PhotoView;->attacher:Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/photoview/PhotoViewAttacher;->setZoomable(Z)V

    return-void
.end method
