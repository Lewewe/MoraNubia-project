.class public Lcn/nubia/mediaeditor/editor/common/YuvCroper;
.super Ljava/lang/Object;
.source "YuvCroper.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "VideoCrop"

.field public static YUV_420P:I = 0x1

.field public static YUV_420SP:I


# instance fields
.field private mCropHeight:I

.field private final mCropLeft:I

.field private final mCropTop:I

.field private mCropWidth:I

.field private mData:[B

.field private mDegree:I

.field private mDesData:[B

.field private final mHeight:I

.field private mRotateDegree:I

.field private final mType:I

.field private final mWidth:I

.field private final mYLenght:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIIILandroid/graphics/RectF;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "*"

    if-lez p2, :cond_3

    if-lez p3, :cond_3

    if-eqz p5, :cond_3

    .line 40
    iput p1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mType:I

    neg-int p4, p4

    .line 41
    iput p4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mDegree:I

    .line 42
    iput p6, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mRotateDegree:I

    .line 43
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    .line 44
    iget p6, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mDegree:I

    int-to-float p6, p6

    invoke-virtual {p4, p6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 45
    iget p6, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mDegree:I

    const/16 v1, -0x5a

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne p6, v1, :cond_0

    .line 46
    invoke-virtual {p4, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_0
    const/16 v1, -0xb4

    if-ne p6, v1, :cond_1

    .line 48
    invoke-virtual {p4, v3, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_1
    const/16 v1, -0x10e

    if-ne p6, v1, :cond_2

    .line 50
    invoke-virtual {p4, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 52
    :cond_2
    :goto_0
    invoke-virtual {p4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 54
    iput p2, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mWidth:I

    .line 55
    iput p3, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mHeight:I

    mul-int p4, p2, p3

    .line 56
    iput p4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mYLenght:I

    .line 57
    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result p4

    int-to-float p6, p3

    mul-float/2addr p4, p6

    float-to-int p4, p4

    iput p4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    .line 58
    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result p4

    int-to-float p6, p2

    mul-float/2addr p4, p6

    float-to-int p4, p4

    iput p4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    .line 59
    iget p4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    invoke-direct {p0, p4, p3}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->roundTo16(II)I

    move-result p4

    iput p4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    .line 60
    iget p4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    invoke-direct {p0, p4, p2}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->roundTo16(II)I

    move-result p4

    iput p4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    .line 61
    iget p4, p5, Landroid/graphics/RectF;->left:F

    int-to-float p2, p2

    mul-float/2addr p4, p2

    float-to-int p2, p4

    div-int/lit8 p2, p2, 0x10

    mul-int/lit8 p2, p2, 0x10

    iput p2, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropLeft:I

    .line 62
    iget p4, p5, Landroid/graphics/RectF;->top:F

    int-to-float p3, p3

    mul-float/2addr p4, p3

    float-to-int p3, p4

    div-int/lit8 p3, p3, 0x10

    mul-int/lit8 p3, p3, 0x10

    iput p3, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropTop:I

    .line 63
    iget p4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    iget p5, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    mul-int p6, p4, p5

    mul-int/lit8 p6, p6, 0x3

    div-int/lit8 p6, p6, 0x2

    new-array p6, p6, [B

    iput-object p6, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mData:[B

    mul-int/2addr p4, p5

    mul-int/lit8 p4, p4, 0x3

    .line 64
    div-int/lit8 p4, p4, 0x2

    new-array p4, p4, [B

    iput-object p4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mDesData:[B

    .line 65
    sget-object p4, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->LOG_TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "crop  point:"

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "     size:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "mType:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 38
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "ViewCrop:Wrong param! size:"

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". Crop:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private copy([BIIIII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    .line 160
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mData:[B

    invoke-static {p1, p2, v0, p6, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p6, p5

    add-int/2addr p2, p4

    goto :goto_0

    :cond_0
    return p6
.end method

.method private processYuv420p([B)V
    .locals 9

    .line 138
    iget v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropLeft:I

    iget v1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropTop:I

    iget v4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mWidth:I

    mul-int v2, v1, v4

    add-int/2addr v2, v0

    .line 139
    iget v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    add-int/2addr v1, v0

    mul-int v3, v4, v1

    .line 141
    iget v5, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 143
    invoke-direct/range {v0 .. v6}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->copy([BIIIII)I

    move-result v6

    .line 146
    iget v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mYLenght:I

    iget v1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mWidth:I

    iget v2, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropTop:I

    mul-int v3, v1, v2

    div-int/lit8 v3, v3, 0x4

    iget v4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropLeft:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 147
    iget v4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    add-int/2addr v2, v4

    mul-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x4

    add-int v4, v0, v2

    .line 148
    div-int/lit8 v7, v1, 0x2

    .line 149
    iget v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    div-int/lit8 v8, v0, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v7

    move v5, v8

    .line 150
    invoke-direct/range {v0 .. v6}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->copy([BIIIII)I

    move-result v6

    .line 153
    iget v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mYLenght:I

    div-int/lit8 v1, v0, 0x4

    mul-int/lit8 v1, v1, 0x5

    iget v2, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mWidth:I

    iget v3, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropTop:I

    mul-int v4, v2, v3

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v1, v4

    iget v4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropLeft:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    .line 154
    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    add-int/2addr v3, v1

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    add-int v3, v0, v2

    move-object v0, p0

    move-object v1, p1

    move v2, v4

    move v4, v7

    .line 155
    invoke-direct/range {v0 .. v6}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->copy([BIIIII)I

    return-void
.end method

.method private processYuvsp([B)V
    .locals 7

    .line 122
    iget v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropLeft:I

    iget v4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mWidth:I

    iget v1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropTop:I

    mul-int v2, v4, v1

    add-int/2addr v2, v0

    .line 123
    iget v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    add-int/2addr v1, v0

    mul-int v3, v4, v1

    .line 125
    iget v5, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 126
    invoke-direct/range {v0 .. v6}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->copy([BIIIII)I

    move-result v6

    .line 129
    iget v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mYLenght:I

    iget v4, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mWidth:I

    iget v1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropTop:I

    mul-int v2, v4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget v3, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropLeft:I

    add-int/2addr v2, v3

    .line 130
    iget v3, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    add-int/2addr v1, v3

    mul-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 132
    iget v5, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    move-object v0, p0

    move-object v1, p1

    .line 133
    invoke-direct/range {v0 .. v6}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->copy([BIIIII)I

    return-void
.end method

.method private roundTo16(II)I
    .locals 3

    if-lt p1, p2, :cond_0

    return p2

    :cond_0
    int-to-float p0, p1

    const/high16 p1, 0x41800000    # 16.0f

    div-float/2addr p0, p1

    float-to-int p1, p0

    int-to-float p2, p1

    sub-float p2, p0, p2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p2, p2, v0

    const/16 v0, 0x10

    if-lez p2, :cond_1

    float-to-double p0, p0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v1

    double-to-int p0, p0

    mul-int/2addr p0, v0

    goto :goto_0

    :cond_1
    mul-int/lit8 p0, p1, 0x10

    :goto_0
    if-ge p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, p0

    :goto_1
    return v0
.end method


# virtual methods
.method public crop(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)[B
    .locals 4

    .line 82
    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [B

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 85
    iget p1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mType:I

    sget v0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->YUV_420SP:I

    const/16 v1, 0x10e

    const/16 v2, 0xb4

    const/16 v3, 0x5a

    if-ne p1, v0, :cond_4

    .line 86
    invoke-direct {p0, p2}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->processYuvsp([B)V

    .line 87
    iget p1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mRotateDegree:I

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mDesData:[B

    iget-object p2, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mData:[B

    iget v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    iget v1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    invoke-static {p1, p2, v0, v1}, Lcn/nubia/mediaeditor/editor/common/ImageRotateProcess;->rotate270YUV420SP([B[BII)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object p1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mDesData:[B

    iget-object p2, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mData:[B

    iget v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    iget v1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    invoke-static {p1, p2, v0, v1}, Lcn/nubia/mediaeditor/editor/common/ImageRotateProcess;->rotate180YUV420SP([B[BII)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object p1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mDesData:[B

    iget-object p2, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mData:[B

    iget v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    iget v1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    invoke-static {p1, p2, v0, v1}, Lcn/nubia/mediaeditor/editor/common/ImageRotateProcess;->rotate90YUV420SP([B[BII)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object p0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mData:[B

    return-object p0

    .line 100
    :cond_4
    sget v0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->YUV_420P:I

    if-ne p1, v0, :cond_9

    .line 101
    invoke-direct {p0, p2}, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->processYuv420p([B)V

    .line 102
    iget p1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mRotateDegree:I

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_0

    .line 112
    :cond_5
    iget-object p1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mDesData:[B

    iget-object p2, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mData:[B

    iget v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    iget v1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    invoke-static {p1, p2, v0, v1}, Lcn/nubia/mediaeditor/editor/common/ImageRotateProcess;->rotate270YUV420P([B[BII)V

    goto :goto_0

    .line 109
    :cond_6
    iget-object p1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mDesData:[B

    iget-object p2, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mData:[B

    iget v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    iget v1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    invoke-static {p1, p2, v0, v1}, Lcn/nubia/mediaeditor/editor/common/ImageRotateProcess;->rotate180YUV420P([B[BII)V

    goto :goto_0

    .line 106
    :cond_7
    iget-object p1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mDesData:[B

    iget-object p2, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mData:[B

    iget v0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    iget v1, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    invoke-static {p1, p2, v0, v1}, Lcn/nubia/mediaeditor/editor/common/ImageRotateProcess;->rotate90YUV420P([B[BII)V

    goto :goto_0

    .line 104
    :cond_8
    iget-object p0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mData:[B

    return-object p0

    .line 116
    :cond_9
    :goto_0
    iget-object p0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mDesData:[B

    return-object p0
.end method

.method public getCropHeight()I
    .locals 0

    .line 73
    iget p0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropHeight:I

    return p0
.end method

.method public getCropWidth()I
    .locals 0

    .line 69
    iget p0, p0, Lcn/nubia/mediaeditor/editor/common/YuvCroper;->mCropWidth:I

    return p0
.end method
