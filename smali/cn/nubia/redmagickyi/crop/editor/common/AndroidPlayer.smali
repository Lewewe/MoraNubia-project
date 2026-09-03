.class public Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;
.super Ljava/lang/Object;
.source "AndroidPlayer.java"

# interfaces
.implements Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;


# static fields
.field private static final DEFAULT_PLAYBCAK_SPEED:I = 0x0

.field private static final SLOMO_VIDEO_TYPE_1:I = 0x1

.field private static final SLOMO_VIDEO_TYPE_2:I = 0x2

.field private static final SLOMO_VIDEO_TYPE_DEFAULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AndroidPlayer"


# instance fields
.field private mCameraFps:I

.field private mFrameRate:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlaySpeedChangeEndTime:I

.field private mPlaySpeedChangeStartTime:I

.field private mPlayerSpeed:F

.field private mRecordTime:J

.field private mRotation:I

.field private mSlomoVideoType:I

.field private mUri:Landroid/net/Uri;

.field private mbEnablePlaySpeedShift:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 21
    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mUri:Landroid/net/Uri;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    iput v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlayerSpeed:F

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mFrameRate:I

    const/4 v1, 0x0

    .line 24
    iput v1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mRotation:I

    const-wide/16 v2, -0x1

    .line 25
    iput-wide v2, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mRecordTime:J

    .line 26
    iput v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlaySpeedChangeStartTime:I

    .line 27
    iput v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlaySpeedChangeEndTime:I

    .line 28
    iput v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mCameraFps:I

    .line 29
    iput v1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mSlomoVideoType:I

    .line 30
    iput-boolean v1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mbEnablePlaySpeedShift:Z

    .line 36
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method private setPlayerSpeed(F)V
    .locals 1

    .line 292
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method


