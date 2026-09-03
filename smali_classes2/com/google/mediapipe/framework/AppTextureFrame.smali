.class public Lcom/google/mediapipe/framework/AppTextureFrame;
.super Ljava/lang/Object;
.source "AppTextureFrame.java"

# interfaces
.implements Lcom/google/mediapipe/framework/TextureFrame;


# instance fields
.field private height:I

.field private inUse:Z

.field private legacyInUse:Z

.field private releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

.field private textureName:I

.field private timestamp:J

.field private width:I


# direct methods
.method public constructor <init>(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textureName",
            "width",
            "height"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 32
    iput-wide v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->timestamp:J

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    .line 34
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    .line 38
    iput p1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->textureName:I

    .line 39
    iput p2, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->width:I

    .line 40
    iput p3, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->height:I

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->height:I

    return p0
.end method

.method public getInUse()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTextureName()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->textureName:I

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->timestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 0

    .line 54
    iget p0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->width:I

    return p0
.end method

.method public isNotYetReleased()Z
    .locals 1

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 71
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .line 148
    monitor-enter p0

    const/4 v0, 0x0

    .line 149
    :try_start_0
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    .line 150
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release(Lcom/google/mediapipe/framework/GlSyncToken;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "syncToken"
        }
    .end annotation

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 172
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setInUse()V
    .locals 1

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    :cond_0
    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    .line 138
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->legacyInUse:Z

    .line 139
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestamp"
        }
    .end annotation

    .line 44
    iput-wide p1, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->timestamp:J

    return-void
.end method

.method public waitUntilReleased()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 81
    monitor-enter p0

    .line 82
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-eqz v0, :cond_1

    .line 86
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->waitOnCpu()V

    .line 87
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    .line 91
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitUntilReleasedWithGpuSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 101
    monitor-enter p0

    .line 102
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    if-eqz v0, :cond_1

    .line 106
    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->waitOnGpu()V

    .line 107
    iget-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    invoke-interface {v0}, Lcom/google/mediapipe/framework/GlSyncToken;->release()V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->inUse:Z

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/google/mediapipe/framework/AppTextureFrame;->releaseSyncToken:Lcom/google/mediapipe/framework/GlSyncToken;

    .line 111
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
