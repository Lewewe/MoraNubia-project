.class public Lcom/google/mediapipe/framework/GraphTextureFrame;
.super Ljava/lang/Object;
.source "GraphTextureFrame.java"

# interfaces
.implements Lcom/google/mediapipe/framework/TextureFrame;


# instance fields
.field private final deferredSync:Z

.field private height:I

.field private nativeBufferHandle:J

.field private textureName:I

.field private timestamp:J

.field private width:I


# direct methods
.method constructor <init>(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "timestamp"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 35
    invoke-direct/range {v0 .. v5}, Lcom/google/mediapipe/framework/GraphTextureFrame;-><init>(JJZ)V

    return-void
.end method

.method constructor <init>(JJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "timestamp",
            "deferredSync"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 29
    iput-wide v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->timestamp:J

    .line 39
    iput-wide p1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeGetTextureName(J)I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->textureName:I

    .line 42
    iget-wide p1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeGetWidth(J)I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->width:I

    .line 43
    iget-wide p1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    invoke-direct {p0, p1, p2}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeGetHeight(J)I

    move-result p1

    iput p1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->height:I

    .line 44
    iput-wide p3, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->timestamp:J

    .line 45
    iput-boolean p5, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->deferredSync:Z

    return-void
.end method

.method private native nativeCreateSyncTokenForCurrentExternalContext(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeGetHeight(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeGetTextureName(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeGetWidth(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeGpuWait(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native nativeReleaseBuffer(JJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "consumerSyncToken"
        }
    .end annotation
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->height:I

    return p0
.end method

.method public getTextureName()I
    .locals 4

    .line 59
    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 64
    :cond_0
    iget-boolean v2, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->deferredSync:Z

    if-eqz v2, :cond_1

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeGpuWait(J)V

    .line 69
    :cond_1
    iget p0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->textureName:I

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->timestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->width:I

    return p0
.end method

.method public release()V
    .locals 3

    .line 96
    new-instance v0, Lcom/google/mediapipe/framework/GraphGlSyncToken;

    iget-wide v1, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    .line 97
    invoke-direct {p0, v1, v2}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeCreateSyncTokenForCurrentExternalContext(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/mediapipe/framework/GraphGlSyncToken;-><init>(J)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/mediapipe/framework/GraphTextureFrame;->release(Lcom/google/mediapipe/framework/GlSyncToken;)V

    return-void
.end method

.method public release(Lcom/google/mediapipe/framework/GlSyncToken;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumerSyncToken"
        }
    .end annotation

    .line 112
    iget-wide v0, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    move-wide v0, v2

    goto :goto_0

    .line 113
    :cond_0
    invoke-interface {p1}, Lcom/google/mediapipe/framework/GlSyncToken;->nativeToken()J

    move-result-wide v0

    .line 114
    :goto_0
    iget-wide v4, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeReleaseBuffer(JJ)V

    .line 115
    iput-wide v2, p0, Lcom/google/mediapipe/framework/GraphTextureFrame;->nativeBufferHandle:J

    :cond_1
    if-eqz p1, :cond_2

    .line 118
    invoke-interface {p1}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    :cond_2
    return-void
.end method
