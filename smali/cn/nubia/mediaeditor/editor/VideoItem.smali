.class public Lcn/nubia/mediaeditor/editor/VideoItem;
.super Ljava/lang/Object;
.source "VideoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/mediaeditor/editor/VideoItem$GetThumbnailListCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoItem"


# instance fields
.field public duration:I

.field public getFrameInterval:I

.field public height:I

.field public mAverageFrame:I

.field private mInitialized:Z

.field private mNativeContext:J

.field private mmr:Landroid/media/MediaMetadataRetriever;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mmr:Landroid/media/MediaMetadataRetriever;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mInitialized:Z

    .line 15
    iput v0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->duration:I

    .line 16
    iput v0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->width:I

    .line 17
    iput v0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->height:I

    const/16 v1, 0xa

    .line 18
    iput v1, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->getFrameInterval:I

    .line 19
    iput v0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mAverageFrame:I

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 117
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 118
    iget-boolean p0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mInitialized:Z

    if-eqz p0, :cond_0

    .line 119
    const-string p0, "VideoItem"

    const-string v0, "VideoItem without released."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getDuration()I
    .locals 2

    .line 42
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mmr:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    .line 43
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->duration:I

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AverageFrame=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mAverageFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoItem"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    iget p0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->duration:I

    return p0
.end method

.method public getHeight()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mmr:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    const/16 v1, 0x13

    .line 59
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->height:I

    goto :goto_0

    .line 61
    :cond_0
    const-string v0, "VideoItem"

    const-string v1, "mmr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    iget p0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->height:I

    return p0
.end method

.method public getThumbnailList(IIJJILcn/nubia/mediaeditor/editor/VideoItem$GetThumbnailListCallback;)V
    .locals 2

    add-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, -0x2

    const/16 p3, 0x38

    if-ge p1, p3, :cond_0

    move p1, p3

    :cond_0
    add-int/lit8 p2, p2, 0x1

    and-int/lit8 p2, p2, -0x2

    if-ge p2, p3, :cond_1

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_0
    mul-int p2, p1, p3

    .line 72
    new-array p4, p2, [I

    .line 73
    invoke-static {p2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    .line 74
    iget p2, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->duration:I

    div-int/2addr p2, p7

    iput p2, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mAverageFrame:I

    .line 75
    iget-object p2, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mmr:Landroid/media/MediaMetadataRetriever;

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    move p4, p2

    move p5, p4

    .line 76
    :goto_1
    iget p6, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->duration:I

    if-ge p4, p6, :cond_2

    .line 77
    iget-object p6, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mmr:Landroid/media/MediaMetadataRetriever;

    mul-int/lit16 p7, p4, 0x3e8

    int-to-long v0, p7

    invoke-virtual {p6, v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p6

    .line 78
    invoke-static {p6, p1, p3, p2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p7

    .line 79
    invoke-interface {p8, p7, p5}, Lcn/nubia/mediaeditor/editor/VideoItem$GetThumbnailListCallback;->onThumbnail(Landroid/graphics/Bitmap;I)V

    .line 80
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    invoke-virtual {p7}, Landroid/graphics/Bitmap;->recycle()V

    .line 76
    iget p6, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mAverageFrame:I

    add-int/2addr p4, p6

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getWidth()I
    .locals 2

    .line 50
    iget-object v0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mmr:Landroid/media/MediaMetadataRetriever;

    if-eqz v0, :cond_0

    const/16 v1, 0x12

    .line 51
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->width:I

    goto :goto_0

    .line 53
    :cond_0
    const-string v0, "VideoItem"

    const-string v1, "mmr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    iget p0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->width:I

    return p0
.end method

.method public release()V
    .locals 1

    .line 104
    iget-object p0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mmr:Landroid/media/MediaMetadataRetriever;

    if-eqz p0, :cond_0

    .line 106
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    const-string p0, "VideoItem"

    const-string v0, "getRotation: mmr release error"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)I
    .locals 1

    .line 31
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iput-object v0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mmr:Landroid/media/MediaMetadataRetriever;

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object p0, p0, Lcn/nubia/mediaeditor/editor/VideoItem;->mmr:Landroid/media/MediaMetadataRetriever;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method
