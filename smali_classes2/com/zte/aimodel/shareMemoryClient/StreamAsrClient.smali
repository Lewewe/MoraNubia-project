.class public Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;
.super Lcom/zte/aimodel/shareMemoryClient/StreamClient;
.source "StreamAsrClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamAsrClient"


# instance fields
.field private final mAudioBufferSize:I

.field private final mAudioBufferStartOffset:I

.field private final mBitWidth:I

.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mChannel:I

.field private final mFormat:I

.field private final mSampleRate:I

.field private final mSharedMemoryWrapper:Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zte/aimodel/sharedmemory/ChainType;IIIIIILjava/lang/String;ILjava/util/Map;Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;)V
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
            ")V"
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

    .line 39
    invoke-direct/range {v1 .. v9}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;-><init>(Landroid/content/Context;Lcom/zte/aimodel/sharedmemory/ChainType;ILjava/lang/String;ILjava/util/Map;Lcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;Lcom/zte/aimodel/shareMemoryClient/ShareMemoryClientCallBack;)V

    move/from16 v1, p7

    .line 40
    iput v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mAudioBufferSize:I

    move v6, p4

    .line 41
    iput v6, v0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mFormat:I

    move/from16 v3, p6

    .line 42
    iput v3, v0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mSampleRate:I

    move v4, p5

    .line 43
    iput v4, v0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mChannel:I

    move v5, p3

    .line 44
    iput v5, v0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBitWidth:I

    const/4 v2, 0x0

    .line 46
    invoke-static/range {v1 .. v7}, Lcom/zte/aimodel/ModelParser/AsrConfig;->buildConfigString(IIIIIILjava/util/Map;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    move-object/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p8

    invoke-static/range {v3 .. v8}, Lcom/zte/aimodel/ModelManager;->createModel(Ljava/lang/String;Lcom/zte/aimodel/sharedmemory/ChainType;Ljava/lang/String;IILcom/zte/aimodel/sharedmemory/SharedMemoryDeathRecipient;)Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mSharedMemoryWrapper:Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;

    if-eqz v1, :cond_0

    .line 49
    iget-object v2, v1, Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;->UUID:Ljava/lang/String;

    iput-object v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->uuid:Ljava/lang/String;

    .line 50
    iget-object v1, v1, Lcom/zte/aimodel/sharedmemory/SharedMemoryWrapper;->sharedMemory:Landroid/os/SharedMemory;

    invoke-virtual {v1}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x50

    .line 51
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mAudioBufferStartOffset:I

    .line 52
    iget-object v1, v0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->initLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    .line 53
    :try_start_0
    iput-boolean v2, v0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->isChildInitialized:Z

    .line 54
    iget-object v0, v0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->initLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 55
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SharedMemory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 188
    const-string v0, "close enter"

    const-string v1, "StreamAsrClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mIsConsumerRunning:Z

    .line 190
    iput-boolean v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mIsProducerRunning:Z

    .line 191
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x2c

    invoke-virtual {v0, v2, v3}, Lcom/zte/aimodel/FutexLockNative;->requestShutdown(Ljava/nio/ByteBuffer;I)V

    .line 192
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    invoke-virtual {v0}, Lcom/zte/aimodel/FutexLockNative;->close()V

    .line 193
    invoke-super {p0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient;->close()V

    .line 194
    const-string p0, "close exit"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected isProducerShutdown()Z
    .locals 2

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, p0, v1}, Lcom/zte/aimodel/FutexLockNative;->isShutdownSignalSet(Ljava/nio/ByteBuffer;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 166
    const-string v0, "StreamAsrClient"

    const-string v1, "Error request isShutdown"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method protected readReply()Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 62
    iget-object v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    .line 63
    iget-object v4, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 64
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v6, 0x24

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    .line 65
    new-instance v6, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;

    invoke-direct {v6}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;-><init>()V

    .line 66
    iput-wide v2, v6, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;->frames:J

    .line 67
    iput-wide v4, v6, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;->timeNs:J

    .line 68
    new-instance v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;

    invoke-direct {v2}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;-><init>()V

    .line 69
    iput v0, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->status:I

    .line 70
    iput v1, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->byteCount:I

    .line 71
    iput-object v6, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->observable:Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Position;

    .line 72
    iput p0, v2, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;->state:I

    return-object v2
.end method

.method protected signalToServer()V
    .locals 2

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, p0, v1}, Lcom/zte/aimodel/FutexLockNative;->signal(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 156
    const-string v0, "StreamAsrClient"

    const-string v1, "Error waiting for signal"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
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

    const/4 p0, 0x0

    return-object p0
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

    .line 173
    invoke-virtual {p0, v0, v1}, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->buildCommand(II)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    move-result-object v0

    .line 174
    new-instance v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;

    invoke-direct {v1, p0, v0}, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;-><init>(Lcom/zte/aimodel/shareMemoryClient/StreamClient;Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;)V

    .line 175
    iput-object p1, v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->data:[B

    .line 176
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mCommandQueues:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 177
    iget-object p0, v1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->replyFuture:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method protected waitFromServer()V
    .locals 3

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->sFutexLockNative:Lcom/zte/aimodel/FutexLockNative;

    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/zte/aimodel/FutexLockNative;->wait(Ljava/nio/ByteBuffer;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 146
    const-string v0, "StreamAsrClient"

    const-string v1, "Error waiting for signal"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected writeBuffer([BI)Lcom/zte/aimodel/shareMemoryClient/Command_Status;
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    .line 119
    const-string v2, "StreamAsrClient"

    if-lez v0, :cond_0

    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Buffer still has unconsumed data: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " bytes, skipping"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    sget-object p0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->BAD_VALUE:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-object p0

    .line 125
    :cond_0
    iget v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mAudioBufferSize:I

    if-le p2, v0, :cond_1

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Data size exceeds buffer capacity: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " > "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mAudioBufferSize:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object p0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->BAD_VALUE:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-object p0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mAudioBufferStartOffset:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, p2}, Ljava/nio/ByteBuffer;->put(I[BII)Ljava/nio/ByteBuffer;

    .line 134
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 136
    sget-object p0, Lcom/zte/aimodel/shareMemoryClient/Command_Status;->OK:Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    return-object p0
.end method

.method protected writeCommand(Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;)V
    .locals 5

    .line 78
    iget-object v0, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->command:Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;

    .line 79
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result v1

    const/16 v2, 0x8

    const/4 v4, 0x4

    packed-switch v1, :pswitch_data_0

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unknown command tag: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StreamAsrClient"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :pswitch_0
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 108
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 104
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 100
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 95
    :pswitch_3
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 96
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 90
    :pswitch_4
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 91
    iget-object v1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Command;->getBurst()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 92
    iget-object v0, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->data:[B

    iget-object p1, p1, Lcom/zte/aimodel/shareMemoryClient/StreamClient$CommandTask;->data:[B

    array-length p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->writeBuffer([BI)Lcom/zte/aimodel/shareMemoryClient/Command_Status;

    goto :goto_0

    .line 86
    :pswitch_5
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 87
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 82
    :pswitch_6
    iget-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 83
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamAsrClient;->mBuffer:Ljava/nio/ByteBuffer;

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
