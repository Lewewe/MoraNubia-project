.class public final Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;
.source "PointTrack.java"


# static fields
.field private static final DEFAULT_SCALE:F = 1.0f


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

.field private scaledBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;-><init>()V

    .line 26
    const-string v0, "PointTrack"

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->TAG:Ljava/lang/String;

    return-void
.end method

.method private buildPath(Landroid/graphics/Bitmap;)Landroid/graphics/Path;
    .locals 8

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 162
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

    .line 165
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v7, v6, -0x1

    .line 167
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

    .line 168
    :cond_0
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 169
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 175
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    .line 176
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->loop(Landroid/graphics/Point;Ljava/util/List;Ljava/util/List;)V

    .line 180
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 181
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_5

    if-nez v4, :cond_4

    .line 183
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

    .line 185
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

    .line 188
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    return-object p0
.end method

.method private drawMotionIcon(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 8

    .line 125
    iget-object p2, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->scaledBitmap:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    return-object p4

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-le p5, v0, :cond_1

    .line 132
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->canvasBitmaps:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 133
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->canvasPath:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 v3, 0x0

    .line 135
    invoke-virtual {v2, p2, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 136
    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->lightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, p5, -0x3

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

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->lightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    neg-int p0, p0

    div-int/lit8 p0, p0, 0x2

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_light_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr p0, v5

    int-to-float p0, p0

    invoke-virtual {v2, v3, v4, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 139
    :goto_0
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_header_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p0, v2

    .line 141
    iget p3, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sub-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x2

    .line 143
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_icon_motion_margin_left:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p3, p2

    const/4 p2, 0x4

    if-gt p5, p2, :cond_2

    .line 145
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_icon_motion_transition_x_max1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, p5

    div-int/2addr v2, p2

    add-int/2addr p3, v2

    goto :goto_1

    .line 147
    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_icon_motion_transition_x_max2:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p3, p2

    .line 149
    :goto_1
    iget p2, p4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p0

    const/4 p0, 0x5

    invoke-static {p0, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->achievement_detail_point_margin_bottom:I

    invoke-virtual {p5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    mul-int/2addr p4, p5

    div-int/2addr p4, p0

    sub-int/2addr p2, p4

    .line 150
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    sub-int p0, p2, p0

    .line 151
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    add-int/2addr p4, p3

    .line 152
    new-instance p5, Landroid/graphics/Rect;

    invoke-direct {p5, p3, p0, p4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    invoke-virtual {p1, v0, v1, p5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p5
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

    .line 196
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 197
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 199
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

    .line 200
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 202
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object v2, v1

    move-object v1, v3

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 206
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    invoke-direct {p0, v1, p2, p3}, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->loop(Landroid/graphics/Point;Ljava/util/List;Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method private scale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 216
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 217
    invoke-virtual {v5, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 218
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

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "scale failed, "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PointTrack"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public bitmapsToRead()[Ljava/lang/Integer;
    .locals 2

    const/4 p0, 0x1

    .line 36
    new-array p0, p0, [Ljava/lang/Integer;

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_point:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public bridge synthetic bitmapsToRead()[Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->bitmapsToRead()[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getBeginIndex()I
    .locals 0

    const/16 p0, 0x63

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

    const/4 p0, 0x7

    return p0
.end method

.method public isCommonRes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public loadBitmaps(I)Landroid/graphics/Bitmap;
    .locals 4

    .line 41
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->loadBitmaps(I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 43
    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->getDefaultDensityDpi()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 44
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->scaledBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 45
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_light:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->lightBitmap:Landroid/graphics/Bitmap;

    .line 47
    invoke-static {}, Lcn/nubia/redmagickyi/util/DensityCustomer;->getDefaultDensityDpi()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 48
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->lightBitmap:Landroid/graphics/Bitmap;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {p0, v0, v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->scale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->lightBitmap:Landroid/graphics/Bitmap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->canvasBitmaps:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->canvasPath:Ljava/util/Map;

    const/4 v0, 0x0

    .line 51
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->getEndIndex()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->getBeginIndex()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    .line 52
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->scaledBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->scale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->scaledBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 56
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->scaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->scaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->canvasBitmaps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->canvasPath:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->scaledBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->buildPath(Landroid/graphics/Bitmap;)Landroid/graphics/Path;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 0

    .line 119
    invoke-direct/range {p0 .. p5}, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->drawMotionIcon(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 4

    .line 87
    invoke-super {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->release()V

    .line 89
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->lightBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->lightBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    iput-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->lightBitmap:Landroid/graphics/Bitmap;

    .line 93
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->scaledBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->scaledBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 95
    iput-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->scaledBitmap:Landroid/graphics/Bitmap;

    .line 97
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->canvasBitmaps:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 98
    :goto_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->canvasBitmaps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 99
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->canvasBitmaps:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_3
    iput-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->canvasBitmaps:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "release failed, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PointTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public final transferIndex(I)I
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->getBeginIndex()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->getEndIndex()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/PointTrack;->getBeginIndex()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
