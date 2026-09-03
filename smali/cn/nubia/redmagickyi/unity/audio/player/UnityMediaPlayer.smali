.class public abstract Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;
.super Ljava/lang/Object;
.source "UnityMediaPlayer.java"

# interfaces
.implements Lcn/nubia/redmagickyi/unity/audio/player/IMediaPlayer;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

.field private isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private volume:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private setDataSource(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
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

    .line 152
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    .line 153
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 154
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

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

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
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized isPlaying()Z
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    .locals 8

    .line 179
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getTAG()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    .line 181
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-interface {v0, v1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayComplete(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_0

    .line 183
    :cond_0
    new-instance p1, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->audioAction:Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;-><init>(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->stop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getTAG()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getTAG()Ljava/lang/String;

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

.method public declared-synchronized pause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 2

    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    .line 117
    invoke-interface {v1, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayPause(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 2

    monitor-enter p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    :try_start_1
    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 131
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 128
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :try_start_3
    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 131
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 133
    :goto_1
    monitor-exit p0

    return-void

    .line 130
    :goto_2
    :try_start_4
    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 131
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 2

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    .line 107
    invoke-interface {v1, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayResume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 109
    :cond_1
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

    .line 143
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->volume:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0, p1}, Lcn/nubia/redmagickyi/util/MathUtils;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->volume:Ljava/lang/Float;

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_8

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playAudio, now retryTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->volume:Ljava/lang/Float;

    .line 35
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 37
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 38
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->setDataSource(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    .line 40
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getParams()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/redmagickyi/util/AudioStreamType;->findStreamTypeByKey(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/AudioStreamType;

    move-result-object v4

    iget v4, v4, Lcn/nubia/redmagickyi/util/AudioStreamType;->value:I

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 41
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getType()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 42
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getVolume(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)F

    move-result v1

    .line 43
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->setVolume(F)V

    .line 44
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 45
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_7

    :catch_0
    move-exception v1

    .line 48
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playAudio error, reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    :try_start_2
    iget-object v3, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_2

    .line 51
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->stop()V

    .line 52
    iget-object v3, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    instance-of v1, v1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 60
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 62
    const-string v3, ".mp3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".mp3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".wav"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "playAudio error, try rename to .wav"

    :goto_2
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 65
    :cond_3
    const-string v3, ".wav"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".wav"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".mp3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "playAudio error, try rename to .mp3"

    :goto_3
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    goto/16 :goto_5

    :catch_1
    move-exception v3

    .line 55
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    :try_start_5
    iget-object v3, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    instance-of v1, v1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 60
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 62
    const-string v3, ".mp3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".mp3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".wav"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "playAudio error, try rename to .wav"

    goto :goto_2

    .line 65
    :cond_4
    const-string v3, ".wav"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".wav"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".mp3"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "playAudio error, try rename to .mp3"

    goto :goto_3

    :cond_5
    :goto_4
    move v1, v2

    goto/16 :goto_0

    .line 57
    :goto_5
    iget-object v3, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    instance-of v1, v1, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    .line 60
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 62
    const-string v3, ".mp3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 65
    const-string v3, ".wav"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 66
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

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "playAudio error, try rename to .mp3"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 63
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

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;->setPath(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "playAudio error, try rename to .wav"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_7
    :goto_6
    throw v2

    .line 74
    :cond_8
    :goto_7
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 75
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    .line 76
    invoke-interface {v1, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayBegin(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    .line 79
    :cond_9
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 86
    iget-object v1, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying()Z

    move-result v1

    .line 92
    iget-object v2, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    .line 95
    invoke-interface {v1, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayStop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 89
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    :try_start_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying()Z

    move-result v1

    .line 92
    iget-object v2, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    .line 95
    invoke-interface {v1, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayStop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 99
    :cond_1
    monitor-exit p0

    return-void

    .line 91
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying()Z

    move-result v2

    .line 92
    iget-object v3, p0, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/unity/audio/player/UnityMediaPlayer;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;

    .line 95
    invoke-interface {v2, p1}, Lcn/nubia/redmagickyi/unity/audio/UnityAudioManager$OnAudioCallback;->onAudioPlayStop(Lcn/nubia/redmagickyi/unity/audio/bean/AudioAction;)V

    goto :goto_3

    .line 98
    :cond_2
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    monitor-exit p0

    throw p1
.end method
