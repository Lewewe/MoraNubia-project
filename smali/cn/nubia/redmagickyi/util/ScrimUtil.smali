.class public Lcn/nubia/redmagickyi/util/ScrimUtil;
.super Ljava/lang/Object;
.source "ScrimUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static constrain(FFF)F
    .locals 0

    .line 98
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static getGradientColor(IIFI)I
    .locals 4

    .line 118
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    filled-new-array {v0, v1, v2, p0}, [I

    move-result-object p0

    .line 119
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    int-to-float p3, p3

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p3, p2, p3

    if-gez p3, :cond_0

    const/4 p1, 0x0

    .line 123
    aget p3, p0, p1

    aget p1, v0, p1

    sub-int p1, p3, p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p3, p1

    const/4 p1, 0x1

    .line 124
    aget v1, p0, p1

    aget p1, v0, p1

    sub-int p1, v1, p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr v1, p1

    const/4 p1, 0x2

    .line 125
    aget v2, p0, p1

    aget p1, v0, p1

    sub-int p1, v2, p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr v2, p1

    const/4 p1, 0x3

    .line 126
    aget p0, p0, p1

    aget p1, v0, p1

    sub-int p1, p0, p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p0, p1

    .line 127
    invoke-static {p3, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    :cond_0
    return p1
.end method

.method public static getGradientColor(III)[I
    .locals 3

    add-int/lit8 v0, p2, 0x1

    .line 135
    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p2, :cond_0

    int-to-float v2, v1

    .line 137
    invoke-static {p0, p1, v2, p2}, Lcn/nubia/redmagickyi/util/ScrimUtil;->getGradientColor(IIFI)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static makeCubicGradientScrimAlpha(II)[I
    .locals 11

    const/4 v0, 0x2

    .line 102
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 103
    new-array v0, p1, [I

    .line 104
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 105
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 106
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 107
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_0

    int-to-float v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    add-int/lit8 v7, p1, -0x1

    int-to-float v7, v7

    div-float/2addr v5, v7

    float-to-double v7, v5

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    .line 110
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v5, v7

    const/4 v7, 0x0

    invoke-static {v7, v6, v5}, Lcn/nubia/redmagickyi/util/ScrimUtil;->constrain(FFF)F

    move-result v5

    sub-int v6, p1, v4

    add-int/lit8 v6, v6, -0x1

    int-to-float v7, p0

    mul-float/2addr v7, v5

    float-to-int v5, v7

    .line 111
    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static makeCubicGradientScrimDrawable(III)Landroid/graphics/drawable/Drawable;
    .locals 12

    const/4 v0, 0x2

    .line 45
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 46
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 47
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 48
    new-array v7, p1, [I

    .line 49
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 50
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 51
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 52
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    const/4 v4, 0x0

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-ge v4, p1, :cond_0

    int-to-float v8, v4

    mul-float/2addr v8, v5

    add-int/lit8 v9, p1, -0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 55
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v6, v5, v8}, Lcn/nubia/redmagickyi/util/ScrimUtil;->constrain(FFF)F

    move-result v5

    int-to-float v6, p0

    mul-float/2addr v6, v5

    float-to-int v5, v6

    .line 56
    invoke-static {v5, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p0, p2, 0x7

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    move p0, v6

    move v3, p0

    goto :goto_1

    :cond_1
    move p0, v5

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v5

    move p0, v6

    :goto_1
    and-int/lit8 p1, p2, 0x70

    const/16 p2, 0x30

    if-eq p1, p2, :cond_4

    const/16 p2, 0x50

    if-eq p1, p2, :cond_3

    move v4, v6

    goto :goto_2

    :cond_3
    move v4, v6

    move v6, v5

    goto :goto_2

    :cond_4
    move v4, v5

    .line 87
    :goto_2
    new-instance p1, Lcn/nubia/redmagickyi/util/ScrimUtil$2;

    move-object v2, p1

    move v5, p0

    invoke-direct/range {v2 .. v7}, Lcn/nubia/redmagickyi/util/ScrimUtil$2;-><init>(FFFF[I)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    return-object v0
.end method

.method public static makeDefaultGradientScrimDrawable([I[FZ)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 17
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 18
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 19
    new-instance v1, Lcn/nubia/redmagickyi/util/ScrimUtil$1;

    invoke-direct {v1, p2, p0, p1}, Lcn/nubia/redmagickyi/util/ScrimUtil$1;-><init>(Z[I[F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    return-object v0
.end method
