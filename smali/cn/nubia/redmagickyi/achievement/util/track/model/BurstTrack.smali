.class public final Lcn/nubia/redmagickyi/achievement/util/track/model/BurstTrack;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;
.source "BurstTrack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;-><init>()V

    return-void
.end method


# virtual methods
.method public bitmapsToRead()[Ljava/lang/Integer;
    .locals 2

    const/4 p0, 0x7

    .line 14
    new-array p0, p0, [Ljava/lang/Integer;

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_burst_00:I

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_burst_01:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_burst_02:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_burst_03:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_burst_04:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_burst_05:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p0, v1

    sget v0, Lcn/nubia/redmagickyi/main/R$mipmap;->achievement_task_detail_material_burst_06:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p0, v1

    return-object p0
.end method

.method public bridge synthetic bitmapsToRead()[Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BurstTrack;->bitmapsToRead()[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getBeginIndex()I
    .locals 0

    const/16 p0, 0x24

    return p0
.end method

.method public getEndIndex()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public getLayerPosition()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public isCommonRes()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 0

    const/4 p4, 0x0

    .line 42
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/BurstTrack;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p3
.end method
