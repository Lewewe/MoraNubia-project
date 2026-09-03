.class public Lcom/zte/aivoice/tts/TTSClient;
.super Ljava/lang/Object;
.source "TTSClient.java"

# interfaces
.implements Lcom/zte/aivoice/tts/method/base/ITTSClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "TTSClient"


# instance fields
.field private impl:Lcom/zte/aivoice/tts/method/base/ITTSClient;

.field private source:Lcom/zte/aivoice/tts/TTSSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getImpl()Lcom/zte/aivoice/tts/method/base/ITTSClient;
    .locals 2

    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/TTSClient;->impl:Lcom/zte/aivoice/tts/method/base/ITTSClient;

    if-nez v0, :cond_2

    .line 33
    sget-object v0, Lcom/zte/aivoice/tts/TTSClient$1;->$SwitchMap$com$zte$aivoice$tts$TTSSource:[I

    iget-object v1, p0, Lcom/zte/aivoice/tts/TTSClient;->source:Lcom/zte/aivoice/tts/TTSSource;

    invoke-virtual {v1}, Lcom/zte/aivoice/tts/TTSSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;

    invoke-direct {v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2;-><init>()V

    iput-object v0, p0, Lcom/zte/aivoice/tts/TTSClient;->impl:Lcom/zte/aivoice/tts/method/base/ITTSClient;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;

    invoke-direct {v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2;-><init>()V

    iput-object v0, p0, Lcom/zte/aivoice/tts/TTSClient;->impl:Lcom/zte/aivoice/tts/method/base/ITTSClient;

    .line 46
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/zte/aivoice/tts/TTSClient;->impl:Lcom/zte/aivoice/tts/method/base/ITTSClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getTTSDurationByWords(Ljava/lang/String;)J
    .locals 5

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 126
    invoke-static {p0}, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->findBestMatcherLanguage(Ljava/lang/String;)Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    move-result-object v0

    .line 128
    const-string v1, "\\s+|\\p{Punct}"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    if-eqz v0, :cond_4

    .line 131
    sget-object v4, Lcom/zte/aivoice/tts/TTSClient$1;->$SwitchMap$cn$nubia$redmagickyi$util$LocaleUtil$SupportedLocales:[I

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    :goto_0
    int-to-long v2, v0

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    .line 146
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Measure TTS duration "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " second, by words ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TTSClient"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public block()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/zte/aivoice/tts/TTSClient;->getImpl()Lcom/zte/aivoice/tts/method/base/ITTSClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aivoice/tts/method/base/ITTSClient;->block()V

    return-void
.end method

.method public getSource()Lcom/zte/aivoice/tts/TTSSource;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/zte/aivoice/tts/TTSClient;->source:Lcom/zte/aivoice/tts/TTSSource;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/zte/aivoice/tts/TTSClient;->getImpl()Lcom/zte/aivoice/tts/method/base/ITTSClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/method/base/ITTSClient;->init(Landroid/content/Context;)V

    return-void
.end method

.method public isMute()Z
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/zte/aivoice/tts/TTSClient;->getImpl()Lcom/zte/aivoice/tts/method/base/ITTSClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aivoice/tts/method/base/ITTSClient;->isMute()Z

    move-result p0

    return p0
.end method

.method public mute()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/zte/aivoice/tts/TTSClient;->getImpl()Lcom/zte/aivoice/tts/method/base/ITTSClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aivoice/tts/method/base/ITTSClient;->mute()V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/zte/aivoice/tts/TTSClient;->getImpl()Lcom/zte/aivoice/tts/method/base/ITTSClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aivoice/tts/method/base/ITTSClient;->pause()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/zte/aivoice/tts/TTSClient;->getImpl()Lcom/zte/aivoice/tts/method/base/ITTSClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aivoice/tts/method/base/ITTSClient;->release()V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/zte/aivoice/tts/TTSClient;->getImpl()Lcom/zte/aivoice/tts/method/base/ITTSClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aivoice/tts/method/base/ITTSClient;->resume()V

    return-void
.end method

.method public setSource(Lcom/zte/aivoice/tts/TTSSource;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/zte/aivoice/tts/TTSClient;->source:Lcom/zte/aivoice/tts/TTSSource;

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/zte/aivoice/tts/TTSClient;->getImpl()Lcom/zte/aivoice/tts/method/base/ITTSClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/zte/aivoice/tts/method/base/ITTSClient;->setVolume(F)V

    return-void
.end method

.method public start(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V
    .locals 6

    .line 56
    invoke-direct {p0}, Lcom/zte/aivoice/tts/TTSClient;->getImpl()Lcom/zte/aivoice/tts/method/base/ITTSClient;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zte/aivoice/tts/method/base/ITTSClient;->start(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/redmagickyi/util/AudioStreamType;Lcom/zte/aivoice/tts/OnTTSClientListener;)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/zte/aivoice/tts/TTSClient;->getImpl()Lcom/zte/aivoice/tts/method/base/ITTSClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aivoice/tts/method/base/ITTSClient;->stop()V

    return-void
.end method

.method public unblock()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/zte/aivoice/tts/TTSClient;->getImpl()Lcom/zte/aivoice/tts/method/base/ITTSClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aivoice/tts/method/base/ITTSClient;->unblock()V

    return-void
.end method

.method public unmute()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/zte/aivoice/tts/TTSClient;->getImpl()Lcom/zte/aivoice/tts/method/base/ITTSClient;

    move-result-object p0

    invoke-interface {p0}, Lcom/zte/aivoice/tts/method/base/ITTSClient;->unmute()V

    return-void
.end method
