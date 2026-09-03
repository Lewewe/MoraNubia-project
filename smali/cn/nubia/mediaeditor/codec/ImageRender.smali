.class public Lcn/nubia/mediaeditor/codec/ImageRender;
.super Ljava/lang/Object;
.source "ImageRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/mediaeditor/codec/ImageRender$ImageRenderListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageRender"


# instance fields
.field private mFiller:Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;

.field private mImageDegreeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImageRenderListener:Lcn/nubia/mediaeditor/codec/ImageRender$ImageRenderListener;

.field private mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

.field private mPts:J

.field private mStopMakeVideo:Z

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    .line 26
    iput-object v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageDegreeList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mStopMakeVideo:Z

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mPts:J

    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 0

    .line 263
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 265
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private computeSampleSizeLarger(F)I
    .locals 0

    float-to-int p0, p1

    const/4 p1, 0x1

    if-gt p0, p1, :cond_0

    return p1

    :cond_0
    const/16 p1, 0x8

    if-gt p0, p1, :cond_1

    .line 257
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    goto :goto_0

    .line 258
    :cond_1
    div-int/2addr p0, p1

    mul-int/2addr p0, p1

    :goto_0
    return p0
.end method

.method private getDegree(Ljava/lang/String;)I
    .locals 1

    const/4 p0, -0x1

    .line 198
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 199
    const-string p1, "Orientation"

    invoke-virtual {v0, p1, p0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 202
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move p1, p0

    :goto_0
    const/4 v0, 0x0

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x10e

    goto :goto_1

    :cond_1
    const/16 v0, 0x5a

    goto :goto_1

    :cond_2
    const/16 v0, 0xb4

    :cond_3
    :goto_1
    return v0
.end method

.method private scaleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 227
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 229
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 230
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 231
    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 232
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 233
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    int-to-float p2, p2

    div-float/2addr v3, p2

    int-to-float p2, v4

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 234
    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x0

    .line 236
    iput-boolean p3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 237
    invoke-direct {p0, p2}, Lcn/nubia/mediaeditor/codec/ImageRender;->computeSampleSizeLarger(F)I

    move-result p2

    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 240
    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    invoke-direct {p0, v1}, Lcn/nubia/mediaeditor/codec/ImageRender;->closeSilently(Ljava/io/Closeable;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 243
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 247
    invoke-direct {p0, v1}, Lcn/nubia/mediaeditor/codec/ImageRender;->closeSilently(Ljava/io/Closeable;)V

    :cond_0
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcn/nubia/mediaeditor/codec/ImageRender;->closeSilently(Ljava/io/Closeable;)V

    .line 249
    :cond_1
    throw p1
.end method


# virtual methods
.method public addVideoHeadOrTail(ZIII)V
    .locals 10

    .line 123
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0xf0

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c

    :goto_0
    const/4 v1, 0x1

    if-eqz p4, :cond_3

    const/16 v2, 0xc8

    .line 130
    div-int/2addr v2, p4

    if-ge v2, v1, :cond_2

    move v2, v1

    .line 133
    :cond_2
    div-int/lit16 v3, p4, 0xc8

    if-ge v3, v1, :cond_4

    move v3, v1

    goto :goto_1

    :cond_3
    move v2, v1

    move v3, v2

    .line 137
    :cond_4
    :goto_1
    iget-object v4, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    .line 138
    iget-object p1, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    if-eqz p1, :cond_5

    .line 139
    invoke-virtual {p1}, Lcn/nubia/mediaeditor/codec/CanvasInputSurface;->release()V

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    :cond_5
    return-void

    :cond_6
    const/4 v5, 0x0

    .line 144
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 145
    iget-object v6, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    invoke-virtual {v6}, Lcn/nubia/mediaeditor/codec/CanvasInputSurface;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    .line 146
    invoke-virtual {v7}, Lcn/nubia/mediaeditor/codec/CanvasInputSurface;->getHeight()I

    move-result v7

    .line 145
    invoke-direct {p0, v4, v6, v7}, Lcn/nubia/mediaeditor/codec/ImageRender;->scaleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_7

    .line 148
    const-string p0, "ImageRender"

    const-string p1, "Create Bitmap failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_7
    invoke-direct {p0, v4}, Lcn/nubia/mediaeditor/codec/ImageRender;->getDegree(Ljava/lang/String;)I

    move-result v4

    move v7, v5

    :goto_2
    if-ge v7, p4, :cond_f

    .line 155
    iget-boolean v8, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mStopMakeVideo:Z

    if-eqz v8, :cond_8

    goto :goto_7

    :cond_8
    if-le p2, v4, :cond_9

    sub-int v8, p2, v4

    rsub-int v8, v8, 0x168

    add-int/2addr v8, p3

    .line 160
    :try_start_0
    rem-int/lit16 v8, v8, 0x168

    .line 161
    iget-object v9, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    invoke-virtual {v9, v6, v0, v8}, Lcn/nubia/mediaeditor/codec/CanvasInputSurface;->drawBitmap(Landroid/graphics/Bitmap;II)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_6

    :cond_9
    if-ne p2, v4, :cond_a

    .line 163
    iget-object v8, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    invoke-virtual {v8, v6, v0, p3}, Lcn/nubia/mediaeditor/codec/CanvasInputSurface;->drawBitmap(Landroid/graphics/Bitmap;II)V

    goto :goto_3

    :cond_a
    sub-int v8, v4, p2

    add-int/2addr v8, p3

    .line 165
    rem-int/lit16 v8, v8, 0x168

    .line 166
    iget-object v9, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    invoke-virtual {v9, v6, v0, v8}, Lcn/nubia/mediaeditor/codec/CanvasInputSurface;->drawBitmap(Landroid/graphics/Bitmap;II)V

    :goto_3
    if-eq v3, v1, :cond_b

    if-le v3, v1, :cond_d

    .line 168
    rem-int v8, v7, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_d

    :cond_b
    if-eqz p1, :cond_c

    sub-int/2addr v0, v2

    const/16 v8, 0x28

    if-gt v0, v8, :cond_d

    goto :goto_4

    :cond_c
    add-int/2addr v0, v2

    const/16 v8, 0xff

    if-le v0, v8, :cond_d

    :goto_4
    move v0, v8

    :cond_d
    add-int/lit8 v7, v7, 0x1

    if-ne v7, p4, :cond_e

    if-eqz p1, :cond_e

    move v8, v1

    goto :goto_5

    :cond_e
    move v8, v5

    .line 187
    :goto_5
    invoke-virtual {p0, v8}, Lcn/nubia/mediaeditor/codec/ImageRender;->notifyUpdated(Z)V

    goto :goto_2

    .line 182
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    :cond_f
    :goto_7
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 191
    iput-boolean v5, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mStopMakeVideo:Z

    .line 192
    invoke-virtual {p0}, Lcn/nubia/mediaeditor/codec/ImageRender;->clearImage()V

    return-void
.end method

.method public clearImage()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    .line 53
    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageDegreeList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 55
    iput-object v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageDegreeList:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public createInputSurface(Landroid/view/Surface;II)V
    .locals 1

    .line 60
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mSurface:Landroid/view/Surface;

    .line 61
    new-instance v0, Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    invoke-direct {v0, p1, p2, p3}, Lcn/nubia/mediaeditor/codec/CanvasInputSurface;-><init>(Landroid/view/Surface;II)V

    iput-object v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    return-void
.end method

.method public getFirtsPts()J
    .locals 2

    .line 278
    iget-wide v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mPts:J

    return-wide v0
.end method

.method public getImage()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public notifyUpdated(Z)V
    .locals 0

    .line 286
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mFiller:Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;

    if-eqz p0, :cond_0

    .line 287
    invoke-interface {p0, p1}, Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;->fillInputBuffer(Z)V

    :cond_0
    return-void
.end method

.method public notifyUpdatedAsync(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .locals 0

    .line 293
    iget-object p0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mFiller:Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;

    if-eqz p0, :cond_0

    .line 294
    invoke-interface {p0, p1, p2}, Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;->fillInputBufferAsync(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_0
    return-void
.end method

.method public setFiller(Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mFiller:Lcn/nubia/mediaeditor/editor/common/InputBufferFiller;

    return-void
.end method

.method public setFirstPts(J)V
    .locals 0

    .line 274
    iput-wide p1, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mPts:J

    return-void
.end method

.method public setImageRenderListener(Lcn/nubia/mediaeditor/codec/ImageRender$ImageRenderListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageRenderListener:Lcn/nubia/mediaeditor/codec/ImageRender$ImageRenderListener;

    return-void
.end method

.method public startRender()V
    .locals 7

    .line 65
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageRenderListener:Lcn/nubia/mediaeditor/codec/ImageRender$ImageRenderListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v0, v1}, Lcn/nubia/mediaeditor/codec/ImageRender$ImageRenderListener;->onImageRender(Landroid/view/Surface;)V

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lcn/nubia/mediaeditor/codec/CanvasInputSurface;->release()V

    .line 74
    iput-object v1, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    :cond_1
    return-void

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_8

    .line 80
    iget-boolean v4, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mStopMakeVideo:Z

    if-eqz v4, :cond_3

    goto :goto_4

    .line 84
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 85
    iget-object v5, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    invoke-virtual {v5}, Lcn/nubia/mediaeditor/codec/CanvasInputSurface;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    .line 86
    invoke-virtual {v6}, Lcn/nubia/mediaeditor/codec/CanvasInputSurface;->getHeight()I

    move-result v6

    .line 85
    invoke-direct {p0, v4, v5, v6}, Lcn/nubia/mediaeditor/codec/ImageRender;->scaleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_4

    .line 88
    const-string v4, "ImageRender"

    const-string v5, "Create Bitmap failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 92
    :cond_4
    iget-object v6, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageDegreeList:Ljava/util/ArrayList;

    if-nez v6, :cond_5

    .line 93
    invoke-direct {p0, v4}, Lcn/nubia/mediaeditor/codec/ImageRender;->getDegree(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 95
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 96
    iget-object v4, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mImageDegreeList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    .line 98
    :cond_6
    invoke-direct {p0, v4}, Lcn/nubia/mediaeditor/codec/ImageRender;->getDegree(Ljava/lang/String;)I

    move-result v4

    .line 101
    :goto_1
    iget-object v6, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    invoke-virtual {v6, v5, v4}, Lcn/nubia/mediaeditor/codec/CanvasInputSurface;->drawBitmap(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    const/4 v4, 0x1

    goto :goto_2

    :cond_7
    move v4, v2

    .line 107
    :goto_2
    invoke-virtual {p0, v4}, Lcn/nubia/mediaeditor/codec/ImageRender;->notifyUpdated(Z)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    :cond_8
    :goto_4
    iget-object v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    if-eqz v0, :cond_9

    .line 110
    invoke-virtual {v0}, Lcn/nubia/mediaeditor/codec/CanvasInputSurface;->release()V

    .line 111
    iput-object v1, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mInputSurface:Lcn/nubia/mediaeditor/codec/CanvasInputSurface;

    .line 113
    :cond_9
    iput-boolean v2, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mStopMakeVideo:Z

    .line 114
    invoke-virtual {p0}, Lcn/nubia/mediaeditor/codec/ImageRender;->clearImage()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/codec/ImageRender;->mStopMakeVideo:Z

    return-void
.end method
