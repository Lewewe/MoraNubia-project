.class Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;
.super Ljava/lang/Object;
.source "ASRClientGoogleV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientMain;,
        Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientChild;
    }
.end annotation


# instance fields
.field private asrCallback:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientMain;

.field final synthetic this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;


# direct methods
.method private constructor <init>(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance p1, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientMain;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientMain;-><init>(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$1;)V

    iput-object p1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->asrCallback:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientMain;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$1;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;-><init>(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->deinit()V

    return-void
.end method

.method private deinit()V
    .locals 3

    .line 336
    const-class v0, Lcom/zte/aivoice/asr/util/RecordManager;

    monitor-enter v0

    .line 337
    :try_start_0
    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/util/RecordManager;->stopRecord()V

    .line 338
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$800(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    const-string v0, "ASRClient-V2"

    const-string v1, "Client deinit begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    sget-object v1, Lcom/zte/aivoice/code/ErrorCode;->ERR_CANCELED:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    .line 342
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$800(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$802(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;Lcom/zte/aimodel/shareMemoryClient/StreamClient;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    .line 344
    new-instance v1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    new-instance v2, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$3;

    invoke-direct {v2, p0, v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$3;-><init>(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;Lcom/zte/aimodel/shareMemoryClient/StreamClient;)V

    invoke-virtual {v1, v2}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleNow(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 354
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {p0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$1000(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zte/aimodel/ModelManager;->unbindService(Landroid/content/Context;)Z

    .line 355
    const-string p0, "ASRClient-V2"

    const-string v0, "Client deinit end"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 338
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private init(J)Z
    .locals 12

    .line 290
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->asrCallback:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientMain;

    new-instance v1, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientChild;

    invoke-direct {v1, p0, p1, p2}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientChild;-><init>(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;J)V

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientMain;->setChild(Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient$Stub;)V

    .line 291
    iget-object p1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {p1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$800(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 292
    const-string p1, "Client init begin"

    const-string v0, "ASRClient-V2"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {v1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$1000(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/aimodel/ModelManager;->bindService(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 298
    const-string v2, "GOOGLESTT_ASR_DIRECTCREATE"

    const-string v3, "language"

    .line 299
    invoke-static {}, Lcn/nubia/redmagickyi/util/LocaleUtil;->isZhAreaLanguage()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "cmn-Hans-CN"

    goto :goto_0

    :cond_0
    const-string v4, "en-US"

    :goto_0
    const-string v5, "googleDeviceId"

    .line 300
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "packageName"

    .line 301
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 298
    invoke-static/range {v3 .. v8}, Lcom/zte/regex/Grapheme$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v2, "WAVWRITER_UTIL_DIRECTCREATE"

    const-string v3, "sampleRate"

    const/16 v9, 0x3e80

    .line 304
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "channel"

    .line 305
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "bitsPerSample"

    const/16 v10, 0x10

    .line 306
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 303
    invoke-static/range {v3 .. v8}, Lcom/zte/regex/Grapheme$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v2

    const/16 v3, 0x1900

    invoke-virtual {v2, v3}, Lcom/zte/aivoice/asr/util/RecordManager;->setBufferSize(I)V

    .line 309
    const-string v2, "STRINGOUT_UTIL_DIRECTCREATE"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v2, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    new-instance v11, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    iget-object v3, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {v3}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$1000(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "cn.nubia.redmagickyi"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v7, 0x2710

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    sget-object v8, Lcom/zte/aimodel/sharedmemory/ChainType;->ASR:Lcom/zte/aimodel/sharedmemory/ChainType;

    move-object v3, v11

    invoke-direct/range {v3 .. v8}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/zte/aimodel/sharedmemory/ChainType;)V

    .line 311
    invoke-virtual {v11, v9}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setInSampleRate(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v3

    .line 312
    invoke-virtual {v3, v10}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setInBitWidth(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v3

    .line 313
    invoke-virtual {v3, v10}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setInFormat(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v3

    .line 314
    invoke-virtual {v3, p2}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setInChannel(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v3

    .line 315
    invoke-virtual {v3, v1}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setModels(Ljava/util/Map;)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v1

    .line 316
    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/aivoice/asr/util/RecordManager;->getBufferSize()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setAudioInBufferSize(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v1

    const/16 v3, 0x2800

    .line 317
    invoke-virtual {v1, v3}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setStringOutBufferSize(I)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->asrCallback:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$SharedMemoryDeathRecipientMain;

    .line 318
    invoke-virtual {v1, v3}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setSharedMemoryDeathRecipient(Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v1

    .line 319
    invoke-virtual {v1, p1}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->setShareMemoryClientCallBack(Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;)Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$Builder;->build()Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v1

    .line 310
    invoke-static {v2, v1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$802(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;Lcom/zte/aimodel/shareMemoryClient/StreamClient;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    .line 323
    :cond_1
    const-string v1, "Client init end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 325
    const-string v1, "Client init failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    iget-object p2, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {p2, p1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$802(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;Lcom/zte/aimodel/shareMemoryClient/StreamClient;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    .line 328
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    const/4 p2, 0x0

    :cond_2
    :goto_1
    return p2
.end method


# virtual methods
.method public onCancelResultReceived(I)V
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCancelResultReceived ErrorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRClient-V2"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x199

    if-ne p1, v0, :cond_0

    .line 236
    const-string p0, "onCancelResultReceived middleware timeout, ignore it!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 239
    :cond_0
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    return-void
.end method

.method public onTextResultReceived(ILandroid/os/Bundle;)V
    .locals 3

    .line 215
    const-string v0, "ASRClient-V2"

    .line 0
    const-string v1, "onTextResultReceived, type: "

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {v2}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$800(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", asrResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v1, ""

    if-eqz p2, :cond_0

    .line 219
    const-string v2, "asr"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object v1, p2

    .line 224
    :cond_0
    iget-object p2, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, v1, p1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->onRecognizeCompleted(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onTextResultReceived ErrorCode: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    sget-object p1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {p0, p1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public run()V
    .locals 7

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    iget-object v0, v0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;->access$600(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getMode()Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    move-result-object v0

    sget-object v1, Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;->Recognize:Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    const-wide/16 v2, 0xc8

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$700(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->init(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    iget-object v1, v1, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;

    invoke-static {v1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;->access$600(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getRecognizeingAudioPath()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    iget-object v5, v5, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;

    invoke-static {v5}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;->access$600(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getMicRecordingAudioPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$1;

    invoke-direct {v6, p0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$1;-><init>(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;)V

    invoke-virtual {v0, v1, v5, v6}, Lcom/zte/aivoice/asr/util/RecordManager;->startRecord(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;)V

    .line 181
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$800(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)Lcom/zte/aimodel/shareMemoryClient/StreamClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->start()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 182
    :catch_0
    :goto_0
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$900(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$100(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 183
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/util/RecordManager;->getCurrentVolume()I

    move-result v1

    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aivoice/asr/util/RecordManager;->getMaxVolume()I

    move-result v5

    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/aivoice/asr/util/RecordManager;->getMinVolume()I

    move-result v6

    invoke-virtual {v0, v1, v5, v6}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->onRecordingVolumeUpdated(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    iget-object v0, v0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;->access$600(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getMode()Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    move-result-object v0

    sget-object v1, Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;->MicRecord:Lcom/zte/aivoice/asr/method/base/ASREntry$Mode;

    if-ne v0, v1, :cond_1

    .line 191
    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    iget-object v1, v1, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;

    invoke-static {v1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;->access$600(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getRecognizeingAudioPath()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    iget-object v5, v5, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;

    invoke-static {v5}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;->access$600(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getMicRecordingAudioPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$2;

    invoke-direct {v6, p0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable$2;-><init>(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;)V

    invoke-virtual {v0, v1, v5, v6}, Lcom/zte/aivoice/asr/util/RecordManager;->startRecord(Ljava/lang/String;Ljava/lang/String;Lcom/zte/aivoice/asr/util/RecordManager$RecordListener;)V

    .line 197
    :catch_1
    :goto_1
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$900(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->access$100(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 198
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/util/RecordManager;->getCurrentVolume()I

    move-result v1

    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/aivoice/asr/util/RecordManager;->getMaxVolume()I

    move-result v5

    invoke-static {}, Lcom/zte/aivoice/asr/util/RecordManager;->getInstance()Lcom/zte/aivoice/asr/util/RecordManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/aivoice/asr/util/RecordManager;->getMinVolume()I

    move-result v6

    invoke-virtual {v0, v1, v5, v6}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->onRecordingVolumeUpdated(III)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 206
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    sget-object v1, Lcom/zte/aivoice/code/ErrorCode;->ERR_REMOTE:Lcom/zte/aivoice/code/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->onRecognizeFailed(Lcom/zte/aivoice/code/ErrorCode;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 209
    :cond_1
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    iget-object v0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;

    invoke-static {v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;->access$600(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getMicRecordingAudioPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->onRecordingCompleted(Ljava/lang/String;)V

    return-void

    :goto_2
    iget-object p0, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer$WorkRunnable;->this$1:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;

    iget-object v1, p0, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->this$0:Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;

    invoke-static {v1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;->access$600(Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2;)Lcom/zte/aivoice/asr/method/base/ASREntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/aivoice/asr/method/base/ASREntry;->getMicRecordingAudioPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/aivoice/asr/method/google/ASRClientGoogleV2$WorkTimer;->onRecordingCompleted(Ljava/lang/String;)V

    .line 210
    throw v0
.end method
