.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFullScreenBitmap(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 4

    .line 14
    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealSize()[I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 16
    aget p1, v0, v2

    aget v3, v0, v1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 17
    aget v2, v0, v2

    aget v0, v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 19
    :cond_0
    aget p1, v0, v2

    aget v3, v0, v1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 20
    aget v2, v0, v2

    aget v0, v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 22
    :goto_0
    invoke-static {p0, p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/BitmapUtils;->resizeBitmapByCenterCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getHuiduDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 54
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 55
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 57
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 58
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object p0
.end method

.method private static resizeBitmapByCenterCrop(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 5

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 30
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v2, v0, p2

    mul-int v3, p1, v1

    const/4 v4, 0x0

    if-le v2, v3, :cond_1

    .line 34
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/2addr p1, v1

    .line 35
    div-int/2addr p1, p2

    sub-int/2addr v0, p1

    .line 36
    div-int/lit8 v0, v0, 0x2

    .line 38
    invoke-static {p0, v0, v4, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-ge v2, v3, :cond_2

    .line 41
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr p2, v0

    .line 42
    div-int/2addr p2, p1

    sub-int/2addr v1, p2

    .line 44
    div-int/lit8 v1, v1, 0x2

    .line 45
    invoke-static {p0, v4, v1, v0, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
