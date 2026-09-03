.class public Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;
.super Ljava/lang/Object;
.source "CarouselZoomPostLayoutListener.java"

# interfaces
.implements Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$PostLayoutListener;


# instance fields
.field private maxAlpha:F

.field private maxScale:F

.field private minAlpha:F

.field private minScale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    iput v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->maxScale:F

    const v1, 0x3f428f5c    # 0.76f

    iput v1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->minScale:F

    .line 15
    iput v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->maxAlpha:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->minAlpha:F

    return-void
.end method


# virtual methods
.method public onChildLayout(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setMaxAlpha(F)Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$PostLayoutListener;
    .locals 0

    .line 68
    iput p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->maxAlpha:F

    return-object p0
.end method

.method public setMaxScale(F)Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$PostLayoutListener;
    .locals 0

    .line 58
    iput p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->maxScale:F

    return-object p0
.end method

.method public setMinAlpha(F)Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$PostLayoutListener;
    .locals 0

    .line 73
    iput p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->minAlpha:F

    return-object p0
.end method

.method public setMinScale(F)Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$PostLayoutListener;
    .locals 0

    .line 63
    iput p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->minScale:F

    return-object p0
.end method

.method public transformChild(Landroid/view/View;FII)Lcn/nubia/redmagickyi/view/gallery/ItemTransformation;
    .locals 10

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    .line 21
    iget p4, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->maxScale:F

    .line 22
    iget p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->maxAlpha:F

    move v8, p0

    move v5, p4

    goto :goto_2

    :cond_0
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 24
    invoke-static {v1, v2}, Ljava/lang/StrictMath;->atan(D)D

    move-result-wide v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-float v3, v3

    add-int/lit8 v4, p4, 0x1

    int-to-double v7, v4

    .line 25
    invoke-static {v7, v8}, Ljava/lang/StrictMath;->atan(D)D

    move-result-wide v7

    div-double/2addr v7, v5

    double-to-float v7, v7

    .line 26
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    add-double/2addr v8, v1

    invoke-static {v8, v9}, Ljava/lang/StrictMath;->atan(D)D

    move-result-wide v1

    div-double/2addr v1, v5

    double-to-float v1, v1

    sub-float/2addr v1, v3

    sub-float/2addr v7, v3

    div-float/2addr v1, v7

    .line 28
    iget v2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->maxScale:F

    iget v3, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->minScale:F

    sub-float v3, v2, v3

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    .line 29
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    move v8, v0

    :goto_0
    move v5, v2

    goto :goto_2

    .line 31
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float p4, p4

    cmpl-float v3, v3, p4

    if-lez v3, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 32
    iget p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->minAlpha:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v1, p4

    mul-float/2addr v1, p0

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    goto :goto_1

    .line 34
    :cond_2
    iget p4, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->maxAlpha:F

    iget p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselZoomPostLayoutListener;->minAlpha:F

    sub-float p0, p4, p0

    mul-float/2addr p0, v1

    sub-float p0, p4, p0

    :goto_1
    move v8, p0

    goto :goto_0

    :goto_2
    const/high16 p0, 0x40000000    # 2.0f

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-ne v1, p3, :cond_3

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p4, v5

    mul-float/2addr p1, p4

    div-float/2addr p1, p0

    .line 42
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    mul-float/2addr p0, p1

    move v7, p0

    move v6, v0

    goto :goto_3

    .line 45
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p4, v5

    mul-float/2addr p1, p4

    div-float/2addr p1, p0

    .line 46
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p0

    mul-float/2addr p0, p1

    move v6, p0

    move v7, v0

    .line 49
    :goto_3
    new-instance p0, Lcn/nubia/redmagickyi/view/gallery/ItemTransformation;

    move-object v3, p0

    move v4, v5

    invoke-direct/range {v3 .. v8}, Lcn/nubia/redmagickyi/view/gallery/ItemTransformation;-><init>(FFFFF)V

    return-object p0
.end method
