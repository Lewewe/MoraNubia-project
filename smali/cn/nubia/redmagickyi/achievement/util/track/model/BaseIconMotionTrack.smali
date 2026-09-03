.class public abstract Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;
.source "BaseIconMotionTrack.java"


# static fields
.field private static final DEFAULT_SCALE:F = 1.2f

.field private static final MAX_SCALE_RATE:F = 1.0f

.field private static final MIN_SCALE_RATE:F = 0.3f


# instance fields
.field private final TAG:Ljava/lang/String;

.field private canvasBitmaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private canvasPath:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private lightBitmap:Landroid/graphics/Bitmap;

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

    .line 25
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;-><init>()V

    .line 26
    const-string v0, "IconMotionTrack"

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->TAG:Ljava/lang/String;

    return-void
.end method

.method private buildPath(Landroid/graphics/Bitmap;)Landroid/graphics/Path;
    .locals 8

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-ge v5, v6, :cond_3

    move v6, v4

    :goto_1
    add-int/lit8 v7, v2, -0x1

    if-ge v6, v7, :cond_2

    .line 213
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v7, v6, -0x1

    .line 215
    invoke-virtual {p1, v7, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v7, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    if-nez v7, :cond_1

    .line 216
    :cond_0
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 217
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 223
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    .line 224
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 226
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->loop(Landroid/graphics/Point;Ljava/util/List;Ljava/util/List;)V

    .line 228
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 229
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_5

    if-nez v4, :cond_4

    .line 231
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    .line 233
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 236
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-object p0
.end method

.method private drawMotionIcon(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 9

    const/high16 p2, 0x3f800000    # 1.0f

    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3f99999a    # 1.2f

    .line 166
    invoke-direct {p0, p5, v1, p2, v0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->measureScale(IFFF)F

    move-result p2

    .line 167
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->scaledBitmaps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    return-object p4

    :cond_0
    const/16 v0, 0x40

    const/4 v1, 0x0

    if-le p5, v0, :cond_1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->canvasBitmaps:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 176
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->canvasPath:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v3, 0x0

    .line 178
    invoke-virtual {v2, p2, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 179
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->lightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, p5, -0x40

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_light_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    int-to-float v4, v4

    iget-object v6, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->lightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_light_margin:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/2addr v5, v7

    add-int/2addr v6, v5

    int-to-float v5, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v0, p2

    .line 185
    :goto_0
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_header_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 187
    iget p3, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sub-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x2

    .line 188
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->isAtMiddle()Z

    move-result p0

    if-nez p0, :cond_3

    .line 190
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_icon_motion_margin_left:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr p3, p0

    const/16 p0, 0x42

    if-gt p5, p0, :cond_2

    .line 192
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_icon_motion_transition_x_max1:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/lit8 p2, p5, -0x3e

    mul-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x4

    goto :goto_1

    .line 194
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_icon_motion_transition_x_max2:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_1
    sub-int/2addr p3, p0

    .line 197
    :cond_3
    iget p0, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v2

    const/16 p2, 0x43

    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x3e

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_icon_motion_margin_bottom:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    mul-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x5

    sub-int/2addr p0, p2

    .line 198
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    sub-int p2, p0, p2

    .line 199
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    add-int/2addr p4, p3

    .line 200
    new-instance p5, Landroid/graphics/Rect;

    invoke-direct {p5, p3, p2, p4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 201
    invoke-virtual {p1, v0, v1, p5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p5
.end method

.method private drawVfxIcon(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 2

    const/4 p2, 0x1

    const/16 p3, 0x19

    if-gt p5, p2, :cond_0

    .line 140
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    if-gt p5, p2, :cond_1

    .line 142
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    add-int/lit8 v0, p5, -0x1

    mul-int/lit16 v0, v0, 0xe6

    div-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p3

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p2

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    const p3, 0x3e99999a    # 0.3f

    const v0, 0x3f99999a    # 1.2f

    .line 147
    invoke-direct {p0, p5, v0, p2, p3}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->measureScale(IFFF)F

    move-result p2

    .line 148
    iget-object p3, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->scaledBitmaps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    if-nez p2, :cond_2

    return-object p4

    .line 153
    :cond_2
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_header_height:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    sub-int/2addr p3, p5

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p3, p5

    .line 155
    iget p5, p4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    .line 156
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p3

    .line 157
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    sub-int p3, p4, p3

    .line 158
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, p5

    .line 159
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p5, p3, v0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p3, 0x0

    .line 160
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, p2, p3, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method private loop(Landroid/graphics/Point;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .line 244
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 245
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 247
    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Point;->y:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    if-eqz v2, :cond_1

    .line 248
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 250
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object v2, v1

    move-object v1, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 254
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 256
    invoke-direct {p0, v1, p2, p3}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->loop(Landroid/graphics/Point;Ljava/util/List;Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method private measureScale(IFFF)F
    .locals 2

    const/high16 p0, 0x40000000    # 2.0f

    const/4 v0, 0x3

    if-lez p1, :cond_0

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    mul-float/2addr p3, p1

    div-float/2addr p3, p0

    add-float/2addr p2, p3

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 v1, 0x9

    if-gt p1, v1, :cond_1

    add-float/2addr p2, p3

    sub-int/2addr p1, v0

    int-to-float p0, p1

    mul-float/2addr p3, p0

    const/high16 p0, 0x40c00000    # 6.0f

    div-float/2addr p3, p0

    sub-float/2addr p2, p3

    goto :goto_0

    :cond_1
    const/16 p3, 0x3e

    if-lt p1, p3, :cond_2

    const/16 v0, 0x40

    .line 280
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p4, p1

    div-float/2addr p4, p0

    sub-float/2addr p2, p4

    :cond_2
    :goto_0
    return p2
.end method

.method private scale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 264
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 265
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 266
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

    .line 268
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "scale failed, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconMotionTrack"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getBeginIndex()I
    .locals 0

    const/16 p0, 0x25

    return p0
.end method

.method public getEndIndex()I
    .locals 0

    .line 77
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->getMaxFrameIndex()I

    move-result p0

    return p0
.end method

.method public getLayerPosition()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public abstract isAtMiddle()Z
.end method

.method public isCommonRes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loadBitmaps(I)Landroid/graphics/Bitmap;
    .locals 6

    .line 38
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->loadBitmaps(I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 40
    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->getDefaultDensityDpi()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 41
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->scaledBitmaps:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 42
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_light:I

    const/4 v2, 0x0

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->lightBitmap:Landroid/graphics/Bitmap;

    .line 44
    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->getDefaultDensityDpi()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 45
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->lightBitmap:Landroid/graphics/Bitmap;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->scale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->lightBitmap:Landroid/graphics/Bitmap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->scaledBitmaps:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->canvasBitmaps:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->canvasPath:Ljava/util/Map;

    const/4 v0, 0x0

    .line 49
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->getEndIndex()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->getBeginIndex()I

    move-result v3

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_2

    const v2, 0x3f99999a    # 1.2f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 50
    invoke-direct {p0, v0, v2, v3, v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->measureScale(IFFF)F

    move-result v2

    .line 51
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->scaledBitmaps:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->scaledBitmaps:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {p0, p1, v2}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->scale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 v3, 0x40

    if-le v0, v3, :cond_1

    .line 55
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->scaledBitmaps:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 56
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 57
    iget-object v4, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->canvasBitmaps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->canvasPath:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->buildPath(Landroid/graphics/Bitmap;)Landroid/graphics/Path;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 1

    const/16 v0, 0x3e

    if-ge p5, v0, :cond_0

    .line 128
    invoke-direct/range {p0 .. p5}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->drawVfxIcon(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->drawMotionIcon(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public release()V
    .locals 5

    .line 87
    invoke-super {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->release()V

    .line 89
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->lightBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->lightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    iput-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->lightBitmap:Landroid/graphics/Bitmap;

    .line 93
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->scaledBitmaps:Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v2

    .line 94
    :goto_0
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->scaledBitmaps:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 95
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->scaledBitmaps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 97
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_2
    iput-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->scaledBitmaps:Ljava/util/Map;

    .line 103
    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->canvasBitmaps:Ljava/util/Map;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 104
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->canvasBitmaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->canvasBitmaps:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    :cond_5
    iput-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->canvasBitmaps:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "release failed, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IconMotionTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public final transferIndex(I)I
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->getBeginIndex()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->getEndIndex()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BaseIconMotionTrack;->getBeginIndex()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
