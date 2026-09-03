.class Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;
.super Ljava/lang/Object;
.source "TTSClientBytedanceV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;


# direct methods
.method private constructor <init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$1;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;-><init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;II[B)V
    .locals 0

    .line 324
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->onTtsTaskFinished(II[B)V

    return-void
.end method

.method static synthetic access$1100(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;ILjava/lang/String;)V
    .locals 0

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->onNmtTaskFinished(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;I[B)V
    .locals 0

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->onDualTaskFinished(I[B)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;Z)V
    .locals 0

    .line 324
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->deinit(Z)V

    return-void
.end method

.method private deinit(Z)V
    .locals 3

    .line 509
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$1300(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 510
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Client deinit begin"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSClient-B-V2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 513
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    .line 515
    :cond_0
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object p1

    .line 516
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$602(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;Lcom/zte/aimodel/shareMemoryClient/StreamClient;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    .line 517
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$1400(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 518
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v2, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$3;

    invoke-direct {v2, p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$3;-><init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;Lcom/zte/aimodel/shareMemoryClient/StreamClient;)V

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 528
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$900(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/aimodel/ModelManager;->unbindService(Landroid/content/Context;)Z

    .line 529
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Client deinit end"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private init()Z
    .locals 12

    const-string v0, "Client init end"

    .line 447
    iget-object v1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Client init begin"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v3}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TTSClient-B-V2"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$900(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/aimodel/ModelManager;->bindService(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const-string v1, "BYTEDANCETTS_TTS_SINGLETON"

    const-string v4, "language"

    const-string v5, "zh-CN"

    const-string v6, "speakerId"

    const-string v7, "ICL_zh_female_huoponvhai_tob"

    invoke-static {v4, v5, v6, v7}, Lcom/zte/regex/Grapheme$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/zte/regex/Grapheme$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 455
    iget-object v4, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    new-instance v11, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    iget-object v5, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v5}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$900(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "cn.nubia.redmagickyi"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v9, 0x2710

    invoke-virtual {v5, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    sget-object v10, Lcom/zte/aimodel/sharedmemory/ChainType;->TTS:Lcom/zte/aimodel/sharedmemory/ChainType;

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/zte/aimodel/sharedmemory/ChainType;)V

    const/16 v5, 0x5dc0

    .line 456
    invoke-virtual {v11, v5}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setOutSampleRate(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v5

    const/16 v6, 0x10

    .line 457
    invoke-virtual {v5, v6}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setOutFormat(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v5

    .line 458
    invoke-virtual {v5, v2}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setOutChannel(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v5

    .line 459
    invoke-virtual {v5, v1}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setModels(Ljava/util/Map;)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v1

    const/16 v5, 0x2800

    .line 460
    invoke-virtual {v1, v5}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setStringInBufferSize(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v1

    const/16 v5, 0x5000

    .line 461
    invoke-virtual {v1, v5}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setAudioOutBufferSize(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v1

    new-instance v5, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$2;

    invoke-direct {v5, p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$2;-><init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;)V

    .line 462
    invoke-virtual {v1, v5}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setSharedMemoryDeathRecipient(Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v1

    new-instance v5, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$1;

    invoke-direct {v5, p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable$1;-><init>(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;)V

    .line 473
    invoke-virtual {v1, v5}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setShareMemoryClientCallBack(Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v1

    .line 493
    invoke-virtual {v1}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->build()Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v1

    .line 455
    invoke-static {v4, v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$602(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;Lcom/zte/aimodel/shareMemoryClient/StreamClient;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    .line 496
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client init failed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 500
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$602(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;Lcom/zte/aimodel/shareMemoryClient/StreamClient;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    .line 501
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private mergeNoCnEnSegments(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_7

    .line 388
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 391
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 394
    invoke-static {v4}, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->containsChinese(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3

    invoke-static {v4}, Lcom/zte/aivoice/tts/util/TextLanguageMatcher;->containsEnglish(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    .line 405
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    .line 409
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 397
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 399
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 401
    :cond_4
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    :cond_5
    if-nez v3, :cond_7

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 419
    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    return-object p0
.end method

.method private onDualTaskFinished(I[B)V
    .locals 2

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDualTaskFinished i: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", bytes: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz p2, :cond_0

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TTSClient-B-V2"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onNmtTaskFinished(ILjava/lang/String;)V
    .locals 2

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNmtTaskFinished i: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", s: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TTSClient-B-V2"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onTtsTaskFinished(II[B)V
    .locals 3

    .line 427
    const-string v0, "TTSClient-B-V2"

    .line 0
    const-string v1, "onTtsTaskFinished, "

    .line 427
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", length: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p3

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    .line 429
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, p3, v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->onSynthesisCompleted([BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 432
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onTtsTaskFinished ErrorCode: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {p2}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    const-string v1, ""

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    move v5, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    add-int/lit8 v6, v3, 0x1

    .line 360
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 361
    const-string v7, ".;?!~\u3002\uff1b\uff1f\uff01~\u2014\u2014\u2026\u2026"

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    :goto_1
    move-object v4, v3

    goto :goto_2

    :cond_0
    if-eqz v5, :cond_1

    .line 365
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v2

    goto :goto_1

    .line 369
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_2
    move v3, v6

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 373
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_3
    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->mergeNoCnEnSegments(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 329
    const-string v0, "."

    const-string v1, ","

    const-string v2, "TTSClient-B-V2"

    .line 0
    const-string v3, "remote tts start end, "

    const-string v4, "remote tts start begin, "

    .line 329
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->init()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v4}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v4, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v4}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->start()Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v3}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v3, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v3}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/aimodel/feature/chat/method/aimoe/EmojiFilter;->removeEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "~"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\uff5e"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u3002"

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 336
    const-string v4, ".*[\\pP]$"

    invoke-static {v4}, Lcom/zte/regex/Pattern;->compile(Ljava/lang/String;)Lcom/zte/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zte/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/zte/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DATA_TYPE_PCM offer voice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v5}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$800(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state.get(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v5}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$100(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v5}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v4, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v4}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$100(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 342
    iget-object v4, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v4}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {v5}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$800(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v4, v5, v6}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->transfer(ILjava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 350
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "transfer error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/bytedance/TTSClientBytedanceV2$WorkTimer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