# virtual methods
.method public getAudioTrackCount(Landroid/content/Context;)I
    .locals 5

    .line 141
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    .line 144
    iget-object v1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mUri:Landroid/net/Uri;

    invoke-static {p1, v1}, Lcn/nubia/mediaeditor/utils/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 146
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 p0, 0x0

    .line 149
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, p0

    .line 150
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    if-ge p0, v1, :cond_2

    .line 151
    invoke-virtual {v0, p0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    .line 152
    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    const-string v2, "audio/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 160
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v4, p1

    move p1, p0

    move-object p0, v4

    .line 158
    :goto_2
    :try_start_2
    const-string v1, "AndroidPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioTrackCount failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    return p1

    .line 160
    :goto_4
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 161
    throw p0
.end method

.method public getAudioTrackIndex()I
    .locals 1

    .line 365
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->getSelectedTrack(I)I

    move-result p0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    return p0
.end method

.method public getDuration()I
    .locals 0

    .line 168
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0

    return p0
.end method

.method public getFrameRate()I
    .locals 0

    .line 373
    iget p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mFrameRate:I

    return p0
.end method

.method public getPlaySpeed()F
    .locals 0

    .line 340
    iget p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlayerSpeed:F

    return p0
.end method

.method public getPlaySpeedChangeEndTime()I
    .locals 0

    .line 403
    iget p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlaySpeedChangeEndTime:I

    return p0
.end method

.method public getPlaySpeedChangeStartTime()I
    .locals 0

    .line 397
    iget p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlaySpeedChangeStartTime:I

    return p0
.end method

.method public getRecordTime()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getRotation()I
    .locals 0

    .line 383
    iget p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mRotation:I

    return p0
.end method

.method public getRotation(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 428
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 429
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p1, 0x18

    .line 430
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mRotation:I

    .line 432
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 435
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getSampleRate()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getSlomoVideoType()I
    .locals 0

    .line 350
    iget p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mSlomoVideoType:I

    return p0
.end method

.method public getVideoHeight()I
    .locals 0

    .line 121
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p0

    return p0
.end method

.method public getVideoWidth()I
    .locals 0

    .line 116
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p0

    return p0
.end method

.method public is30FpsSlomoVideo()Z
    .locals 1

    .line 409
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->supportPlaySpeedShift()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->getFrameRate()I

    move-result p0

    const/16 v0, 0x3c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPlaying()Z
    .locals 0

    .line 126
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 101
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 81
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V

    return-void
.end method

.method public prepareAsync()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 173
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 178
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 183
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public seekTo(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 131
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setAdjustDegree(I)V
    .locals 0

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0

    .line 287
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    return-void
.end method

.method public setAudioTrack(I)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->selectTrack(I)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 60
    iput-object p2, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mUri:Landroid/net/Uri;

    .line 61
    invoke-static {p2}, Lcn/nubia/mediaeditor/utils/Utils;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object p2, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mUri:Landroid/net/Uri;

    invoke-static {p1, p2}, Lcn/nubia/mediaeditor/utils/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    .line 187
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setOnBufferingUpdateListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$3;-><init>(Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 225
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    return-void
.end method

.method public setOnCompletionListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$2;-><init>(Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setOnErrorListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnErrorListener;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$6;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$6;-><init>(Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnErrorListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public setOnInfoListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$7;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$7;-><init>(Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public setOnPreparedListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnPreparedListener;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$1;-><init>(Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method public setOnSeekCompleteListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 2

    .line 237
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$4;-><init>(Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnSeekCompleteListener;)V

    .line 238
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method public setOnVideoSizeChangedListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$5;

    invoke-direct {v1, p0, p1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer$5;-><init>(Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 251
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    return-void
.end method

.method public setPlaySpeed(F)Z
    .locals 6

    .line 300
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->is30FpsSlomoVideo()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mSlomoVideoType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    const/high16 p1, 0x3e800000    # 0.25f

    .line 302
    iput p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlayerSpeed:F

    goto :goto_0

    .line 304
    :cond_0
    iget p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mCameraFps:I

    div-int/lit8 p1, p1, 0x1e

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlayerSpeed:F

    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    :cond_1
    const/high16 p1, 0x41000000    # 8.0f

    .line 306
    iput p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlayerSpeed:F

    .line 310
    :cond_2
    :goto_0
    iget p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlayerSpeed:F

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setPlayerSpeed(F)V

    goto :goto_2

    .line 311
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->is30FpsSlomoVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mSlomoVideoType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    cmpg-float p1, p1, v1

    if-gez p1, :cond_4

    .line 313
    iput v1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlayerSpeed:F

    goto :goto_1

    .line 315
    :cond_4
    iput v1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlayerSpeed:F

    .line 317
    :goto_1
    iget p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlayerSpeed:F

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setPlayerSpeed(F)V

    goto :goto_2

    .line 318
    :cond_5
    iget v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mFrameRate:I

    const/16 v2, 0x3c

    if-le v0, v2, :cond_7

    int-to-double v2, v0

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v4

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, v2

    double-to-float p1, v0

    .line 322
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setPlayerSpeed(F)V

    goto :goto_2

    .line 325
    :cond_6
    invoke-direct {p0, v1}, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->setPlayerSpeed(F)V

    :cond_7
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public setPlaySpeedChangeTime(III)V
    .locals 0

    .line 389
    iput p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlaySpeedChangeStartTime:I

    .line 390
    iput p2, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mPlaySpeedChangeEndTime:I

    .line 391
    iput p3, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mCameraFps:I

    return-void
.end method

.method public setPlaySpeedParams(IIIJ)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 355
    :goto_0
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mbEnablePlaySpeedShift:Z

    .line 356
    iput p1, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mSlomoVideoType:I

    .line 357
    iput p2, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mFrameRate:I

    .line 358
    iput p3, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mRotation:I

    .line 359
    iput-wide p4, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mRecordTime:J

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    return-void
.end method

.method public setSurface(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 46
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoEffect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    return-void
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 96
    iget-object p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method

.method public supportPlaySpeedShift()Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/crop/editor/common/AndroidPlayer;->mbEnablePlaySpeedShift:Z

    return p0
.end method

.method public unSelectTrack(ZZ)V
    .locals 0

    return-void
.end method
