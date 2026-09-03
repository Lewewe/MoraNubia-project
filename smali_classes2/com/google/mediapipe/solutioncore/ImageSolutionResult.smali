.class public Lcom/google/mediapipe/solutioncore/ImageSolutionResult;
.super Ljava/lang/Object;
.source "ImageSolutionResult.java"

# interfaces
.implements Lcom/google/mediapipe/solutioncore/SolutionResult;


# instance fields
.field private cachedBitmap:Landroid/graphics/Bitmap;

.field private cachedTextureFrame:Lcom/google/mediapipe/framework/TextureFrame;

.field protected imagePacket:Lcom/google/mediapipe/framework/Packet;

.field protected imageResultPackets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/Packet;",
            ">;"
        }
    .end annotation
.end field

.field protected imageResultTextureFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mediapipe/framework/TextureFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireInputTextureFrame()Lcom/google/mediapipe/framework/TextureFrame;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->imagePacket:Lcom/google/mediapipe/framework/Packet;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/google/mediapipe/framework/PacketGetter;->getTextureFrame(Lcom/google/mediapipe/framework/Packet;)Lcom/google/mediapipe/framework/GraphTextureFrame;

    move-result-object p0

    return-object p0
.end method

.method clearImagePackets()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->imagePacket:Lcom/google/mediapipe/framework/Packet;

    .line 102
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->imageResultPackets:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 103
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getCachedInputTextureFrame()Lcom/google/mediapipe/framework/TextureFrame;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->cachedTextureFrame:Lcom/google/mediapipe/framework/TextureFrame;

    return-object p0
.end method

.method public inputBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->imagePacket:Lcom/google/mediapipe/framework/Packet;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->cachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    return-object v1

    .line 55
    :cond_1
    invoke-static {v0}, Lcom/google/mediapipe/framework/AndroidPacketGetter;->getBitmapFromRgba(Lcom/google/mediapipe/framework/Packet;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->cachedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method produceAllTextureFrames()V
    .locals 3

    .line 76
    invoke-virtual {p0}, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->acquireInputTextureFrame()Lcom/google/mediapipe/framework/TextureFrame;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->cachedTextureFrame:Lcom/google/mediapipe/framework/TextureFrame;

    .line 77
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->imageResultPackets:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->imageResultTextureFrames:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->imageResultPackets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/mediapipe/framework/Packet;

    .line 82
    iget-object v2, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->imageResultTextureFrames:Ljava/util/List;

    invoke-static {v1}, Lcom/google/mediapipe/framework/PacketGetter;->getTextureFrame(Lcom/google/mediapipe/framework/Packet;)Lcom/google/mediapipe/framework/GraphTextureFrame;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method releaseCachedTextureFrames()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->cachedTextureFrame:Lcom/google/mediapipe/framework/TextureFrame;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/google/mediapipe/framework/TextureFrame;->release()V

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->imageResultTextureFrames:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 92
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mediapipe/framework/TextureFrame;

    .line 93
    invoke-interface {v0}, Lcom/google/mediapipe/framework/TextureFrame;->release()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public timestamp()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/google/mediapipe/solutioncore/ImageSolutionResult;->timestamp:J

    return-wide v0
.end method
