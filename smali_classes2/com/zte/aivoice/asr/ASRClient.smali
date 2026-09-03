.class public Lcom/zte/aivoice/asr/ASRClient;
.super Ljava/lang/Object;
.source "ASRClient.java"

# interfaces
.implements Lcom/zte/aivoice/asr/method/base/IASRClient;


# instance fields
.field private impl:Lcom/zte/aivoice/asr/method/base/IASRClient;

.field private source:Lcom/zte/aivoice/asr/ASRSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getImpl()Lcom/zte/aivoice/asr/method/base/IASRClient;
    .locals 2

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/zte/aivoice/asr/ASRClient;->impl:Lcom/zte/aivoice/asr/method/base/IASRClient;

    if-nez v0, :cond_2

    .line 27
    sget-object v0, Lcom/zte/aivoice/asr/ASRClient$1;->$SwitchMap$com$zte$aivoice$asr$ASRSource:[I

    iget-object v1, p0, Lcom/zte/aivoice/asr/ASRClient;->source:Lcom/zte/aivoice/asr/ASRSource;

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/ASRSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;

    invoke-direct {v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;-><init>()V

    iput-object v0, p0, Lcom/zte/aivoice/asr/ASRClient;->impl:Lcom/zte/aivoice/asr/method/base/IASRClient;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;

    invoke-direct {v0}, Lcom/zte/aivoice/asr/method/microsoft/ASRClientMicrosoftV2;-><init>()V

    iput-object v0, p0, Lcom/zte/aivoice/asr/ASRClient;->impl:Lcom/zte/aivoice/asr/method/base/IASRClient;

    .line 40
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zte/aivoice/asr/ASRClient;->impl:Lcom/zte/aivoice/asr/method/base/IASRClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getSource()Lcom/zte/aivoice/asr/ASRSource;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/zte/aivoice/asr/ASRClient;->source:Lcom/zte/aivoice/asr/ASRSource;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/zte/aivoice/asr/ASRClient;->getImpl()Lcom/zte/aivoice/asr/method/base/IASRClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/zte/aivoice/asr/method/base/IASRClient;->init(Landroid/content/Context;)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/zte/aivoice/asr/ASRClient;->getImpl()Lcom/zte/aivoice/asr/method/base/IASRClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aivoice/asr/method/base/IASRClient;->release()V

    return-void
.end method

.method public setSource(Lcom/zte/aivoice/asr/ASRSource;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/zte/aivoice/asr/ASRClient;->source:Lcom/zte/aivoice/asr/ASRSource;

    return-void
.end method

.method public start(Lcom/zte/aivoice/asr/method/base/ASREntry;Lcom/zte/aivoice/asr/OnASRClientListener;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/zte/aivoice/asr/ASRClient;->getImpl()Lcom/zte/aivoice/asr/method/base/IASRClient;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/zte/aivoice/asr/method/base/IASRClient;->start(Lcom/zte/aivoice/asr/method/base/ASREntry;Lcom/zte/aivoice/asr/OnASRClientListener;)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/zte/aivoice/asr/ASRClient;->getImpl()Lcom/zte/aivoice/asr/method/base/IASRClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aivoice/asr/method/base/IASRClient;->stop()V

    return-void
.end method
