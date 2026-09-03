.class Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;
.super Ljava/lang/Object;
.source "TTSClientGoogleV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkRunnable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;


# direct methods
.method private constructor <init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$1;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;-><init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;II[B)V
    .locals 0

    .line 353
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->onTtsTaskFinished(II[B)V

    return-void
.end method

.method static synthetic access$1200(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;ILjava/lang/String;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->onNmtTaskFinished(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;I[B)V
    .locals 0

    .line 353
    invoke-direct {p0, p1, p2}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->onDualTaskFinished(I[B)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;Z)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->deinit(Z)V

    return-void
.end method

.method private deinit(Z)V
    .locals 3

    .line 546
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$1500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->removeExecute(Ljava/lang/Runnable;)V

    .line 547
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Client deinit begin"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSClient-G-V2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 550
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    .line 552
    :cond_0
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object p1

    .line 553
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$602(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;Lcom/zte/aimodel/shareMemoryClient/StreamClient;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    .line 554
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$1600(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 555
    new-instance v0, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v2, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable$3;

    invoke-direct {v2, p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable$3;-><init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;Lcom/zte/aimodel/shareMemoryClient/StreamClient;)V

    invoke-virtual {v0, v2}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 565
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$1000(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zte/aimodel/ModelManager;->unbindService(Landroid/content/Context;)Z

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Client deinit end"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

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
    .locals 14

    const-string v0, "Client init end"

    .line 429
    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$900(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 430
    invoke-direct {p0, v2}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->deinit(Z)V

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v1

    if-nez v1, :cond_2

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Client init begin"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v3}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TTSClient-G-V2"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 435
    :try_start_0
    iget-object v4, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v4}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$1000(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/aimodel/ModelManager;->bindService(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->initSpeaker()[Ljava/lang/String;

    move-result-object v4

    .line 438
    const-string v5, "GOOGLE_TTS_SINGLETON"

    const-string v6, "language"

    aget-object v7, v4, v1

    const-string v8, "speakerId"

    aget-object v9, v4, v2

    const-string v10, "googleDeviceId"

    .line 441
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v11

    const-string v12, "packageName"

    .line 442
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 438
    invoke-static/range {v6 .. v13}, Lcom/zte/regex/Grapheme$$ExternalSyntheticBackport0;->m$1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/zte/regex/Grapheme$$ExternalSyntheticBackport0;->m$1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 444
    iget-object v5, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    new-instance v12, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    iget-object v6, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v6}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$1000(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "cn.nubia.redmagickyi"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    const/16 v10, 0x2710

    invoke-virtual {v6, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    sget-object v11, Lcom/zte/aimodel/sharedmemory/ChainType;->TTS:Lcom/zte/aimodel/sharedmemory/ChainType;

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/zte/aimodel/sharedmemory/ChainType;)V

    const/16 v6, 0x3e80

    .line 445
    invoke-virtual {v12, v6}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setOutSampleRate(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v6

    const/16 v7, 0x10

    .line 446
    invoke-virtual {v6, v7}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setOutFormat(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v6

    .line 447
    invoke-virtual {v6, v2}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setOutChannel(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v6

    .line 448
    invoke-virtual {v6, v4}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setModels(Ljava/util/Map;)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v4

    const/16 v6, 0x2800

    .line 449
    invoke-virtual {v4, v6}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setStringInBufferSize(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v4

    const/16 v6, 0x5000

    .line 450
    invoke-virtual {v4, v6}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setAudioOutBufferSize(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v4

    new-instance v6, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable$2;

    invoke-direct {v6, p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable$2;-><init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;)V

    .line 451
    invoke-virtual {v4, v6}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setSharedMemoryDeathRecipient(Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v4

    new-instance v6, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable$1;

    invoke-direct {v6, p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable$1;-><init>(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;)V

    .line 462
    invoke-virtual {v4, v6}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setShareMemoryClientCallBack(Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v4

    .line 482
    invoke-virtual {v4}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->build()Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v4

    .line 444
    invoke-static {v5, v4}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$602(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;Lcom/zte/aimodel/shareMemoryClient/StreamClient;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    .line 485
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Client init failed"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v4}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 489
    iget-object v0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$602(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;Lcom/zte/aimodel/shareMemoryClient/StreamClient;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    .line 490
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    move v2, v1

    :cond_2
    :goto_0
    return v2
.end method

.method private initSpeaker()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 503
    sget-object v0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$2;->$SwitchMap$cn$nubia$redmagickyi$util$LocaleUtil$SupportedLocales:[I

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$1400(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/LocaleUtil$SupportedLocales;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 539
    const-string p0, "en-US"

    const-string v0, "en-US-Chirp3-HD-Leda"

    goto :goto_0

    .line 533
    :pswitch_0
    const-string p0, "cmn-CN"

    const-string v0, "cmn-CN-Chirp3-HD-Leda"

    goto :goto_0

    .line 527
    :pswitch_1
    const-string p0, "ja-JP"

    const-string v0, "ja-JP-Chirp3-HD-Leda"

    goto :goto_0

    .line 523
    :pswitch_2
    const-string p0, "it-IT"

    const-string v0, "it-IT-Chirp3-HD-Leda"

    goto :goto_0

    .line 519
    :pswitch_3
    const-string p0, "fr-FR"

    const-string v0, "fr-FR-Chirp3-HD-Leda"

    goto :goto_0

    .line 515
    :pswitch_4
    const-string p0, "es-US"

    const-string v0, "es-US-Chirp3-HD-Leda"

    goto :goto_0

    .line 511
    :pswitch_5
    const-string p0, "es-ES"

    const-string v0, "es-ES-Chirp3-HD-Leda"

    goto :goto_0

    .line 507
    :pswitch_6
    const-string p0, "de-DE"

    const-string v0, "de-DE-Chirp3-HD-Leda"

    :goto_0
    const/4 v1, 0x2

    .line 542
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v0, v1, p0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onDualTaskFinished(I[B)V
    .locals 2

    .line 424
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

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TTSClient-G-V2"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onNmtTaskFinished(ILjava/lang/String;)V
    .locals 2

    .line 420
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

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TTSClient-G-V2"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onTtsTaskFinished(II[B)V
    .locals 3

    .line 409
    const-string v0, "TTSClient-G-V2"

    .line 0
    const-string v1, "onTtsTaskFinished, "

    .line 409
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

    iget-object v2, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v2}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    .line 411
    iget-object p1, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, p3, v1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->onSynthesisCompleted([BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 414
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onTtsTaskFinished ErrorCode: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {p2}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
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

    .line 385
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    const-string v0, ""

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    add-int/lit8 v5, v2, 0x1

    .line 389
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 390
    const-string v6, ",.;:?!~\uff0c\u3002\uff1b\uff1a\uff1f\uff01~\u2014\u2014\u2026\u2026"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    :goto_1
    move-object v3, v2

    goto :goto_2

    :cond_0
    if-eqz v4, :cond_1

    .line 394
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v1

    goto :goto_1

    .line 398
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :goto_2
    move v2, v5

    goto :goto_0

    .line 401
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 402
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 358
    const-string v0, ","

    const-string v1, "TTSClient-G-V2"

    .line 0
    const-string v2, "remote tts start end, "

    const-string v3, "remote tts start begin, "

    .line 358
    :try_start_0
    invoke-direct {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->init()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v3}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v3, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v3}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->start()Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v2}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v2, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v2}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$700(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/aimodel/feature/chat/method/aimoe/EmojiFilter;->removeEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "~"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\uff5e"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\uff0c"

    const-string v3, ";"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 365
    const-string v3, ".*[\\pP]$"

    invoke-static {v3}, Lcom/zte/regex/Pattern;->compile(Ljava/lang/String;)Lcom/zte/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zte/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/zte/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DATA_TYPE_PCM offer voice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v4}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$800(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", state.get(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v4}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$100(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v4}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v3, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v3}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$100(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 371
    iget-object v3, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v3}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$600(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {v4}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$800(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v4, v5}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->transfer(ILjava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 379
    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    sget-object v0, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->onSynthesisFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transfer error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;->access$500(Lcom/zte/aivoice/tts/method/google/TTSClientGoogleV2$WorkTimer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method
