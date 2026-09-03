.class public Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;
.super Ljava/lang/Object;
.source "TTSClientGoogleV2.java"

# interfaces
.implements Lcom/zte/aivoice/tts/method/base/ITTSClient;
.implements Lcom/zte/aivoice/tts/OnTTSClientListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;
    }
.end annotation


# static fields
.field private static final OUTPUT_BUFFER_SIZE:I = 0x5000

.field private static final OUTPUT_SIMPLE_RATE:I = 0x3e80

.field private static final TAG:Ljava/lang/String; = "TTSClient-G-V2"


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

.field private netStateListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;

.field private workTimer:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->setDisablePlayWhenScreenLocked(Z)V

    .line 64
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->setAudioCallback(Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;)Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->workTimer:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->cancel(Z)V

    return-void
.end method

.method private cancel(Z)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->workTimer:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 182
    invoke-static {v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$100(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->workTimer:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->cancel()V

    const/4 p1, 0x0

    .line 184
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->workTimer:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    :cond_1
    return-void
.end method

.method public static getEncryptId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 279
    invoke-static {p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/MD5Utils;->createMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isMutePlay()Z
    .locals 3

    .line 224
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

    .line 216
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

    .line 204
    new-instance p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(I)V

    invoke-static {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method private resumePlay()V
    .locals 1

    .line 200
    new-instance p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(I)V

    invoke-static {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method private startPlay(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;)V
    .locals 0

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    .line 192
    new-instance p2, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-direct {p2, p1, p0, p3, p4}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(Ljava/lang/String;ILcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;)V

    invoke-static {p2}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    goto :goto_1

    .line 195
    :cond_0
    new-instance p3, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-direct {p3, p1, p0, p2, p4}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(Ljava/lang/String;ILjava/lang/String;Lcn/nubia/redmagickyi/util/AudioStreamType;)V

    invoke-static {p3}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    :goto_1
    return-void
.end method

.method private stopPlay()V
    .locals 1

    .line 208
    new-instance p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(I)V

    invoke-static {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method private unmutePlay()V
    .locals 2

    .line 220
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

    .line 212
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

    .line 169
    :try_start_0
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->setDisablePlayEveryTime(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
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

    .line 69
    :try_start_0
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->context:Landroid/content/Context;

    .line 70
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->init(Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->unblock()V

    .line 72
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object p1

    new-instance v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$1;

    invoke-direct {v0, p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$1;-><init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;)V

    iput-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->netStateListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->addNetStatusChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
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

    .line 161
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->isMutePlay()Z

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

    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->mutePlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V

    return-void
.end method

.method public onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public onSynthesisBegin(Ljava/lang/String;)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisBegin(Ljava/lang/String;)V

    return-void
.end method

.method public onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V
    .locals 0

    .line 233
    invoke-virtual {p0, p1, p5}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->onSynthesisCompleted(Ljava/lang/String;Z)V

    .line 234
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->startPlay(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;)V

    return-void
.end method

.method public onSynthesisCompleted(Ljava/lang/String;Z)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisCompleted(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 1

    .line 244
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    if-eq p2, v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    sget-object p2, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    .line 250
    :cond_0
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    return-void
.end method

.method public declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->pausePlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
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

    .line 139
    :try_start_0
    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->cancel(Z)V

    .line 140
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->stopPlay()V

    .line 141
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
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

    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->resumePlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVolume(F)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->volumePlay(F)V

    return-void
.end method

.method public declared-synchronized start(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V
    .locals 9

    const-string v0, "[id: "

    monitor-enter p0

    const/4 v1, 0x0

    .line 88
    :try_start_0
    invoke-direct {p0, v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->cancel(Z)V

    .line 89
    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->workTimer:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-direct {v1, p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;-><init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;)V

    iput-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->workTimer:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    .line 92
    :cond_0
    iput-object p5, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    .line 94
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    const-string v1, "TTSClient-G-V2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", words: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] speechFile path: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p5}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isAssetsPath(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :goto_0
    move-object v7, p5

    goto :goto_1

    .line 99
    :cond_1
    invoke-static {p5}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isFilePath(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p5}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isFileValid(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 103
    :cond_2
    iget-object p5, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->getEncryptId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->getSpeechFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p5

    .line 104
    invoke-static {p5}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isFileValid(Ljava/io/File;)Z

    move-result v1

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_3

    .line 108
    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->onSynthesisBegin(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 p2, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v7

    move-object v6, p4

    move v7, p2

    .line 109
    invoke-virtual/range {v2 .. v7}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    goto :goto_2

    .line 111
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object p5

    invoke-virtual {p5}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->isConnected()Z

    move-result p5

    if-nez p5, :cond_4

    .line 112
    sget-object p2, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 115
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->workTimer:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    iget-object v3, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->context:Landroid/content/Context;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->textToSpeech(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
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

    .line 133
    :try_start_0
    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->cancel(Z)V

    .line 134
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->stopPlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
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

    .line 177
    :try_start_0
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->setDisablePlayEveryTime(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
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

    .line 156
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;->unmutePlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
