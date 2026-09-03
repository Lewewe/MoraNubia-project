.class public abstract Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;
.super Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;
.source "BaseBitmapTrack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected bitmapsRes:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field protected cachedBitmaps:[Landroid/graphics/Bitmap;

.field private readFrame:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseTrack;-><init>()V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->TAG:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->bitmapsToRead()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->bitmapsRes:[Ljava/lang/Object;

    .line 22
    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->cachedBitmaps:[Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public abstract bitmapsToRead()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation
.end method

.method public final draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 6

    .line 40
    invoke-virtual {p0, p4}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->transferIndex(I)I

    move-result v5

    .line 41
    invoke-virtual {p0, v5}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->loadBitmaps(I)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public abstract getBeginIndex()I
.end method

.method public abstract getEndIndex()I
.end method

.method public abstract getLayerPosition()I
.end method

.method public loadBitmaps(I)Landroid/graphics/Bitmap;
    .locals 3

    .line 84
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->bitmapsRes:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->cachedBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->bitmapsRes:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 88
    instance-of v1, v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 89
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 91
    check-cast v0, Ljava/lang/String;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->cachedBitmaps:[Landroid/graphics/Bitmap;

    aput-object v0, p0, p1

    :cond_2
    return-object v0

    .line 93
    :cond_3
    new-instance p0, Ljava/lang/UnknownError;

    const-string p1, "unknown bitmap type, must be int or string"

    invoke-direct {p0, p1}, Ljava/lang/UnknownError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/graphics/Rect;
.end method

.method public release()V
    .locals 3

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->interrupt()V

    .line 68
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->cachedBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 69
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->cachedBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 70
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->cachedBitmaps:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release failed, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final run()V
    .locals 2

    .line 53
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->TAG:Ljava/lang/String;

    const-string v1, "bitmap preload begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->readFrame:I

    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->bitmapsRes:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->readFrame:I

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->loadBitmaps(I)Landroid/graphics/Bitmap;

    .line 56
    iget v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->readFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->readFrame:I

    goto :goto_0

    .line 58
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->TAG:Ljava/lang/String;

    const-string v0, "bitmap preload complete"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public transferIndex(I)I
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->getBeginIndex()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/track/model/base/BaseBitmapTrack;->bitmapsRes:[Ljava/lang/Object;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
