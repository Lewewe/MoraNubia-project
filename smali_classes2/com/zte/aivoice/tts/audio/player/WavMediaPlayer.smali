.class public abstract Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;
.super Ljava/lang/Object;
.source "WavMediaPlayer.java"

# interfaces
.implements Lcom/zte/aivoice/tts/audio/player/IMediaPlayer;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

.field private isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private volume:Ljava/lang/Float;

.field private zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private setDataSource(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    .line 155
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jar:"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 156
    const-string v0, "/assets/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    .line 158
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized isPlaying()Z
    .locals 1

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is complete"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-interface {p1, v0}, Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;->onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setAction(I)V

    .line 184
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->stop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is error ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is prepared"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized pause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 130
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-interface {p1, v0}, Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;->onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 1

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 118
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-interface {p1, v0}, Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;->onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setVolume(F)V
    .locals 1

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->volume:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->volume:Ljava/lang/Float;

    .line 148
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_8

    const/4 v2, 0x1

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playAudio, now retryTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->volume:Ljava/lang/Float;

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 43
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 44
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 45
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 46
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->setDataSource(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    .line 49
    iget-object v4, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getParams()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/redmagickyi/util/AudioStreamType;->findStreamTypeByKey(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/AudioStreamType;

    move-result-object v5

    iget v5, v5, Lcn/nubia/redmagickyi/util/AudioStreamType;->value:I

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getVolume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)F

    move-result v4

    .line 51
    invoke-virtual {p0, v4}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->setVolume(F)V

    .line 52
    iget-object v4, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 53
    iget-object v4, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    move v2, v1

    goto/16 :goto_6

    :catch_0
    move-exception v1

    .line 57
    :try_start_1
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playAudio error, reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    :try_start_2
    iget-object v4, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_2

    .line 60
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->stop()V

    .line 61
    iget-object v4, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    instance-of v1, v1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 70
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 72
    const-string v4, ".mp3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".mp3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".wav"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v4, "playAudio error, try rename to .wav"

    :goto_1
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 75
    :cond_3
    const-string v4, ".wav"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".wav"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".mp3"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v4, "playAudio error, try rename to .mp3"

    :goto_2
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    goto/16 :goto_4

    :catch_1
    move-exception v4

    .line 64
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 67
    :try_start_5
    iget-object v4, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    instance-of v1, v1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 70
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 72
    const-string v4, ".mp3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".mp3"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".wav"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v4, "playAudio error, try rename to .wav"

    goto :goto_1

    .line 75
    :cond_4
    const-string v4, ".wav"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".wav"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".mp3"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v4, "playAudio error, try rename to .mp3"

    goto :goto_2

    :cond_5
    :goto_3
    move v1, v3

    goto/16 :goto_0

    .line 67
    :goto_4
    iget-object v3, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    instance-of v1, v1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 70
    invoke-virtual {p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 72
    const-string v3, ".mp3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 75
    const-string v3, ".wav"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".wav"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "playAudio error, try rename to .mp3"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 73
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".mp3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "playAudio error, try rename to .wav"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_7
    :goto_5
    throw v2

    .line 84
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 85
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 86
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object v1

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    :goto_7
    invoke-interface {v1, p1, v0}, Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;->onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V

    :cond_a
    if-eqz v2, :cond_b

    .line 89
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->onCompletion(Landroid/media/MediaPlayer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 92
    :cond_b
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 3

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 98
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 99
    iget-object p1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :try_start_2
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying()Z

    move-result p1

    .line 104
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    :goto_0
    invoke-interface {p1, v0}, Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;->onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 101
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    :try_start_4
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying()Z

    move-result p1

    .line 104
    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    goto :goto_0

    .line 103
    :goto_1
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying()Z

    move-result v1

    .line 104
    iget-object v2, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->getCallback()Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/audio/player/WavMediaPlayer;->audioAction:Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-interface {v0, v1}, Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;->onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    .line 110
    :cond_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
