.class public abstract Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;
.source "BaseOriginalIconTrack.java"


# static fields
.field private static final DEFAULT_SCALE:F = 0.9f

.field private static final MAX_SCALE_RATE:F = 0.3f


# instance fields
.field private final TAG:Ljava/lang/String;

.field private scaledBitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;-><init>()V

    .line 19
    const-string v0, "OriginalIconTrack"

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->TAG:Ljava/lang/String;

    return-void
.end method

.method private measureScale(IFF)F
    .locals 0

    const/4 p0, 0x2

    if-gt p1, p0, :cond_1

    int-to-float p0, p1

    mul-float/2addr p3, p0

    const/high16 p0, 0x40400000    # 3.0f

    div-float/2addr p3, p0

    :cond_0
    add-float/2addr p2, p3

    goto :goto_0

    :cond_1
    const/16 p0, 0x1c

    if-lt p1, p0, :cond_0

    add-float/2addr p2, p3

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p2

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    sub-float/2addr p2, p0

    :goto_0
    return p2
.end method

.method private scale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 119
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 120
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "scale failed, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OriginalIconTrack"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private updatePaint(I)V
    .locals 2

    if-gtz p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/16 p1, 0x33

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    sub-int/2addr p1, v1

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBeginIndex()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public getEndIndex()I
    .locals 0

    const/16 p0, 0x25

    return p0
.end method

.method public getLayerPosition()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public isCommonRes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadBitmaps(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 27
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->loadBitmaps(I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->scaledBitmaps:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->scaledBitmaps:Ljava/util/Map;

    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->getEndIndex()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->getBeginIndex()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    const v1, 0x3f666666    # 0.9f

    const v2, 0x3e99999a    # 0.3f

    .line 32
    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->measureScale(IFF)F

    move-result v1

    .line 33
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->scaledBitmaps:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->scaledBitmaps:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->scale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 2

    .line 87
    invoke-direct {p0, p5}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->updatePaint(I)V

    const p2, 0x3f666666    # 0.9f

    const p3, 0x3e99999a    # 0.3f

    .line 89
    invoke-direct {p0, p5, p2, p3}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->measureScale(IFF)F

    move-result p2

    .line 90
    iget-object p3, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->scaledBitmaps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    return-object p4

    .line 96
    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_header_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    const/4 v0, 0x5

    if-gt p5, v0, :cond_1

    mul-int/2addr p3, p5

    .line 99
    div-int/2addr p3, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    if-gt p5, v0, :cond_2

    add-int/lit8 p3, p3, 0x9

    .line 107
    :cond_2
    :goto_0
    iget p5, p4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    .line 108
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p3

    .line 109
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    sub-int p3, p4, p3

    .line 110
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, p5

    .line 111
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p5, p3, v0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p3, 0x0

    .line 112
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, p2, p3, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method public release()V
    .locals 3

    .line 63
    invoke-super {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->release()V

    .line 65
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->scaledBitmaps:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->scaledBitmaps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->scaledBitmaps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->scaledBitmaps:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "release failed, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OriginalIconTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public final transferIndex(I)I
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->getBeginIndex()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->getEndIndex()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseOriginalIconTrack;->getBeginIndex()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
