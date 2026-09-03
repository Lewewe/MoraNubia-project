.class public abstract Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;
.super Ljava/lang/Object;
.source "ThumbnailPreview.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailPreview"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private isCreated:Z

.field private final lock:Ljava/lang/Object;

.field private paint:Landroid/graphics/Paint;

.field private scene:Ljava/lang/Integer;

.field private skin:Ljava/lang/Integer;

.field private surface:Landroid/view/Surface;

.field private surfaceSize:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->surfaceSize:[I

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->lock:Ljava/lang/Object;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private isBitmapValid(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private recycleBitmap()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract getScene()I
.end method

.method protected declared-synchronized handleDraw(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    .line 74
    :try_start_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 78
    invoke-static {}, Lcn/nubia/redmagickyi/digitalhuman/utils/ModelStyleManager;->getCurrentSkin()I

    move-result v3

    .line 79
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->getScene()I

    move-result v4

    .line 81
    iget-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->skin:Ljava/lang/Integer;

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 87
    :cond_0
    iget-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->scene:Ljava/lang/Integer;

    if-eqz v5, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    iget-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->surfaceSize:[I

    aget v7, v5, v1

    if-ne v7, v0, :cond_3

    aget v5, v5, v6

    if-eq v5, v2, :cond_2

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 94
    :cond_3
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->skin:Ljava/lang/Integer;

    .line 95
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->scene:Ljava/lang/Integer;

    .line 96
    iget-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->surfaceSize:[I

    aput v0, v5, v1

    .line 97
    aput v2, v5, v6

    goto :goto_3

    .line 88
    :cond_4
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->skin:Ljava/lang/Integer;

    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->scene:Ljava/lang/Integer;

    .line 90
    iget-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->surfaceSize:[I

    aput v0, v5, v1

    .line 91
    aput v2, v5, v6

    goto :goto_3

    .line 82
    :cond_5
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->skin:Ljava/lang/Integer;

    .line 83
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->scene:Ljava/lang/Integer;

    .line 84
    iget-object v5, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->surfaceSize:[I

    aput v0, v5, v1

    .line 85
    aput v2, v5, v6

    .line 105
    :goto_3
    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->recycleBitmap()V

    .line 106
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcn/nubia/redmagickyi/digitalhuman/utils/DigitalHumanThumbnailManager;->getBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    .line 107
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 109
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->getScene()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/utils/DigitalHumanConstants$Scene;->isAvatarScene(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->getScene()I

    move-result v3

    invoke-static {v3}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getAvatarWidth(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    .line 114
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->getScene()I

    move-result v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getAvatarHeight(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 115
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->getScene()I

    move-result v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getAvatarWidth(I)I

    move-result v4

    .line 116
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->getScene()I

    move-result v5

    invoke-static {v5}, Lcn/nubia/redmagickyi/digitalhuman/mapper/SceneMapper;->getAvatarHeight(I)I

    move-result v5

    .line 111
    invoke-static {v0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_6

    .line 119
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    .line 124
    :cond_6
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0, v0, v2, v3}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->scaleBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    iget-object v2, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_7

    .line 126
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 127
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    .line 132
    :cond_7
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSurfaceChanged(Landroid/view/Surface;)V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceChanged = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->isCreated:Z

    .line 44
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->surface:Landroid/view/Surface;

    .line 45
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->refreshUI()V

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/Surface;)V
    .locals 1

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "surfaceCreated = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThumbnailPreview"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/Surface;)V
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceDestroyed = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThumbnailPreview"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->isCreated:Z

    return-void
.end method

.method public refreshUI()V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->isCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 56
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 59
    :try_start_1
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->handleDraw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :goto_0
    :try_start_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->surface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 61
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 63
    :goto_1
    :try_start_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/ThumbnailPreview;->surface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 64
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 67
    :catch_1
    const-string p0, "ThumbnailPreview"

    const-string v0, "refreshUI failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void
.end method

.method public scaleBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 7

    .line 139
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float p0, p0

    mul-float v1, p0, p3

    int-to-float v0, v0

    div-float/2addr v1, v0

    cmpl-float v2, v1, p2

    if-lez v2, :cond_0

    mul-float/2addr v0, p2

    div-float p3, v0, p0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 149
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p2, p0

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p3, p0

    .line 151
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 152
    invoke-virtual {v5, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 153
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

    return-object p0

    :catch_0
    move-exception p0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method
