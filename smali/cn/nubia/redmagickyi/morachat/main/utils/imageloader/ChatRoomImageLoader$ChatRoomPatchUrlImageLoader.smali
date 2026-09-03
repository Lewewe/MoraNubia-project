.class public Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;
.super Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;
.source "ChatRoomImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChatRoomPatchUrlImageLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

.field private type:I


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/util/imageloader/base/BaseImageLoader;-><init>()V

    .line 162
    iput p2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->type:I

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->saveCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v7, p1

    .line 370
    invoke-static/range {p1 .. p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    if-nez p2, :cond_1

    return-object v7

    .line 377
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->getMinWidth()I

    move-result v8

    .line 378
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->getMinHeight()I

    move-result v9

    .line 379
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->getWidth()I

    move-result v10

    .line 380
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->getHeight()I

    move-result v11

    .line 381
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->getWidth()I

    move-result v0

    .line 382
    invoke-virtual/range {p2 .. p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->getHeight()I

    move-result v1

    .line 383
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lt v2, v8, :cond_2

    if-gt v2, v0, :cond_2

    if-lt v3, v9, :cond_2

    if-gt v3, v1, :cond_2

    return-object v7

    :cond_2
    if-ge v2, v8, :cond_3

    if-ge v3, v9, :cond_3

    return-object v7

    :cond_3
    if-ge v2, v8, :cond_4

    if-le v3, v9, :cond_4

    if-ge v3, v1, :cond_4

    goto :goto_0

    :cond_4
    if-ge v3, v9, :cond_5

    if-le v2, v8, :cond_5

    if-ge v2, v0, :cond_5

    :goto_0
    move v0, v2

    move v1, v3

    :cond_5
    mul-int v4, v2, v1

    .line 405
    div-int/2addr v4, v3

    if-le v4, v0, :cond_6

    mul-int v1, v3, v0

    .line 407
    div-int/2addr v1, v2

    goto :goto_1

    :cond_6
    move v0, v4

    :goto_1
    const/4 v12, 0x0

    if-ge v0, v8, :cond_7

    mul-int/2addr v3, v8

    .line 413
    div-int/2addr v3, v2

    int-to-float v0, v8

    .line 414
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v3

    .line 415
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 416
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 417
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, v11

    div-int/2addr v2, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 424
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 425
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int v1, v1, v17

    div-int/lit8 v15, v1, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/4 v14, 0x0

    move-object v13, v0

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v7, :cond_9

    if-eq v0, v1, :cond_9

    .line 426
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 427
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    :cond_7
    if-ge v1, v9, :cond_8

    mul-int/2addr v2, v9

    .line 432
    div-int/2addr v2, v3

    int-to-float v0, v2

    .line 433
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v9

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 435
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 436
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 437
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, v10

    div-int/2addr v2, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 443
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 444
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v1, v16

    div-int/lit8 v14, v1, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/4 v15, 0x0

    move-object v13, v0

    invoke-static/range {v13 .. v19}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v7, :cond_9

    if-eq v0, v1, :cond_9

    .line 445
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 446
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_8
    int-to-float v0, v0

    .line 450
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float v1, v1

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 452
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 453
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_9
    :goto_2
    return-object v1
.end method

.method private getMemoryCache()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;
    .locals 1

    .line 209
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->type:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$300(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$400(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private saveCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    .line 188
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getImageSize()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->cropBitmap(Landroid/graphics/Bitmap;Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 189
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object v2

    invoke-direct {v2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getMemoryCache()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 190
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object v2

    invoke-direct {v2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getMemoryCache()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 191
    invoke-direct {p0, v0, p1, v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->saveImageSize(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    .line 193
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getImageSize()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->cropBitmap(Landroid/graphics/Bitmap;Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 194
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object v3

    invoke-direct {v3}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getMemoryCache()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 195
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object v3

    invoke-direct {v3}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getMemoryCache()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 196
    invoke-direct {p0, v0, p1, v2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->saveImageSize(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    if-eq v2, p2, :cond_0

    if-eq v1, p2, :cond_0

    .line 199
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 200
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 205
    :cond_0
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->type:I

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    return-object v1
.end method

.method private saveImageSize(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    if-nez p1, :cond_0

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$500(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Ljava/util/Properties;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$600(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Ljava/util/Properties;

    move-result-object v0

    .line 226
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    if-nez p1, :cond_1

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$700(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Ljava/io/File;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$800(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Ljava/io/File;

    move-result-object p0

    :goto_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 232
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 233
    invoke-virtual {v0, p2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 236
    :cond_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 237
    :try_start_1
    invoke-virtual {v0, p2, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "-Property"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object p1, v1

    goto :goto_2

    :catch_0
    move-object p1, v1

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz p1, :cond_4

    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 248
    :catch_1
    :cond_4
    throw p0

    :catch_2
    :goto_3
    if-eqz p1, :cond_5

    .line 244
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 476
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$900(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->destroy()V

    .line 477
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getMemoryCache()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 478
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getMemoryCache()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->keys()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 479
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getMemoryCache()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 480
    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 485
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getMemoryCache()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->clear()V

    :cond_2
    return-void
.end method

.method public getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 180
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getMemoryCache()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 181
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getCacheFolderName()Ljava/lang/String;
    .locals 0

    .line 167
    const-string p0, "cachePic/chatroom"

    return-object p0
.end method

.method protected getDefaultRequestOptions()Lcom/bumptech/glide/request/RequestOptions;
    .locals 0

    .line 172
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$000(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public getImageSize()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;
    .locals 1

    .line 176
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->type:I

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$100(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$200(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getImageSize(Ljava/lang/String;)[I
    .locals 1

    .line 215
    :try_start_0
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->type:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$500(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Ljava/util/Properties;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$600(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Ljava/util/Properties;

    move-result-object p0

    .line 216
    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 217
    const-string/jumbo p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 218
    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    filled-new-array {p1, p0}, [I

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;)V
    .locals 11

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p2, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    if-nez p1, :cond_0

    .line 294
    new-instance p0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "uri is Empty"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p2, p1, v0, p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Ljava/lang/Throwable;)V

    return-void

    .line 299
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 300
    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 301
    invoke-virtual {p2, p1, v0, v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    move v9, v4

    goto :goto_0

    :cond_1
    move v9, v3

    .line 306
    :goto_0
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->type:I

    if-nez v0, :cond_2

    .line 307
    invoke-static {v4}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 309
    :cond_2
    invoke-static {v3}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->of(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 311
    :goto_1
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v9, :cond_3

    if-nez v0, :cond_3

    return-void

    .line 320
    :cond_3
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 322
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;

    move-object v5, v1

    move-object v6, p0

    move-object v8, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$1;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;Ljava/io/File;Ljava/lang/String;ZLcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;)V

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    .line 355
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$900(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$2;

    invoke-direct {v1, p0, v9, p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader$2;-><init>(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;ZLcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->loadImage(Ljava/lang/String;Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;)V

    :goto_2
    return-void
.end method

.method public loadImageAsync(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 256
    :cond_0
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getCacheBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 257
    invoke-static {v1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 261
    :cond_1
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 264
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 266
    :try_start_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initBitmapOptionsDensity(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 268
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    :goto_0
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->saveCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 275
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$900(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->saveCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    return-object v0

    .line 283
    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->this$0:Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->access$900(Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;)Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/util/imageloader/PatchUrlImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 285
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->saveCacheBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public recycleCache(Ljava/lang/String;)V
    .locals 1

    .line 465
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getMemoryCache()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getMemoryCache()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 467
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader$ChatRoomPatchUrlImageLoader;->getMemoryCache()Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/LRULimitedMemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 468
    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatRoomImageLoader;->isBitmapValid(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 469
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
