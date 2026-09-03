.class public Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;
.super Ljava/lang/Object;
.source "TTSClientMicrosoft.java"

# interfaces
.implements Lcom/zte/aivoice/tts/method/base/ITTSClient;
.implements Lcom/zte/aivoice/tts/OnTTSClientListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TTSClient-M"


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

.field private netStateListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;

.field private workTimer:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->setDisablePlayWhenScreenLocked(Z)V

    .line 44
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->setAudioCallback(Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;)Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->workTimer:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->cancel(Z)V

    return-void
.end method

.method private cancel(Z)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->workTimer:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 162
    invoke-static {v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->access$100(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eqz p1, :cond_1

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->workTimer:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->cancel()V

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->workTimer:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    :cond_1
    return-void
.end method

.method public static getEncryptId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 252
    invoke-static {p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/MD5Utils;->createMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isMutePlay()Z
    .locals 3

    .line 197
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object p0

    new-instance v0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->isMute(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)Z

    move-result p0

    return p0
.end method

.method private mutePlay()V
    .locals 2

    .line 189
    new-instance p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(ILjava/lang/String;)V

    invoke-static {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method private pausePlay()V
    .locals 1

    .line 178
    new-instance p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(I)V

    invoke-static {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method private resumePlay()V
    .locals 1

    .line 174
    new-instance p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(I)V

    invoke-static {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method private startPlay(Ljava/lang/String;Ljava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;)V
    .locals 1

    .line 170
    new-instance p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcn/nubia/redmagickyi/util/AudioStreamType;)V

    invoke-static {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method private stopPlay()V
    .locals 1

    .line 182
    new-instance p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(I)V

    invoke-static {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method private unmutePlay()V
    .locals 2

    .line 193
    new-instance p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(ILjava/lang/String;)V

    invoke-static {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method private volumePlay(F)V
    .locals 1

    .line 186
    new-instance p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(ILjava/lang/String;)V

    invoke-static {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized block()V
    .locals 2

    monitor-enter p0

    .line 149
    :try_start_0
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->setDisablePlayEveryTime(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 49
    :try_start_0
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->context:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->init(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->unblock()V

    .line 52
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object p1

    new-instance v0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$1;

    invoke-direct {v0, p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$1;-><init>(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;)V

    iput-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->netStateListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->addNetStatusChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isMute()Z
    .locals 1

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->isMutePlay()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mute()V
    .locals 1

    monitor-enter p0

    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->mutePlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V

    return-void
.end method

.method public onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public onSynthesisBegin(Ljava/lang/String;)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisBegin(Ljava/lang/String;)V

    return-void
.end method

.method public onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V
    .locals 0

    .line 206
    invoke-virtual {p0, p1, p4}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->onSynthesisCompleted(Ljava/lang/String;Z)V

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->startPlay(Ljava/lang/String;Ljava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;)V

    return-void
.end method

.method public onSynthesisCompleted(Ljava/lang/String;Z)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisCompleted(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 1

    .line 217
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    if-eq p2, v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    sget-object p2, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    return-void
.end method

.method public declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    .line 108
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->pausePlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 119
    :try_start_0
    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->cancel(Z)V

    .line 120
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->stopPlay()V

    .line 121
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->resumePlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVolume(F)V
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->volumePlay(F)V

    return-void
.end method

.method public declared-synchronized start(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V
    .locals 7

    const-string p3, "speechFile path: "

    monitor-enter p0

    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->cancel(Z)V

    .line 69
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->workTimer:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    invoke-direct {v0, p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;-><init>(Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;)V

    iput-object v0, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->workTimer:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    .line 72
    :cond_0
    iput-object p5, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    .line 74
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    const-string v0, "TTSClient-M"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {p5}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isAssetsPath(Ljava/io/File;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    :goto_0
    move-object v5, p5

    move p3, v0

    goto :goto_1

    .line 79
    :cond_1
    invoke-static {p5}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isFilePath(Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p5}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isFileValid(Ljava/io/File;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 83
    :cond_2
    iget-object p3, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->getEncryptId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->getSpeechFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p5

    .line 84
    invoke-static {p5}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isFileValid(Ljava/io/File;)Z

    move-result p3

    move-object v5, p5

    :goto_1
    if-eqz p3, :cond_3

    .line 88
    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->onSynthesisBegin(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p1, v5, p4, v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    goto :goto_2

    .line 91
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->isConnected()Z

    move-result p3

    if-nez p3, :cond_4

    .line 92
    sget-object p2, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 95
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->workTimer:Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;

    iget-object v2, p0, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->context:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft$WorkTimer;->textToSpeech(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->cancel(Z)V

    .line 114
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->stopPlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unblock()V
    .locals 2

    monitor-enter p0

    .line 157
    :try_start_0
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->setDisablePlayEveryTime(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unmute()V
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/microsoft/TTSClientMicrosoft;->unmutePlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
