.class public Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;
.super Lcom/zte/aimodel/shareMemoryClient/StreamClient;
.source "StreamDualClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aimodel/shareMemoryClient/StreamDualClient$AudioOutData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamDualClient"


# instance fields
.field private final mAudioInBufferSize:I

.field private final mAudioInBufferStartOffset:I

.field private final mAudioOutBufferSize:I

.field private final mAudioOutBufferStartOffset:I

.field private final mAudioStreamOut:Z

.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mConsumerLock:Ljava/lang/Object;

.field private final mInChannel:I

.field private final mInFormat:I

.field private final mInSampleRate:I

.field private final mOutChannel:I

.field private final mOutFormat:I

.field private final mOutSampleRate:I

.field private final mSharedMemory:Landroid/os/SharedMemory;

.field private final mSharedMemoryWrapper:Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

.field private final mTempByteBuffer:Ljava/io/ByteArrayOutputStream;

.field private mTotalBytesCount:I


# direct methods
.method public static synthetic $r8$lambda$XkIlW_qYbOchwrvG6UxHX1ZsbnI(Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->consumer_cycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/aimodel/sharedmemory/ChainType;IIIIIIIIILjava/lang/String;ILjava/util/Map;Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/zte/aimodel/sharedmemory/ChainType;",
            "IIIIIIIII",
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

    move/from16 v10, p6

    move/from16 v11, p10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p11

    move-object/from16 v5, p12

    move/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    .line 49
    invoke-direct/range {v1 .. v9}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;-><init>(Landroid/content/Context;Lcom/zte/aimodel/sharedmemory/ChainType;ILjava/lang/String;ILjava/util/Map;Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;)V

    .line 40
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mConsumerLock:Ljava/lang/Object;

    move/from16 v1, p5

    .line 50
    iput v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mInSampleRate:I

    move/from16 v3, p4

    .line 51
    iput v3, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mInChannel:I

    move/from16 v4, p3

    .line 52
    iput v4, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mInFormat:I

    move/from16 v8, p8

    .line 53
    iput v8, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mOutChannel:I

    move/from16 v9, p7

    .line 54
    iput v9, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mOutFormat:I

    move/from16 v7, p9

    .line 55
    iput v7, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mOutSampleRate:I

    .line 56
    iput v10, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mAudioInBufferSize:I

    .line 57
    iput v11, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mAudioOutBufferSize:I

    move/from16 v2, p17

    .line 58
    iput-boolean v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mAudioStreamOut:Z

    .line 59
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mTempByteBuffer:Ljava/io/ByteArrayOutputStream;

    int-to-long v5, v10

    int-to-long v10, v11

    move/from16 v2, p5

    move-object/from16 v12, p14

    .line 60
    invoke-static/range {v2 .. v12}, Lcom/zte/aimodel/ModelParser/DualConfig;->buildConfigString(IIIJIIIJLjava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 p3, v1

    move-object/from16 p4, p2

    move-object/from16 p5, p12

    move/from16 p6, p13

    move/from16 p7, p11

    move-object/from16 p8, p15

    invoke-static/range {p3 .. p8}, Lcom/zte/aimodel/ModelManager;->createModel(Ljava/lang/String;Lcom/zte/aimodel/sharedmemory/ChainType;Ljava/lang/String;IILcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;)Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mSharedMemoryWrapper:Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

    if-eqz v1, :cond_0

    .line 63
    iget-object v2, v1, Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;->UUID:Ljava/lang/String;

    iput-object v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->uuid:Ljava/lang/String;

    .line 64
    iget-object v1, v1, Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;->sharedMemory:Landroid/os/SharedMemory;

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mSharedMemory:Landroid/os/SharedMemory;

    .line 65
    invoke-virtual {v1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    .line 66
    iget-object v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mConsumerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient$$ExternalSyntheticLambda0;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/16 v2, 0x74

    .line 67
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mAudioOutBufferStartOffset:I

    const/16 v2, 0x28

    .line 68
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mAudioInBufferStartOffset:I

    .line 69
    iget-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->initLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 70
    :try_start_0
    iput-boolean v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->isChildInitialized:Z

    .line 71
    iget-object v0, v0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->initLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 72
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SharedMemory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private consumeData()Lcom/zte/aimodel/shareMemoryClient/StreamDualClient$AudioOutData;
    .locals 10

    .line 131
    const-string v0, "StreamDualClient"

    .line 0
    const-string v1, "Buffer size exceeds capacity, truncating: "

    const/4 v2, 0x0

    .line 131
    :try_start_0
    iget-object v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v4, 0x70

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    if-gtz v3, :cond_0

    return-object v2

    .line 137
    :cond_0
    iget v5, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mAudioOutBufferSize:I

    if-le v3, v5, :cond_1

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mAudioOutBufferSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mAudioOutBufferSize:I

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x30

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 143
    new-array v5, v3, [B

    const/4 v6, 0x0

    .line 144
    invoke-direct {p0, v5, v6, v3}, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->readDataFromCircularBuffer([BII)V

    .line 145
    iget-object v7, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v8, 0x58

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    goto :goto_0

    :cond_2
    move v9, v6

    .line 146
    :goto_0
    new-instance v7, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient$AudioOutData;

    invoke-direct {v7, p0, v1, v5, v9}, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient$AudioOutData;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;I[BZ)V

    .line 148
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v4, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 149
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v8, v6}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 151
    iget v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mTotalBytesCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mTotalBytesCount:I

    .line 153
    const-string v1, "Consumed %d bytes,  total: %d"

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mTotalBytesCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 153
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p0

    .line 159
    const-string v1, "Error consuming data"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private consumer_cycle()V
    .locals 4

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mIsConsumerRunning:Z

    .line 89
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    sget-object v1, Lcom/zte/aimodel/FutexLockNative$ThreadRole;->ROLE_CONSUMER_2:Lcom/zte/aimodel/FutexLockNative$ThreadRole;

    invoke-virtual {v0, v1}, Lcom/zte/aimodel/FutexLockNative;->registerThread(Lcom/zte/aimodel/FutexLockNative$ThreadRole;)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->initLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 93
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->isParentInitialized:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->isChildInitialized:Z

    if-nez v1, :cond_0

    goto :goto_3

    .line 97
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    :try_start_2
    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->signalToProduce()V

    .line 100
    :goto_1
    iget-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mIsConsumerRunning:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->isConsumerShutdown()Z

    move-result v0

    if-nez v0, :cond_5

    .line 101
    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->waitToConsume()V

    .line 102
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mConsumerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 103
    :try_start_3
    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->consumeData()Lcom/zte/aimodel/shareMemoryClient/StreamDualClient$AudioOutData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 104
    monitor-exit v0

    goto :goto_1

    .line 105
    :cond_1
    iget-boolean v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mAudioStreamOut:Z

    if-eqz v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mShareMemoryClientCallBack:Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;

    iget v3, v1, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient$AudioOutData;->index:I

    iget-object v1, v1, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient$AudioOutData;->data:[B

    invoke-interface {v2, v3, v1}, Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;->onTtsTaskFinished(I[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 109
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mTempByteBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v3, v1, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient$AudioOutData;->data:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 110
    iget-boolean v2, v1, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient$AudioOutData;->endTag:Z

    if-eqz v2, :cond_3

    .line 111
    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mShareMemoryClientCallBack:Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;

    iget v1, v1, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient$AudioOutData;->index:I

    iget-object v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mTempByteBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;->onTtsTaskFinished(I[B)V

    .line 112
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mTempByteBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 115
    :try_start_5
    const-string v2, "StreamDualClient"

    const-string v3, "IOException in: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->signalToProduce()V

    .line 120
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
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 94
    :cond_4
    :goto_3
    :try_start_7
    const-string v1, "StreamDualClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for Consumer thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->isParentInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Child: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->isChildInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->initLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    .line 97
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 123
    :try_start_9
    const-string v1, "StreamDualClient"

    const-string v2, "Interrupted by other thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 125
    :cond_5
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    invoke-virtual {p0}, Lcom/zte/aimodel/FutexLockNative;->unregisterThread()V

    return-void

    :goto_4
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    invoke-virtual {p0}, Lcom/zte/aimodel/FutexLockNative;->unregisterThread()V

    .line 126
    throw v0
.end method

.method private isConsumerShutdown()Z
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x54

    invoke-virtual {v0, p0, v1}, Lcom/zte/aimodel/FutexLockNative;->isShutdownSignalSet(Ljava/nio/ByteBuffer;I)Z

    move-result p0

    return p0
.end method

.method private readDataFromCircularBuffer([BII)V
    .locals 3

    .line 165
    iget v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mAudioOutBufferStartOffset:I

    add-int/2addr p2, v0

    .line 166
    iget v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mAudioOutBufferSize:I

    add-int/2addr v0, v1

    add-int v1, p2, p3

    const/4 v2, 0x0

    if-gt v1, v0, :cond_0

    .line 170
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p2, p1, v2, p3}, Ljava/nio/ByteBuffer;->get(I[BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p2

    sub-int/2addr p3, v0

    .line 177
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2, p1, v2, v0}, Ljava/nio/ByteBuffer;->get(I[BII)Ljava/nio/ByteBuffer;

    .line 180
    iget-object p2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mAudioOutBufferStartOffset:I

    invoke-virtual {p2, p0, p1, v0, p3}, Ljava/nio/ByteBuffer;->get(I[BII)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method private signalToProduce()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x54

    invoke-virtual {v0, p0, v1}, Lcom/zte/aimodel/FutexLockNative;->signal(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private waitToConsume()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x54

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/zte/aimodel/FutexLockNative;->wait(Ljava/nio/ByteBuffer;II)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 298
    const-string v0, "close enter"

    const-string v1, "StreamDualClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mTempByteBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 302
    const-string v2, "IOException is: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mIsConsumerRunning:Z

    .line 305
    iput-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mIsProducerRunning:Z

    .line 306
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x54

    invoke-virtual {v0, v2, v3}, Lcom/zte/aimodel/FutexLockNative;->requestShutdown(Ljava/nio/ByteBuffer;I)V

    .line 307
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x4c

    invoke-virtual {v0, v2, v3}, Lcom/zte/aimodel/FutexLockNative;->requestShutdown(Ljava/nio/ByteBuffer;I)V

    .line 308
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    invoke-virtual {v0}, Lcom/zte/aimodel/FutexLockNative;->close()V

    .line 309
    invoke-super {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->close()V

    .line 310
    const-string p0, "close exit"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected isProducerShutdown()Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x4c

    invoke-virtual {v0, p0, v1}, Lcom/zte/aimodel/FutexLockNative;->isShutdownSignalSet(Ljava/nio/ByteBuffer;I)Z

    move-result p0

    return p0
.end method

.method protected readReply()Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;
    .locals 7

    .line 227
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 228
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 229
    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x34

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 230
    iget-object v4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 231
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v6, 0x44

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    .line 232
    new-instance v6, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;

    invoke-direct {v6}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;-><init>()V

    .line 233
    iput-wide v2, v6, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;->frames:J

    .line 234
    iput-wide v4, v6, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;->timeNs:J

    .line 235
    new-instance v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;

    invoke-direct {v2}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;-><init>()V

    .line 236
    iput v0, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->status:I

    .line 237
    iput v1, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->byteCount:I

    .line 238
    iput-object v6, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->observable:Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;

    .line 239
    iput p0, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->state:I

    return-object v2
.end method

.method protected signalToServer()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x4c

    invoke-virtual {v0, p0, v1}, Lcom/zte/aimodel/FutexLockNative;->signal(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public transfer(ILjava/lang/String;)Ljava/util/concurrent/CompletableFuture;
    .locals 0
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 222
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public transfer([B)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 213
    invoke-virtual {p0, v0, v1}, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->buildCommand(II)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object v0

    .line 214
    new-instance v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;

    invoke-direct {v1, p0, v0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamClient;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;)V

    .line 215
    iput-object p1, v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->data:[B

    .line 216
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 217
    iget-object p0, v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->replyFuture:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method protected waitFromServer()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x4c

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/zte/aimodel/FutexLockNative;->wait(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method protected writeBuffer([BI)Lcom/zte/aimodel/shareMemoryClient/Command_Status;
    .locals 3

    .line 284
    iget v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mAudioInBufferSize:I

    if-le p2, v0, :cond_0

    move p2, v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mAudioInBufferStartOffset:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Ljava/nio/ByteBuffer;->put(I[BII)Ljava/nio/ByteBuffer;

    .line 290
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 p1, 0x20

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 292
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Wrote %d bytes (cleared buffer first)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "StreamDualClient"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    sget-object p0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->OK:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-object p0
.end method

.method protected writeCommand(Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;)V
    .locals 5

    .line 245
    iget-object v0, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->command:Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    .line 246
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 247
    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result v1

    const/16 v2, 0x8

    const/4 v4, 0x4

    packed-switch v1, :pswitch_data_0

    .line 278
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unknown command tag: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StreamDualClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :pswitch_0
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 275
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 271
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 267
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 262
    :pswitch_3
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 263
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 257
    :pswitch_4
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 258
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getBurst()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 259
    iget-object v0, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->data:[B

    iget-object p1, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->data:[B

    array-length p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->writeBuffer([BI)Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    goto :goto_0

    .line 253
    :pswitch_5
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 254
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 249
    :pswitch_6
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 250
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamDualClient;->mBuffer:Ljava/nio/ByteBuffer;

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
