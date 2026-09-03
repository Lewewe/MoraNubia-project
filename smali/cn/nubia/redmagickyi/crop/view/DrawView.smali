.class public Lcn/nubia/redmagickyi/crop/view/DrawView;
.super Landroid/view/View;
.source "DrawView.java"


# instance fields
.field private mAdjustHeadDegree:I

.field private mAdjustTailDegree:I

.field private mAlphaValue:I

.field private mContext:Landroid/content/Context;

.field private mHeadBitmap:Landroid/graphics/Bitmap;

.field private mHeadImagePath:Ljava/lang/String;

.field private mHeight:I

.field private mImagePos:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPrewBackgroundPaint:Landroid/graphics/Paint;

.field private mTailBitmap:Landroid/graphics/Bitmap;

.field private mTailImagePath:Ljava/lang/String;

.field private mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/crop/view/DrawView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/crop/view/DrawView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mContext:Landroid/content/Context;

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mPrewBackgroundPaint:Landroid/graphics/Paint;

    const/high16 p0, -0x1000000

    .line 49
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeadImagePath:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mTailImagePath:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeadBitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mTailBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mImagePos:I

    .line 31
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mAlphaValue:I

    .line 32
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeight:I

    .line 33
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mWidth:I

    .line 34
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mAdjustHeadDegree:I

    .line 35
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mAdjustTailDegree:I

    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 0

    .line 157
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private computeSampleSizeLarger(F)I
    .locals 0

    float-to-double p0, p1

    .line 147
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/4 p1, 0x1

    if-gt p0, p1, :cond_0

    return p1

    :cond_0
    const/16 p1, 0x8

    if-gt p0, p1, :cond_1

    .line 151
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    goto :goto_0

    .line 152
    :cond_1
    div-int/2addr p0, p1

    mul-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method private getDegree(Ljava/lang/String;)I
    .locals 1

    const/4 p0, -0x1

    .line 209
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 210
    const-string p1, "Orientation"

    invoke-virtual {v0, p1, p0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move p1, p0

    :goto_0
    const/4 v0, 0x0

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x10e

    goto :goto_1

    :cond_1
    const/16 v0, 0x5a

    goto :goto_1

    :cond_2
    const/16 v0, 0xb4

    :cond_3
    :goto_1
    return v0
.end method

.method private scaleBitmap(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    .line 166
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 168
    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    const/4 v4, 0x1

    .line 169
    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 170
    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 171
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/view/DrawView;->getDegree(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, p4

    .line 172
    rem-int/lit16 p1, p1, 0x168

    .line 175
    rem-int/lit16 p4, p1, 0xb4

    if-eqz p4, :cond_0

    .line 176
    iget p4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 177
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_0

    .line 179
    :cond_0
    iget p4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 180
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    int-to-float p4, p4

    int-to-float p2, p2

    div-float/2addr p4, p2

    int-to-float p2, v4

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 182
    invoke-static {p4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/4 p3, 0x0

    .line 183
    iput-boolean p3, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 184
    invoke-direct {p0, p2}, Lcn/nubia/redmagickyi/crop/view/DrawView;->computeSampleSizeLarger(F)I

    move-result p2

    iput p2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 187
    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 189
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 190
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, p3

    invoke-virtual {v9, p1, p2, p4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 191
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/crop/view/DrawView;->closeSilently(Ljava/io/Closeable;)V

    return-object p1

    :cond_1
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/crop/view/DrawView;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 197
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 201
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/crop/view/DrawView;->closeSilently(Ljava/io/Closeable;)V

    :cond_2
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/crop/view/DrawView;->closeSilently(Ljava/io/Closeable;)V

    .line 203
    :cond_3
    throw p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 69
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mImagePos:I

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getPaddingLeft()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getPaddingTop()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    .line 71
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mPrewBackgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 70
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mAlphaValue:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeadBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getPaddingLeft()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getPaddingTop()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    .line 81
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mPrewBackgroundPaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 80
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 82
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mTailBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mAlphaValue:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 86
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mTailBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mTailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mTailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mContext:Landroid/content/Context;

    check-cast p1, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/VideoEditorActivity;->getVideoView()Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    .line 60
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getSurfaceWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mWidth:I

    .line 61
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getSurfaceHeight()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeight:I

    .line 62
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getSurfaceWidth()I

    move-result p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mVideEditorVideo:Lcn/nubia/redmagickyi/crop/view/VideoEditorView;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/crop/view/VideoEditorView;->getSurfaceHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/crop/view/DrawView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setImageAlpha(II)V
    .locals 0

    .line 137
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mImagePos:I

    .line 138
    iput p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mAlphaValue:I

    const/16 p2, 0xfa

    if-le p1, p2, :cond_0

    .line 140
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mAlphaValue:I

    goto :goto_0

    :cond_0
    const/16 p2, 0x32

    if-ge p1, p2, :cond_1

    .line 142
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mAlphaValue:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoHeadImagePath(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 94
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeadImagePath:Ljava/lang/String;

    .line 95
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeadBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeadBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 100
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeadBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeadBitmap:Landroid/graphics/Bitmap;

    .line 104
    :cond_1
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeadImagePath:Ljava/lang/String;

    .line 105
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mAdjustHeadDegree:I

    if-ne v0, p2, :cond_2

    .line 106
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mWidth:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeight:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/nubia/redmagickyi/crop/view/DrawView;->scaleBitmap(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeadBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 108
    :cond_2
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mAdjustHeadDegree:I

    .line 109
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeight:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mWidth:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/nubia/redmagickyi/crop/view/DrawView;->scaleBitmap(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeadBitmap:Landroid/graphics/Bitmap;

    :cond_3
    :goto_0
    return-void
.end method

.method public setVideoTailImagePath(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 116
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mTailImagePath:Ljava/lang/String;

    .line 117
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mTailBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 119
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mTailBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mTailBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 124
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mTailBitmap:Landroid/graphics/Bitmap;

    .line 126
    :cond_1
    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mTailImagePath:Ljava/lang/String;

    .line 127
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mAdjustTailDegree:I

    if-ne v0, p2, :cond_2

    .line 128
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mWidth:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeight:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/nubia/redmagickyi/crop/view/DrawView;->scaleBitmap(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mTailBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 130
    :cond_2
    iput p2, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mAdjustTailDegree:I

    .line 131
    iget v0, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mHeight:I

    iget v1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mWidth:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcn/nubia/redmagickyi/crop/view/DrawView;->scaleBitmap(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/crop/view/DrawView;->mTailBitmap:Landroid/graphics/Bitmap;

    :cond_3
    :goto_0
    return-void
.end method
