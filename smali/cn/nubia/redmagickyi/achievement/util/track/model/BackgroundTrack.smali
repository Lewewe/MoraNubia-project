.class public final Lcn/nubia/redmagickyi/achievement/util/track/model/BackgroundTrack;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;
.source "BackgroundTrack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;-><init>()V

    return-void
.end method


# virtual methods
.method public bitmapsToRead()[Ljava/lang/Integer;
    .locals 2

    const/16 p0, 0xb

    .line 15
    new-array p0, p0, [Ljava/lang/Integer;

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_window_00:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_window_01:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_window_02:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_window_03:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_window_04:I

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_window_05:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_window_06:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_window_07:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_window_08:I

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_window_09:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_window_10:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, p0, v1

    return-object p0
.end method

.method public bridge synthetic bitmapsToRead()[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BackgroundTrack;->bitmapsToRead()[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getBeginIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEndIndex()I
    .locals 0

    .line 34
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/track/TrackManager;->getMaxFrameIndex()I

    move-result p0

    return p0
.end method

.method public getLayerPosition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCommonRes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 2

    .line 45
    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    .line 46
    iget p3, p3, Landroid/graphics/Rect;->right:I

    .line 47
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    add-int/2addr p5, p4

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p4, p3, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p3, 0x0

    .line 49
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BackgroundTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method
