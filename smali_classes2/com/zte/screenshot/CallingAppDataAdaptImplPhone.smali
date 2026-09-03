.class Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;
.super Lcom/zte/screenshot/BaseCallingAppDataAdapt;
.source "CallingAppDataAdaptImplPhone.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/zte/screenshot/BaseCallingAppDataAdapt;-><init>()V

    return-void
.end method

.method private getRotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 149
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x8

    const/4 v2, 0x6

    if-eq p2, v2, :cond_0

    if-ne p2, v1, :cond_1

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    :cond_1
    const/4 v3, 0x3

    const/high16 v4, 0x40000000    # 2.0f

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    if-eq p2, v1, :cond_2

    return-object p1

    :cond_2
    int-to-float p0, p0

    div-float/2addr p0, v4

    int-to-float p2, v0

    div-float/2addr p2, v4

    const/high16 v0, 0x43870000    # 270.0f

    .line 163
    invoke-virtual {v6, v0, p0, p2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    :cond_3
    int-to-float p0, p0

    div-float/2addr p0, v4

    int-to-float p2, v0

    div-float/2addr p2, v4

    const/high16 v0, 0x42b40000    # 90.0f

    .line 157
    invoke-virtual {v6, v0, p0, p2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    :cond_4
    int-to-float p0, p0

    div-float/2addr p0, v4

    int-to-float p2, v0

    div-float/2addr p2, v4

    const/high16 v0, 0x43340000    # 180.0f

    .line 160
    invoke-virtual {v6, v0, p0, p2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 169
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    .line 168
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public adaptScreenRotate(Landroid/content/Context;)V
    .locals 4

    .line 17
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 18
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 19
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 21
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->getDegreesForRotation(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayRotationDegrees:I

    const/4 p1, 0x2

    .line 23
    new-array p1, p1, [F

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, p1, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 24
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayRotationDegrees:I

    if-lez v0, :cond_0

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 27
    iget v3, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayRotationDegrees:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 28
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 29
    aget v0, p1, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    aput v0, p1, v2

    .line 30
    aget v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    aput v0, p1, v1

    .line 32
    :cond_0
    aget v0, p1, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayWidth:I

    .line 33
    aget p1, p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayHeight:I

    return-void
.end method

.method public getDegreesForRotation(I)F
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, 0x42b40000    # 90.0f

    return p0

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    return p0

    :cond_2
    const/high16 p0, 0x43870000    # 270.0f

    return p0
.end method

.method public getScreenShotCropRect(I)Landroid/graphics/Rect;
    .locals 3

    .line 80
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayRotationDegrees:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayWidth:I

    iget p0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayHeight:I

    invoke-direct {v0, v2, p1, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayHeight:I

    iget p0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayWidth:I

    invoke-direct {v0, p1, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayWidth:I

    iget p0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayHeight:I

    sub-int/2addr p0, p1

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 82
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayHeight:I

    sub-int/2addr v1, p1

    iget p0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayWidth:I

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0
.end method

.method public getScreenShotCropRectU(I)Landroid/graphics/Rect;
    .locals 3

    .line 119
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayRotationDegrees:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayWidth:I

    iget p0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayHeight:I

    invoke-direct {v0, v2, p1, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayHeight:I

    iget p0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayWidth:I

    invoke-direct {v0, v2, p1, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0
.end method

.method public modifyPressPoint(I)V
    .locals 2

    .line 39
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayRotationDegrees:I

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 p1, 0xb4

    if-eq v0, p1, :cond_1

    const/16 p1, 0x10e

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawX:F

    .line 62
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawX:F

    .line 63
    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawY:F

    .line 64
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawX:F

    .line 65
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawX:F

    .line 66
    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawY:F

    goto :goto_0

    .line 55
    :cond_1
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawX:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawX:F

    .line 56
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayHeight:I

    int-to-float p1, p1

    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawY:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawY:F

    .line 57
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawX:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawX:F

    .line 58
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayHeight:I

    int-to-float p1, p1

    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawY:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawY:F

    goto :goto_0

    .line 45
    :cond_2
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawY:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawY:F

    .line 46
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawY:F

    .line 47
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawX:F

    .line 48
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawY:F

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawX:F

    .line 49
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawY:F

    .line 50
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawX:F

    .line 51
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawY:F

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawX:F

    .line 52
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawY:F

    goto :goto_0

    .line 41
    :cond_3
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawY:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawY:F

    .line 42
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawY:F

    .line 71
    :goto_0
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawX:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    move p1, v0

    goto :goto_1

    :cond_4
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawX:F

    :goto_1
    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawX:F

    .line 72
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawY:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    move p1, v0

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawY:F

    :goto_2
    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressRawY:F

    .line 73
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawX:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    move p1, v0

    goto :goto_3

    :cond_6
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawX:F

    :goto_3
    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawX:F

    .line 74
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawY:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawY:F

    :goto_4
    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mPressTwoRawY:F

    return-void
.end method

.method public tryRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 100
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->mDisplayRotationDegrees:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 113
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/zte/screenshot/CallingAppDataAdaptImplPhone;->getRotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
