.class public interface abstract Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer;
.super Ljava/lang/Object;
.source "IMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;,
        Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnErrorListener;,
        Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;,
        Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnSeekCompleteListener;,
        Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnBufferingUpdateListener;,
        Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;,
        Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnPreparedListener;
    }
.end annotation


# virtual methods
.method public abstract getAudioTrackCount(Landroid/content/Context;)I
.end method

.method public abstract getAudioTrackIndex()I
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getFrameRate()I
.end method

.method public abstract getPlaySpeed()F
.end method

.method public abstract getPlaySpeedChangeEndTime()I
.end method

.method public abstract getPlaySpeedChangeStartTime()I
.end method

.method public abstract getRecordTime()J
.end method

.method public abstract getRotation()I
.end method

.method public abstract getSampleRate()I
.end method

.method public abstract getSlomoVideoType()I
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract is30FpsSlomoVideo()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract resume()V
.end method

.method public abstract seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setAdjustDegree(I)V
.end method

.method public abstract setAudioStreamType(I)V
.end method

.method public abstract setAudioTrack(I)V
.end method

.method public abstract setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
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
.end method

.method public abstract setDisplay(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setOnBufferingUpdateListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnCompletionListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnErrorListener;)V
.end method

.method public abstract setOnInfoListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnInfoListener;)V
.end method

.method public abstract setOnPreparedListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnSeekCompleteListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcn/nubia/redmagickyi/crop/editor/common/IMediaPlayer$OnVideoSizeChangedListener;)V
.end method

.method public abstract setPlaySpeed(F)Z
.end method

.method public abstract setPlaySpeedChangeTime(III)V
.end method

.method public abstract setPlaySpeedParams(IIIJ)V
.end method

.method public abstract setScreenOnWhilePlaying(Z)V
.end method

.method public abstract setSurface(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setVideoEffect(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract setWakeMode(Landroid/content/Context;I)V
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract supportPlaySpeedShift()Z
.end method

.method public abstract unSelectTrack(ZZ)V
.end method
