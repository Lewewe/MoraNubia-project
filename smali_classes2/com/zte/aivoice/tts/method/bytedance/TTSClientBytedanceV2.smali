.class public Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;
.super Ljava/lang/Object;
.source "TTSClientBytedanceV2.java"

# interfaces
.implements Lcom/zte/aivoice/tts/method/base/ITTSClient;
.implements Lcom/zte/aivoice/tts/OnTTSClientListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;
    }
.end annotation


# static fields
.field private static final OUTPUT_BUFFER_SIZE:I = 0x5000

.field private static final OUTPUT_SIMPLE_RATE:I = 0x5dc0

.field private static final TAG:Ljava/lang/String; = "TTSClient-B-V2"


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

.field private netStateListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;

.field private workTimer:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->setDisablePlayWhenScreenLocked(Z)V

    .line 58
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->setAudioCallback(Lcom/zte/aivoice/tts/audio/AudioPlayer$OnAudioCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;)Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->workTimer:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->cancel(Z)V

    return-void
.end method

.method private cancel(Z)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->workTimer:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 176
    invoke-static {v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$100(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eqz p1, :cond_1

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->workTimer:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-virtual {p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->cancel()V

    const/4 p1, 0x0

    .line 178
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->workTimer:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    :cond_1
    return-void
.end method

.method public static getEncryptId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 273
    invoke-static {p0}, Lcn/nubia/redmagickyi/network/okhttp/utils/MD5Utils;->createMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isMutePlay()Z
    .locals 3

    .line 218
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

    .line 210
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

    .line 198
    new-instance p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(I)V

    invoke-static {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method private resumePlay()V
    .locals 1

    .line 194
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

    .line 186
    new-instance p2, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    invoke-direct {p2, p1, p0, p3, p4}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(Ljava/lang/String;ILcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;)V

    invoke-static {p2}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    goto :goto_1

    .line 189
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

    .line 202
    new-instance p0, Lcom/zte/aivoice/tts/audio/bean/AudioAction;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/audio/bean/AudioAction;-><init>(I)V

    invoke-static {p0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->sendAudioAction(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method private unmutePlay()V
    .locals 2

    .line 214
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

    .line 206
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

    .line 163
    :try_start_0
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->setDisablePlayEveryTime(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
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

    .line 63
    :try_start_0
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->context:Landroid/content/Context;

    .line 64
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->init(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->unblock()V

    .line 66
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object p1

    new-instance v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$1;

    invoke-direct {v0, p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$1;-><init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;)V

    iput-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->netStateListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->addNetStatusChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
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

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->isMutePlay()Z

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

    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->mutePlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayBegin(Lcom/zte/aivoice/tts/audio/bean/AudioAction;I)V

    return-void
.end method

.method public onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayComplete(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayPause(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayResume(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onAudioPlayStop(Lcom/zte/aivoice/tts/audio/bean/AudioAction;)V

    return-void
.end method

.method public onSynthesisBegin(Ljava/lang/String;)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisBegin(Ljava/lang/String;)V

    return-void
.end method

.method public onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V
    .locals 0

    .line 227
    invoke-virtual {p0, p1, p5}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->onSynthesisCompleted(Ljava/lang/String;Z)V

    .line 228
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->startPlay(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;)V

    return-void
.end method

.method public onSynthesisCompleted(Ljava/lang/String;Z)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisCompleted(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 1

    .line 238
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    if-eq p2, v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    sget-object p2, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    .line 244
    :cond_0
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    invoke-interface {p0, p1, p2}, Lcom/zte/aivoice/tts/OnTTSClientListener;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V

    return-void
.end method

.method public declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    .line 122
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->pausePlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
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

    .line 133
    :try_start_0
    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->cancel(Z)V

    .line 134
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->stopPlay()V

    .line 135
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
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

    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->resumePlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVolume(F)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->volumePlay(F)V

    return-void
.end method

.method public declared-synchronized start(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V
    .locals 9

    const-string v0, "[id: "

    monitor-enter p0

    const/4 v1, 0x0

    .line 82
    :try_start_0
    invoke-direct {p0, v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->cancel(Z)V

    .line 83
    iget-object v1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->workTimer:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-direct {v1, p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;-><init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;)V

    iput-object v1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->workTimer:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    .line 86
    :cond_0
    iput-object p5, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->listener:Lcom/zte/aivoice/tts/OnTTSClientListener;

    .line 88
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    const-string v1, "TTSClient-B-V2"

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

    .line 90
    invoke-static {p5}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isAssetsPath(Ljava/io/File;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :goto_0
    move-object v7, p5

    goto :goto_1

    .line 93
    :cond_1
    invoke-static {p5}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isFilePath(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p5}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isFileValid(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 97
    :cond_2
    iget-object p5, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->getEncryptId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->getSpeechFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p5

    .line 98
    invoke-static {p5}, Lcom/zte/aivoice/tts/util/SpeechFileManager;->isFileValid(Ljava/io/File;)Z

    move-result v1

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_3

    .line 102
    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->onSynthesisBegin(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 p2, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v7

    move-object v6, p4

    move v7, p2

    .line 103
    invoke-virtual/range {v2 .. v7}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->onSynthesisCompleted(Ljava/lang/String;Ljava/io/File;Lcom/zte/aivoice/tts/audio/bean/AudioAction$PCMEntity;Lcn/nubia/redmagickyi/util/AudioStreamType;Z)V

    goto :goto_2

    .line 105
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object p5

    invoke-virtual {p5}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->isConnected()Z

    move-result p5

    if-nez p5, :cond_4

    .line 106
    sget-object p2, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->onSynthesisFailed(Ljava/lang/String;Lcom/zte/aivoice/code/ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 109
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->workTimer:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    iget-object v3, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->context:Landroid/content/Context;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->textToSpeech(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/io/File;Lcn/nubia/redmagickyi/util/AudioStreamType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
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

    .line 127
    :try_start_0
    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->cancel(Z)V

    .line 128
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->stopPlay()V
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

.method public declared-synchronized unblock()V
    .locals 2

    monitor-enter p0

    .line 171
    :try_start_0
    invoke-static {}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->getInstance()Lcom/zte/aivoice/tts/audio/AudioPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/tts/audio/AudioPlayer;->setDisablePlayEveryTime(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
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

    .line 150
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;->unmutePlay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
