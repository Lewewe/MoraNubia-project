.class public Lcn/nubia/redmagickyi/skin/view/MaskImage;
.super Landroid/widget/ImageView;
.source "MaskImage.java"


# instance fields
.field a:Landroid/content/res/TypedArray;

.field bmp:Landroid/graphics/Bitmap;

.field public isGrayMode:Z

.field mException:Ljava/lang/RuntimeException;

.field mImageSource:I

.field mMaskBitmap:Landroid/graphics/Bitmap;

.field original:Landroid/graphics/Bitmap;

.field public select:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mImageSource:I

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    .line 25
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->isGrayMode:Z

    .line 26
    iput-object v1, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->bmp:Landroid/graphics/Bitmap;

    .line 35
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->select:Z

    .line 45
    iput-object v1, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->original:Landroid/graphics/Bitmap;

    .line 59
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static ScaleImgMax(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 98
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->getTargetDensityDpi()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 99
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float p1, p1

    int-to-float v0, v4

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v5

    div-float/2addr p2, v0

    .line 104
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 105
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    move-object v1, p0

    .line 106
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static toGrayScale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->getTargetDensityDpi()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 120
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 121
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 122
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->getTargetDensityDpi()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 124
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 126
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 127
    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 128
    invoke-virtual {v3, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 129
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 130
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 131
    invoke-virtual {v1, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method


# virtual methods
.method public getDimension(I)I
    .locals 0

    .line 177
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getOriginal()Landroid/graphics/Bitmap;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->original:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcn/nubia/redmagickyi/main/R$styleable;->MaskImage:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->a:Landroid/content/res/TypedArray;

    .line 66
    sget p2, Lcn/nubia/redmagickyi/main/R$styleable;->MaskImage_mask:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-nez p1, :cond_0

    .line 68
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->a:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": The content attribute is required and must refer to a valid image."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mException:Ljava/lang/RuntimeException;

    .line 72
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mException:Ljava/lang/RuntimeException;

    if-nez p2, :cond_1

    .line 75
    iget-object p2, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->a:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mMaskBitmap:Landroid/graphics/Bitmap;

    return-void

    .line 73
    :cond_1
    throw p2
.end method

.method public isGrayMode()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->isGrayMode:Z

    return p0
.end method

.method public isSelect()Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->select:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 137
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->original:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->isSelect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->getOriginal()Landroid/graphics/Bitmap;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_123_dp:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->getDimension(I)I

    move-result v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_144_dp:I

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->getDimension(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->ScaleImgMax(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->original:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->getOriginal()Landroid/graphics/Bitmap;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_140_dp:I

    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->getDimension(I)I

    move-result v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_164_dp:I

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->getDimension(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->ScaleImgMax(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->original:Landroid/graphics/Bitmap;

    .line 149
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->isGrayMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->original:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->toGrayScale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->original:Landroid/graphics/Bitmap;

    .line 152
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->getTargetDensityDpi()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 153
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->original:Landroid/graphics/Bitmap;

    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->getTargetDensityDpi()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 154
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->isSelect()Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->bmp:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 157
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->original:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_7_dp:I

    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->getDimension(I)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->bmp:Landroid/graphics/Bitmap;

    .line 159
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->bmp:Landroid/graphics/Bitmap;

    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->getTargetDensityDpi()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 160
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->getTargetDensityDpi()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 163
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 164
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 165
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 166
    iget-object v3, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->bmp:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 167
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 168
    invoke-virtual {p1, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 169
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 172
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 82
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 83
    iget-object p2, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 84
    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->setMeasuredDimension(II)V

    return-void
.end method

.method public setGrayMode(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->isGrayMode:Z

    return-void
.end method

.method public setOriginal(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->original:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/view/MaskImage;->invalidate()V

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/skin/view/MaskImage;->select:Z

    return-void
.end method
