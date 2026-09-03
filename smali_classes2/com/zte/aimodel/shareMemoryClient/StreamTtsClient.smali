.class public Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;
.super Lcom/zte/aimodel/shareMemoryClient/StreamClient;
.source "StreamTtsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$AudioOutData;
    }
.end annotation


# static fields
.field private static final END_LABEL:Ljava/lang/String; = "<end>"

.field private static final START_LABEL:Ljava/lang/String; = "<start>"

.field private static final TAG:Ljava/lang/String; = "StreamTtsClient"


# instance fields
.field private final mAudioOutBufferSize:I

.field private final mAudioOutBufferStartOffset:I

.field private final mAudioStreamOut:Z

.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mChannel:I

.field private final mConsumerLock:Ljava/lang/Object;

.field private final mFormat:I

.field private final mSampleRate:I

.field private final mShareMemory:Landroid/os/SharedMemory;

.field private final mSharedMemoryWrapper:Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

.field private final mStringInBufferSize:I

.field private final mStringInBufferStartOffset:I

.field private final mTempByteBuffer:Ljava/io/ByteArrayOutputStream;

.field private mTotalBytesCount:I


# direct methods
.method public static synthetic $r8$lambda$XgWtSnzBIHk8Fh9BLkL3u48tBbY(Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->consumer_cycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/aimodel/sharedmemory/ChainType;IIIIIILjava/lang/String;ILjava/util/Map;Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zte/aimodel/sharedmemory/ChainType;",
            "IIIIII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;",
            "Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p8

    move-object/from16 v5, p9

    move/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    .line 58
    invoke-direct/range {v1 .. v9}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;-><init>(Landroid/content/Context;Lcom/zte/aimodel/sharedmemory/ChainType;ILjava/lang/String;ILjava/util/Map;Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;)V

    const/4 v1, 0x0

    .line 44
    iput v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mTotalBytesCount:I

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mConsumerLock:Ljava/lang/Object;

    move v1, p5

    .line 59
    iput v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mSampleRate:I

    move v6, p3

    .line 60
    iput v6, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mFormat:I

    move v5, p4

    .line 61
    iput v5, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mChannel:I

    move/from16 v2, p6

    .line 62
    iput v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mStringInBufferSize:I

    move/from16 v3, p7

    .line 63
    iput v3, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mAudioOutBufferSize:I

    .line 64
    iput-object v8, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->sharedMemoryDeathRecipient:Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;

    move/from16 v4, p14

    .line 65
    iput-boolean v4, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mAudioStreamOut:Z

    .line 66
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mTempByteBuffer:Ljava/io/ByteArrayOutputStream;

    move v4, p5

    .line 67
    invoke-static/range {v2 .. v7}, Lcom/zte/aimodel/ModelParser/TtsConfig;->buildConfigString(IIIIILjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move-object/from16 v3, p9

    move/from16 v4, p10

    move/from16 v5, p8

    move-object/from16 v6, p12

    invoke-static/range {v1 .. v6}, Lcom/zte/aimodel/ModelManager;->createModel(Ljava/lang/String;Lcom/zte/aimodel/sharedmemory/ChainType;Ljava/lang/String;IILcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;)Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mSharedMemoryWrapper:Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

    if-eqz v1, :cond_0

    .line 70
    iget-object v2, v1, Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;->UUID:Ljava/lang/String;

    iput-object v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->uuid:Ljava/lang/String;

    .line 71
    iget-object v1, v1, Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;->sharedMemory:Landroid/os/SharedMemory;

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mShareMemory:Landroid/os/SharedMemory;

    .line 72
    invoke-virtual {v1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    .line 73
    iget-object v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mConsumerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$$ExternalSyntheticLambda1;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/16 v2, 0x68

    .line 74
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mAudioOutBufferStartOffset:I

    const/16 v2, 0x10

    .line 75
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mStringInBufferStartOffset:I

    .line 76
    iget-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->initLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 77
    :try_start_0
    iput-boolean v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->isChildInitialized:Z

    .line 78
    iget-object v0, v0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->initLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 79
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SharedMemory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bytesToHex([B)Ljava/lang/String;
    .locals 4

    .line 340
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    .line 342
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%02X "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private consumeData()Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$AudioOutData;
    .locals 10

    .line 475
    const-string v0, "StreamTtsClient"

    .line 0
    const-string v1, "Buffer size exceeds capacity, truncating: "

    const/4 v2, 0x0

    .line 475
    :try_start_0
    iget-object v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    if-gtz v3, :cond_0

    return-object v2

    .line 481
    :cond_0
    iget v5, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mAudioOutBufferSize:I

    if-le v3, v5, :cond_1

    .line 482
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mAudioOutBufferSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mAudioOutBufferSize:I

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 487
    iget-object v5, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v6, 0x4c

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v7, :cond_2

    goto :goto_0

    :cond_2
    move v7, v8

    .line 488
    :goto_0
    new-array v5, v3, [B

    .line 491
    invoke-direct {p0, v5, v8, v3}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->readDataFromCircularBuffer([BII)V

    .line 492
    new-instance v9, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$AudioOutData;

    invoke-direct {v9, p0, v1, v5, v7}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$AudioOutData;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;I[BZ)V

    .line 495
    iget-object v5, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4, v8}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 496
    iget-object v4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v6, v8}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 498
    iget v4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mTotalBytesCount:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mTotalBytesCount:I

    .line 500
    const-string v4, "Consumed %d bytes, index: %d, total: %d"

    .line 501
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mTotalBytesCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v3, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 500
    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception p0

    .line 506
    const-string v1, "Error consuming data"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private consumer_cycle()V
    .locals 4

    const/4 v0, 0x1

    .line 546
    iput-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mIsConsumerRunning:Z

    .line 547
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    sget-object v1, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_CONSUMER_2:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    invoke-virtual {v0, v1}, Lcom/zte/aimodel/FutexLockNative;->registerThread(Lcom/zte/aimodel/FutexLockNative$ThreadRole;)V

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->initLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 551
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->isParentInitialized:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->isChildInitialized:Z

    if-nez v1, :cond_0

    goto :goto_3

    .line 555
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 556
    :try_start_2
    invoke-virtual {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->signalToProduce()V

    .line 558
    :goto_1
    iget-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mIsConsumerRunning:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->isConsumerShutdown()Z

    move-result v0

    if-nez v0, :cond_5

    .line 559
    invoke-virtual {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->waitToConsume()V

    .line 560
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mConsumerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 561
    :try_start_3
    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->consumeData()Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$AudioOutData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 562
    monitor-exit v0

    goto :goto_1

    .line 563
    :cond_1
    iget-boolean v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mAudioStreamOut:Z

    if-eqz v2, :cond_2

    .line 564
    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mShareMemoryClientCallBack:Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;

    iget v3, v1, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$AudioOutData;->index:I

    iget-object v1, v1, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$AudioOutData;->data:[B

    invoke-interface {v2, v3, v1}, Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;->onTtsTaskFinished(I[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 567
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mTempByteBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v3, v1, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$AudioOutData;->data:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 568
    iget-boolean v2, v1, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$AudioOutData;->endTag:Z

    if-eqz v2, :cond_3

    .line 569
    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mShareMemoryClientCallBack:Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;

    iget v1, v1, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$AudioOutData;->index:I

    iget-object v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mTempByteBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;->onTtsTaskFinished(I[B)V

    .line 570
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mTempByteBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 573
    :try_start_5
    const-string v2, "StreamTtsClient"

    const-string v3, "IOException in: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->signalToProduce()V

    .line 577
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 552
    :cond_4
    :goto_3
    :try_start_7
    const-string v1, "StreamTtsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for Consumer thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->isParentInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Child: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->isChildInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->initLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    .line 555
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 580
    :try_start_9
    const-string v1, "Consumer"

    const-string v2, "\u6d88\u8d39\u7ebf\u7a0b\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 582
    :cond_5
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    invoke-virtual {p0}, Lcom/zte/aimodel/FutexLockNative;->unregisterThread()V

    return-void

    :goto_4
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    invoke-virtual {p0}, Lcom/zte/aimodel/FutexLockNative;->unregisterThread()V

    .line 583
    throw v0
.end method

.method private findMinimumUTF8CharSize([BI)I
    .locals 4

    .line 294
    array-length v0, p1

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return v1

    .line 298
    :cond_0
    aget-byte v0, p1, p2

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    and-int/lit16 v2, v0, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_2

    .line 302
    invoke-direct {p0, v0}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->getUTF8CharLength(B)I

    move-result p0

    add-int v0, p2, p0

    .line 303
    array-length v2, p1

    if-gt v0, v2, :cond_2

    return p0

    :cond_2
    add-int/lit8 p0, p2, 0x1

    .line 308
    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_4

    add-int/lit8 v0, p2, 0x4

    if-ge p0, v0, :cond_4

    .line 309
    aget-byte v0, p1, p0

    and-int/2addr v0, v3

    const/16 v2, 0x80

    if-eq v0, v2, :cond_3

    sub-int/2addr p0, p2

    return p0

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private findUTF8SafeCutPoint([BII)I
    .locals 8

    .line 156
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 155
    const-string v1, "Finding UTF-8 safe cut point - offset: %d, maxSize: %d, array length: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StreamTtsClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    add-int v0, p2, p3

    .line 164
    array-length v2, p1

    if-lt v0, v2, :cond_0

    return p3

    :cond_0
    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-lt v2, p2, :cond_7

    .line 170
    aget-byte v3, p1, v2

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    and-int/lit16 v5, v3, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "Checking byte at %d: 0x%02X"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_1

    add-int/lit8 v0, v2, 0x1

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Found ASCII at %d, safe cut point: %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    and-int/lit16 v4, v3, 0xc0

    const/16 v6, 0xc0

    const/16 v7, 0x80

    if-ne v4, v6, :cond_5

    .line 183
    invoke-direct {p0, v3}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->getUTF8CharLength(B)I

    move-result p0

    add-int v3, v2, p0

    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, p0, v5}, [Ljava/lang/Object;

    move-result-object p0

    .line 186
    const-string v4, "Found UTF-8 start at %d, char length: %d, char end: %d"

    invoke-static {v4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    array-length p0, p1

    if-gt v3, p0, :cond_4

    if-gt v3, v0, :cond_4

    add-int/lit8 p0, v2, 0x1

    :goto_1
    if-ge p0, v3, :cond_3

    .line 193
    array-length v0, p1

    if-ge p0, v0, :cond_3

    .line 194
    aget-byte v0, p1, p0

    and-int/2addr v0, v6

    if-eq v0, v7, :cond_2

    .line 197
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 196
    const-string p1, "Invalid continuation byte at %d: 0x%02X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid char sequence, safe cut point: %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 204
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Complete valid char fits, safe cut point: %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_3

    .line 212
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Complete char doesn\'t fit, safe cut point: %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    if-ne v4, v7, :cond_6

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Found UTF-8 continuation byte at %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 224
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid UTF-8 byte at %d: 0x%02X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move v0, v2

    :cond_7
    :goto_3
    const/4 p0, 0x0

    sub-int/2addr v0, p2

    .line 230
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 232
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 231
    const-string p2, "UTF-8 safe cut result - original size: %d, safe size: %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getUTF8CharLength(B)I
    .locals 3

    and-int/lit16 p0, p1, 0xff

    and-int/lit16 v0, p1, 0x80

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, p1, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    and-int/lit16 v0, p1, 0xf0

    const/16 v2, 0xe0

    if-ne v0, v2, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    and-int/lit16 p1, p1, 0xf8

    const/16 v0, 0xf0

    if-ne p1, v0, :cond_3

    const/4 p0, 0x4

    return p0

    .line 332
    :cond_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Invalid UTF-8 start byte: 0x%02X"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "StreamTtsClient"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isConsumerShutdown()Z
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x48

    invoke-virtual {v0, p0, v1}, Lcom/zte/aimodel/FutexLockNative;->isShutdownSignalSet(Ljava/nio/ByteBuffer;I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$transfer$0(Ljava/util/List;Ljava/lang/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;
    .locals 0

    .line 149
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;

    return-object p0
.end method

.method private readDataFromCircularBuffer([BII)V
    .locals 3

    .line 514
    iget v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mAudioOutBufferStartOffset:I

    add-int/2addr p2, v0

    .line 515
    iget v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mAudioOutBufferSize:I

    add-int/2addr v0, v1

    add-int v1, p2, p3

    const/4 v2, 0x0

    if-gt v1, v0, :cond_0

    .line 519
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2, p1, v2, p3}, Ljava/nio/ByteBuffer;->get(I[BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p2

    sub-int/2addr p3, v0

    .line 526
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2, p1, v2, v0}, Ljava/nio/ByteBuffer;->get(I[BII)Ljava/nio/ByteBuffer;

    .line 529
    iget-object p2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mAudioOutBufferStartOffset:I

    invoke-virtual {p2, p0, p1, v0, p3}, Ljava/nio/ByteBuffer;->get(I[BII)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method private splitBytesUTF8Safe([BI)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 238
    array-length v0, p1

    .line 239
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 238
    const-string v1, "Splitting bytes - total length: %d, max chunk size: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StreamTtsClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 245
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_3

    .line 246
    array-length v5, p1

    sub-int/2addr v5, v3

    .line 247
    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v3, v6

    .line 249
    array-length v8, p1

    if-ge v7, v8, :cond_1

    .line 250
    invoke-direct {p0, p1, v3, v6}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->findUTF8SafeCutPoint([BII)I

    move-result v6

    if-gtz v6, :cond_1

    .line 253
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Invalid chunk size: %d at offset: %d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0, p1, v3}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->findMinimumUTF8CharSize([BI)I

    move-result v6

    if-lez v6, :cond_0

    if-gt v6, v5, :cond_0

    .line 257
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "Using minimum char size: %d"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 260
    :cond_0
    const-string v5, "Forced to use single byte chunk"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    .line 265
    :cond_1
    :goto_1
    new-array v5, v6, [B

    .line 266
    invoke-static {p1, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :try_start_0
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 271
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 273
    invoke-static {v5, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-nez v9, :cond_2

    .line 274
    const-string v7, "Chunk %d UTF-8 validation failed!"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v7, "Original chunk: %s"

    invoke-direct {p0, v5}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v5, "Re-encoded: %s"

    invoke-direct {p0, v8}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->bytesToHex([B)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 278
    :cond_2
    const-string v5, "Chunk %d validated OK: \'%s\' (%d bytes)"

    .line 279
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v8, v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    .line 278
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 282
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "Chunk %d decode error: %s"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/2addr v3, v6

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 289
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Split completed - %d chunks created"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private writeBuffer([BIZI)Lcom/zte/aimodel/shareMemoryClient/Command_Status;
    .locals 6

    .line 430
    const-string v0, " length: "

    .line 0
    const-string v1, "Validate buffer is: "

    const-string v2, "send buffer is: "

    .line 430
    const-string v3, "StreamTtsClient"

    if-nez p1, :cond_0

    .line 431
    const-string p0, "Input buffer is null!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    sget-object p0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->BAD_VALUE:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-object p0

    .line 436
    :cond_0
    array-length v4, p1

    if-eq p4, v4, :cond_1

    .line 437
    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Length mismatch - buffer.length: %d, param len: %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_1
    array-length v4, p1

    if-le p4, v4, :cond_2

    .line 441
    const-string p0, "Requested length exceeds buffer size!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget-object p0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->BAD_VALUE:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-object p0

    .line 445
    :cond_2
    iget v4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mStringInBufferSize:I

    if-le p4, v4, :cond_3

    .line 446
    sget-object p0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->BAD_VALUE:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-object p0

    .line 450
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, p4}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 451
    iget-object v4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x14

    invoke-virtual {v4, v5, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 452
    iget-object p2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    const/16 v5, 0x18

    invoke-virtual {p2, v5, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 459
    :try_start_1
    iget-object p2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    iget p3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mStringInBufferStartOffset:I

    invoke-virtual {p2, p3, p1, v4, p4}, Ljava/nio/ByteBuffer;->put(I[BII)Ljava/nio/ByteBuffer;

    .line 460
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p3, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-array p1, p4, [B

    .line 462
    iget-object p2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mStringInBufferStartOffset:I

    invoke-virtual {p2, p0, p1, v4, p4}, Ljava/nio/ByteBuffer;->get(I[BII)Ljava/nio/ByteBuffer;

    .line 463
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 469
    sget-object p0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->OK:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-object p0

    :catch_0
    move-exception p0

    .line 465
    const-string p1, "Failed to write data to buffer"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    sget-object p0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->BAD_VALUE:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-object p0

    :catch_1
    move-exception p0

    .line 454
    const-string p1, "Failed to write metadata"

    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    sget-object p0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->BAD_VALUE:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 588
    const-string v0, "close enter"

    const-string v1, "StreamTtsClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mTempByteBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 592
    const-string v2, "IOException is: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 594
    iput-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mIsConsumerRunning:Z

    .line 595
    iput-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mIsProducerRunning:Z

    .line 596
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x48

    invoke-virtual {v0, v2, v3}, Lcom/zte/aimodel/FutexLockNative;->requestShutdown(Ljava/nio/ByteBuffer;I)V

    .line 597
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Lcom/zte/aimodel/FutexLockNative;->requestShutdown(Ljava/nio/ByteBuffer;I)V

    .line 598
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    invoke-virtual {v0}, Lcom/zte/aimodel/FutexLockNative;->close()V

    .line 599
    invoke-super {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->close()V

    .line 600
    const-string p0, "close exit"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected isProducerShutdown()Z
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Lcom/zte/aimodel/FutexLockNative;->isShutdownSignalSet(Ljava/nio/ByteBuffer;I)Z

    move-result p0

    return p0
.end method

.method protected readReply()Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;
    .locals 7

    .line 373
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 374
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 375
    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 376
    iget-object v4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 377
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v6, 0x38

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    .line 378
    new-instance v6, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;

    invoke-direct {v6}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;-><init>()V

    .line 379
    iput-wide v2, v6, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;->frames:J

    .line 380
    iput-wide v4, v6, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;->timeNs:J

    .line 381
    new-instance v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;

    invoke-direct {v2}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;-><init>()V

    .line 382
    iput v0, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->status:I

    .line 383
    iput v1, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->byteCount:I

    .line 384
    iput-object v6, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->observable:Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;

    .line 385
    iput p0, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->state:I

    return-object v2
.end method

.method protected signalToProduce()V
    .locals 2

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x48

    invoke-virtual {v0, p0, v1}, Lcom/zte/aimodel/FutexLockNative;->signal(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 362
    const-string v0, "StreamTtsClient"

    const-string v1, "Error waiting for signal"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected signalToServer()V
    .locals 2

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Lcom/zte/aimodel/FutexLockNative;->signal(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 97
    const-string v0, "StreamTtsClient"

    const-string v1, "Error waiting for signal"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public transfer(ILjava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;",
            ">;"
        }
    .end annotation

    .line 114
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 117
    array-length v0, p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0, v1, v3}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->buildCommand(II)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object p2

    .line 119
    new-instance v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;

    invoke-direct {v0, p0, p2}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamClient;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;)V

    .line 120
    new-array p2, v3, [B

    iput-object p2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->data:[B

    .line 121
    iput p1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->index:I

    .line 122
    iput-boolean v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->isFinal:Z

    .line 123
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 124
    iget-object p0, v0, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->replyFuture:Ljava/util/concurrent/CompletableFuture;

    return-object p0

    .line 128
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    iget v4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mStringInBufferSize:I

    invoke-direct {p0, p2, v4}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->splitBytesUTF8Safe([BI)Ljava/util/List;

    move-result-object p2

    .line 130
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    .line 133
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 135
    invoke-virtual {p0, v1, v3}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->buildCommand(II)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object v7

    .line 136
    new-instance v8, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;

    invoke-direct {v8, p0, v7}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamClient;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;)V

    .line 137
    iput-object v6, v8, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->data:[B

    .line 138
    iput p1, v8, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->index:I

    add-int/lit8 v7, v4, -0x1

    if-ne v5, v7, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v3

    .line 139
    :goto_1
    iput-boolean v7, v8, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->isFinal:Z

    .line 141
    iget-object v7, v8, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->replyFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "send buffer is: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/String;

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v6, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " length: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v6, v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "StreamTtsClient"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v6, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6, v8}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 147
    :cond_2
    new-array p0, v3, [Ljava/util/concurrent/CompletableFuture;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    new-instance p1, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 148
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->thenApply(Ljava/util/function/Function;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public transfer([B)Ljava/util/concurrent/CompletableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected waitFromServer()V
    .locals 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/zte/aimodel/FutexLockNative;->wait(Ljava/nio/ByteBuffer;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 87
    const-string v0, "StreamTtsClient"

    const-string v1, "Error waiting for signal"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected waitToConsume()V
    .locals 3

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x48

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/zte/aimodel/FutexLockNative;->wait(Ljava/nio/ByteBuffer;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 352
    const-string v0, "StreamTtsClient"

    const-string v1, "Error waiting for signal"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected writeCommand(Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;)V
    .locals 5

    .line 391
    iget-object v0, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->command:Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    .line 392
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 393
    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result v1

    const/16 v2, 0x8

    const/4 v4, 0x4

    packed-switch v1, :pswitch_data_0

    .line 424
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unknown command tag: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StreamTtsClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :pswitch_0
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 421
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 416
    :pswitch_1
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 417
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 412
    :pswitch_2
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 413
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 408
    :pswitch_3
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 409
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 403
    :pswitch_4
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 404
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getBurst()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 405
    iget-object v0, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->data:[B

    iget v1, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->index:I

    iget-boolean v2, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->isFinal:Z

    iget-object p1, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->data:[B

    array-length p1, p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->writeBuffer([BIZI)Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    goto :goto_0

    .line 399
    :pswitch_5
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 400
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 395
    :pswitch_6
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 396
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamTtsClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
