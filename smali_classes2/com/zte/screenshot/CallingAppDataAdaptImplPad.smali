.class Lcom/zte/screenshot/CallingAppDataAdaptImplPad;
.super Lcom/zte/screenshot/BaseCallingAppDataAdapt;
.source "CallingAppDataAdaptImplPad.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/zte/screenshot/BaseCallingAppDataAdapt;-><init>()V

    return-void
.end method


# virtual methods
.method public adaptScreenRotate(Landroid/content/Context;)V
    .locals 3

    .line 18
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 19
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 20
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 22
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->getDegreesForRotation(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayRotationDegrees:I

    .line 24
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput v0, v1, p1

    .line 25
    aget v0, v1, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayWidth:I

    .line 26
    aget p1, v1, p1

    float-to-int p1, p1

    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayHeight:I

    return-void
.end method

.method public getDegreesForRotation(I)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScreenShotCropRect(I)Landroid/graphics/Rect;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getScreenShotCropRect: statusBarHeight = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "getScreenShotCropRect: mDisplayRotationDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayRotationDegrees:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallingAppDataAdapt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayRotationDegrees:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayWidth:I

    sub-int/2addr v1, p1

    iget p0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayHeight:I

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 56
    :cond_0
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayRotationDegrees:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayWidth:I

    iget p0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayHeight:I

    sub-int/2addr p0, p1

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 58
    :cond_1
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayRotationDegrees:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayWidth:I

    iget p0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayHeight:I

    invoke-direct {v0, p1, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 61
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayWidth:I

    iget p0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayHeight:I

    invoke-direct {v0, v2, p1, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0
.end method

.method public getScreenShotCropRectU(I)Landroid/graphics/Rect;
    .locals 3

    .line 74
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayRotationDegrees:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    .line 81
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayWidth:I

    iget p0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayHeight:I

    invoke-direct {v0, v2, p1, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayHeight:I

    iget p0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayWidth:I

    invoke-direct {v0, v2, p1, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0
.end method

.method public modifyPressPoint(I)V
    .locals 2

    .line 31
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mDisplayRotationDegrees:I

    if-eqz v0, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressRawX:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressRawX:F

    .line 38
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressTwoRawX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressTwoRawX:F

    goto :goto_0

    .line 33
    :cond_1
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressRawY:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressRawY:F

    .line 34
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressTwoRawY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressTwoRawY:F

    .line 43
    :goto_0
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressRawX:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressRawX:F

    :goto_1
    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressRawX:F

    .line 44
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressRawY:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    move p1, v0

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressRawY:F

    :goto_2
    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressRawY:F

    .line 45
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressTwoRawX:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    move p1, v0

    goto :goto_3

    :cond_4
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressTwoRawX:F

    :goto_3
    iput p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressTwoRawX:F

    .line 46
    iget p1, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressTwoRawY:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    goto :goto_4

    :cond_5
    iget v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressTwoRawY:F

    :goto_4
    iput v0, p0, Lcom/zte/screenshot/CallingAppDataAdaptImplPad;->mPressTwoRawY:F

    return-void
.end method

.method public tryRotateBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    return-object p1
.end method
