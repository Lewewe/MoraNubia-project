.class public Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;
.super Ljava/lang/Object;
.source "ASRClientMicrosoftV2.java"

# interfaces
.implements Lcom/zte/aivoice/asr/method/base/IASRClient;
.implements Lcom/zte/aivoice/asr/OnASRClientListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ASRClient-V2"


# instance fields
.field private asrEntry:Lcom/zte/aivoice/asr/method/base/ASREntry;

.field private context:Landroid/content/Context;

.field private listener:Lcom/zte/aivoice/asr/OnASRClientListener;

.field private netStateListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;

.field private workTimer:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;)Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->workTimer:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;Z)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->cancel(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;)Lcom/zte/aivoice/asr/method/base/ASREntry;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->asrEntry:Lcom/zte/aivoice/asr/method/base/ASREntry;

    return-object p0
.end method

.method private cancel(Z)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->workTimer:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 92
    invoke-static {v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;->access$100(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->workTimer:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->workTimer:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;

    .line 95
    invoke-virtual {p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;->cancel()V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iput-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->context:Landroid/content/Context;

    .line 47
    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/aivoice/asr/util/RecordManager;->init(Landroid/content/Context;)V

    .line 48
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object p1

    new-instance v0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$1;

    invoke-direct {v0, p0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$1;-><init>(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;)V

    iput-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->netStateListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->addNetStatusChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onRecognizeBegin()V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->listener:Lcom/zte/aivoice/asr/OnASRClientListener;

    invoke-interface {p0}, Lcom/zte/aivoice/asr/OnASRClientListener;->onRecognizeBegin()V

    return-void
.end method

.method public onRecognizeCompleted(Ljava/lang/String;Z)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->listener:Lcom/zte/aivoice/asr/OnASRClientListener;

    invoke-interface {p0, p1, p2}, Lcom/zte/aivoice/asr/OnASRClientListener;->onRecognizeCompleted(Ljava/lang/String;Z)V

    return-void
.end method

.method public onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V
    .locals 1

    .line 112
    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    if-eq p1, v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->listener:Lcom/zte/aivoice/asr/OnASRClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/asr/OnASRClientListener;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    return-void
.end method

.method public onRecordingCompleted(Ljava/lang/String;)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->listener:Lcom/zte/aivoice/asr/OnASRClientListener;

    invoke-interface {p0, p1}, Lcom/zte/aivoice/asr/OnASRClientListener;->onRecordingCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public onRecordingVolumeUpdated(III)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->listener:Lcom/zte/aivoice/asr/OnASRClientListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/zte/aivoice/asr/OnASRClientListener;->onRecordingVolumeUpdated(III)V

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 83
    :try_start_0
    invoke-direct {p0, v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->cancel(Z)V

    .line 84
    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aivoice/asr/util/RecordManager;->release()V

    .line 85
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->netStateListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;

    if-eqz v0, :cond_0

    .line 86
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->netStateListener:Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->removeNetStatusChangeListener(Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager$NetStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Lcom/zte/aivoice/asr/method/base/ASREntry;Lcom/zte/aivoice/asr/OnASRClientListener;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 63
    :try_start_0
    invoke-direct {p0, v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->cancel(Z)V

    .line 64
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->workTimer:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;

    invoke-direct {v0, p0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;-><init>(Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;)V

    iput-object v0, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->workTimer:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->asrEntry:Lcom/zte/aivoice/asr/method/base/ASREntry;

    .line 68
    iput-object p2, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->listener:Lcom/zte/aivoice/asr/OnASRClientListener;

    .line 69
    invoke-static {}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->getInstance()Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/utils/NetConnectManager;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 70
    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_NO_NETWORK:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 73
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->workTimer:Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;

    iget-object p2, p0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->context:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2$WorkTimer;->startRecognize(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
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

    .line 78
    :try_start_0
    invoke-direct {p0, v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;->cancel(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
